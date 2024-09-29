import 'dart:async';
import 'dart:convert';
import 'dart:ffi' as ffi;
import 'package:fclash/prefs/prefs.dart';
import 'dart:io';
import 'dart:isolate';

import 'package:fclash/clash/core_bindings.gen.dart';
import 'package:fclash/clash/typedef.dart';
import 'package:fclash/clash/go_string.dart';
import 'package:fclash/constants/constants.dart';
import 'package:ffi/ffi.dart';
import 'package:flutter/foundation.dart';

class Core {
  const Core();
  static void init() {
    _bridge.InitializeDartApi(ffi.NativeApi.initializeApiDLData);
  }

  static final _bridge =
      CoreBindings(ffi.DynamicLibrary.open("libclash-meta$_libExt"));

  static final ReceivePort _msgReceiver = ReceivePort();
  static final ReceivePort _errReceiver = ReceivePort();

  static final Map<MessageType, StreamController<String>> _messageControllers =
      Map.fromEntries(MessageType.values
          .map((t) => MapEntry(t, StreamController.broadcast())));

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
    validateHomeDir(Constants.homeDirPath, true);
    validateConfigWithPath(Constants.configPath, true);

    _bridge.SetConfig(Constants.configPath.toGoString());
    _bridge.SetHomeDir(Constants.homeDirPath.toGoString());

    await compute((_) => _bridge.StartClash(), null);
    print("clash started");
  }

  static void validateHomeDir(String homeDir, bool create) {
    final r = _bridge.ValidateHomeDir(homeDir.toGoString(), create ? 1 : 0);
    r.use((val) {
      if (val != null) {
        throw Exception(val);
      }
    });
  }

  static void validateConfigWithPath(String path, bool create) {
    final result =
        _bridge.ValidateConfigWithPath(path.toGoString(), create ? 1 : 0);
    result.use((val) {
      if (val != null) {
        throw Exception(val);
      }
    });
  }

  static Future<void> restartClash() async {
    _bridge.StopClash();
    await startClash();
  }

  static Future<void> setCallbacks() async {
    print("settings callbacks");
    _bridge.SetErrorCallback(_errReceiver.sendPort.nativePort);
    _bridge.SetMessageCallback(_msgReceiver.sendPort.nativePort);
  }

  static Future<void> startListeningOnBridgeMessage() async {
    await for (final String json in _msgReceiver) {
      final msg = DartMessage.fromJson(jsonDecode(json));
      _messageControllers[msg.type]?.sink.add(msg.data);
    }
  }

  static Future<void> startListeningOnBridgeError() async {
    await for (final err in _errReceiver) {
      print(err);
    }
  }

  static Future<void> startLog() async {
    await Future.microtask(_bridge.StartLog);
  }

  static void stopLog() {
    _bridge.StopLog();
  }

  static Future<void> startMemory() async {
    await Future.microtask(_bridge.StartMemory);
  }

  static void stopMemory() {
    _bridge.StopMemory();
  }

  static Future<void> startCurrentTraffics() async {
    await Future.microtask(_bridge.StartCurrentTraffics);
  }

  static void stopCurrentTraffics() {
    _bridge.StopCurrentTraffics();
  }

  static Future<Map<String, dynamic>> getAllProxies() async {
    return await compute<Null, Map<String, dynamic>>((_) {
      final rawJson = _bridge.GetAllProxies();
      late Map<String, dynamic> res;
      rawJson.use((val) {
        if (val == null) {
          throw Exception("Error getting all proxies");
        }
        res = jsonDecode(val);
      });
      return res;
    }, null);
  }

  static Future<List<dynamic>> getAllGroups() async {
    return await compute<Null, List<dynamic>>((_) {
      final rawJson = _bridge.GetAllGroups();
      late List<dynamic> res;
      rawJson.use((val) {
        if (val == null) {
          throw Exception("Error getting all groups");
        }
        res = jsonDecode(val);
      });
      return res;
    }, null);
  }

  static Future<Map<String, dynamic>> getGlobal() async {
    return await compute<Null, Map<String, dynamic>>((_) {
      final rawJson = _bridge.GetGlobal();
      late Map<String, dynamic> res;
      rawJson.use((val) {
        if (val == null) {
          throw Exception("Error getting global");
        }
        res = jsonDecode(val);
      });
      return res;
    }, null);
  }

  static Future<int> testDelayForProxy(String name) async {
    return await compute<(String, String, int), int>(
        ((String, String, int) params) {
      final a = params.$1.toGoString();
      final b = params.$2.toGoString();
      return _bridge.TestProxyDelay(a, b, params.$3);
    }, (name, Constants.delayTestUrl, Constants.delayTestTimeout));
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
    }, (name, Constants.delayTestUrl, Constants.delayTestTimeout));
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
    Constants.configPath = path;
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
    return await compute<Null, Map<String, dynamic>>((_) {
      final res = _bridge.GetConfigs();
      late Map<String, dynamic> json;
      res.use((val) {
        if (val == null) {
          throw Exception("Error getting configs");
        }
        json = jsonDecode(val);
      });
      return json;
    }, null);
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
  void use(void Function(String? val) callback) {
    if (address == ffi.nullptr.address) {
      callback(null);
      return;
    }
    final val = cast<Utf8>().toDartString();
    callback(val);
    calloc.free(this);
  }
}

// ignore: camel_case_types
typedef core = Core;
