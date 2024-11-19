import 'dart:async';
import 'dart:convert';
import 'dart:ffi' as ffi;
import 'package:fclash/clash/utils.dart';
import 'package:fclash/prefs/prefs.dart';
import 'dart:io';
import 'dart:isolate';

import 'package:logging/logging.dart';
import 'package:fclash/clash/core_bindings.gen.dart';
import 'package:fclash/clash/typedef.dart';
import 'package:fclash/clash/go_string.dart';
import 'package:fclash/constants/constants.dart';
import 'package:ffi/ffi.dart';
import 'package:flutter/foundation.dart';

class Core {
  const Core();

  static final _bridge = CoreBindings(ffi.DynamicLibrary.open("core$_libExt"));
  static final log = Logger("Core");

  static final ReceivePort _msgReceiver = ReceivePort();
  static final ReceivePort _errReceiver = ReceivePort();

  static void init() {
    _bridge.InitializeDartApi(ffi.NativeApi.initializeApiDLData);
    log.info("Dart api initialized");
  }

  static final Map<MessageType, StreamController<String>> _messageControllers =
      Map.fromEntries(
          MessageType.values.map((t) => MapEntry(t, StreamController.broadcast())));

  static void closeMessageStream(MessageType type) =>
      _messageControllers[type]!.close();

  static Stream<String> getMessageStream(MessageType type) =>
      _messageControllers[type]!.stream;

  static String get _libExt => Platform.isLinux || Platform.isAndroid
      ? ".so"
      : Platform.isWindows
          ? ".dll"
          : Platform.isMacOS
              ? ".dylib"
              : throw Exception("Unsupported Platform");

  static bool get isRunning => _bridge.IsRunning() != 0;

  static Future<void> startClash() async {
    validateHomeDir(Constants.homeDirPath.toFilePath(), true);
    validateConfigWithPath(Constants.configPath.toFilePath(), true);

    _bridge.SetConfig(Constants.configPath.toFilePath().toGoString());
    _bridge.SetHomeDir(Constants.homeDirPath.toFilePath().toGoString());

    await compute((_) => _bridge.StartClash(), null);
    log.info("clash started");
  }

  static void validateHomeDir(String homeDir, bool create) {
    final r = _bridge.ValidateHomeDir(homeDir.toGoString(), create ? 1 : 0);
    r.use((val) {
      if (val != null) {
        log.severe("Invalid home directory", val);
        throw Exception(val);
      }
    });
  }

  static void validateConfigWithPath(String path, bool create) {
    final result =
        _bridge.ValidateConfigWithPath(path.toGoString(), create ? 1 : 0);
    result.use((val) {
      if (val != null) {
        log.severe("Invalid configuration", val);
        throw Exception(val);
      }
    });
  }

  static Future<void> restartClash() async {
    _bridge.StopClash();
    await startClash();
  }

  static Future<void> setCallbacks() async {
    _bridge.SetErrorCallback(_errReceiver.sendPort.nativePort);
    log.info("Error callback set");
    _bridge.SetMessageCallback(_msgReceiver.sendPort.nativePort);
    log.info("Message callback set");
  }

  static Future<void> startListeningOnBridgeMessage() async {
    try {
      await for (final String json in _msgReceiver) {
        final msg = DartMessage.fromJson(jsonDecode(json));
        _messageControllers[msg.type]?.sink.add(msg.data);
      }
    } catch (e) {
      log.severe("[Message receiver error] ", e);
    }
  }

  static Future<void> startListeningOnBridgeError() async {
    await for (final err in _errReceiver) {
      log.severe("[Async error] ", err);
    }
  }

  static Future<void> startLog() async => await Future.sync(_bridge.StartLog);

  static Future<void> stopLog() async => await Future.sync(_bridge.StopLog);

  static Future<void> startMemory() async =>
      await Future.sync(_bridge.StartMemory);

  static Future<void> stopMemory() async =>
      await Future.sync(_bridge.StopMemory);

  static Future<void> startCurrentTraffics() async =>
      await Future.sync(_bridge.StartCurrentTraffics);

  static Future<void> stopCurrentTraffics() async =>
      await Future.sync(_bridge.StopCurrentTraffics);

  // static Future<Map<String, dynamic>> getAllProxies() async {
  //   return await compute<Null, Map<String, dynamic>>((_) {
  //     final rawJson = _bridge.GetAllProxies();
  //     late Map<String, dynamic> res;
  //     rawJson.use((val) {
  //       if (val == null) {
  //         log.severe("Error getting all proxies");
  //         throw Exception("Error getting all proxies");
  //       }
  //       res = jsonDecode(val);
  //     });
  //     return res;
  //   }, null);
  // }

  static Future<Map<String, dynamic>> getAllProxies() async {
    final rawJson = _bridge.GetAllProxies();
    return await rawJson.use((val) async {
      if (val == null) throw Exception("Error getting all proxies");
      return await compute((String rawJson) {
        return jsonDecode(rawJson);
      }, val);
    });
  }

  static Future<List<dynamic>> getAllGroups() async {
    return await invoke<List<dynamic>>(() {
      final rawJson = _bridge.GetAllGroups();
      late List<dynamic> res;
      rawJson.use((val) {
        if (val == null) {
          log.severe("Error getting all groups");
          throw Exception("Error getting all groups");
        }
        res = jsonDecode(val);
      });
      return res;
    });
  }

  static Future<Map<String, dynamic>> getGlobal() async {
    return await invoke(() {
      final rawJson = _bridge.GetGlobal();
      late Map<String, dynamic> res;
      rawJson.use((val) {
        if (val == null) {
          log.severe("Error getting global");
          throw Exception("Error getting global");
        }
        res = jsonDecode(val);
      });
      return res;
    });
  }

  static Future<int> testDelayForProxy(String name) async {
    return await compute<(String, String, int), int>(
        ((String, String, int) params) {
      final a = params.$1.toGoString();
      final b = params.$2.toGoString();
      return _bridge.TestProxyDelay(a, b, params.$3);
    }, (name, Constants.delayTestUrl.toString(), Constants.delayTestTimeout));
  }

  static Future<Map<String, int>?> testDelayForSelector(String name) async {
    return await compute<(String, String, int), Map<String, int>?>(
        ((String, String, int) params) {
      final a = params.$1.toGoString();
      final b = params.$2.toGoString();
      Map<String, int>? result;
      _bridge.GetGroupDelay(a, b, params.$3).use((json) {
        if (json == null || json.isEmpty) {
          result = null;
          return;
        }
        result = (jsonDecode(json) as Map<String, dynamic>)
            .map((k, v) => MapEntry(k, v as int));
      });
      return result;
    }, (name, Constants.delayTestUrl.toString(), Constants.delayTestTimeout));
  }

  static Future<void> changeProxy(String proxy, String selector) async {
    await compute<(String, String), Null>(
      ((String, String) params) {
        final a = params.$1.toGoString();
        final b = params.$2.toGoString();
        _bridge.ChangeProxy(a, b);
      },
      (proxy, selector),
    );
  }

  static void startConnections() {
    _bridge.StartConnections();
  }

  static void stopConnections() {
    _bridge.StopConnections();
  }

  static Future<void> closeAllConnections() async {
    await compute((_) => _bridge.CloseAllConnections(), null);
  }

  static Future<void> closeConnection(String id) async {
    await compute((id) {
      final a = id.toGoString();
      _bridge.CloseConnection(a);
      a.free();
    }, id);
  }

  static Future<void> changeProfile(String path) async {
    validateConfigWithPath(path, true);
    Constants.configPath = Uri.file(path);
    Prefs.setConfigPath(path);
    final req = "{\"path\": \"$path\"}";
    await compute((req) {
      final res = _bridge.UpdateConfigs(req.toGoString());
      res.use((val) {
        if (val != null) {
          throw Exception(val);
        }
      });
    }, req);
  }

  static Future<Map<String, dynamic>> getConfigs() async {
    return await invoke(() {
      final res = _bridge.GetConfigs();
      late Map<String, dynamic> json;
      res.use((val) {
        if (val == null) {
          throw Exception("Error getting configs");
        }
        json = jsonDecode(val);
      });
      return json;
    });
  }

  static Future<void> patchConfig(Map<String, dynamic> json) async {
    final jc = jsonEncode(json);
    await compute((param) {
      final result = _bridge.PatchConfigs(jc.toGoString());
      result.use((val) {
        if (val != null) {
          throw Exception(val);
        }
      });
    }, jc);
  }

  static Future<void> validateResources(String path) async {
    await compute((param) {
      final result = _bridge.ValidateResource(param.toGoString());
      result.use((val) {
        if (val != null) {
          throw Exception(val);
        }
      });
    }, path);
  }
}

extension on String {
  GoStringDart toGoString() {
    return GoStringDart.fromString(this);
  }
}

extension on ffi.Pointer<ffi.Char> {
  Future<T> use<T>(FutureOr<T> Function(String? val) callback) async {
    late final T res;
    try {
      if (address == ffi.nullptr.address) {
        res = await callback(null);
      } else {
        final val = cast<Utf8>().toDartString();
        res = await callback(val);
      }
    } catch (e) {
      core.log.severe(e);
      rethrow;
    } finally {
      calloc.free(this);
    }
    return res;
  }
}

// ignore: camel_case_types
typedef core = Core;
