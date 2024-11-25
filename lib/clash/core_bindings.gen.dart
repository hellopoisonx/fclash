// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.
// ignore_for_file: type=lint
import 'dart:ffi' as ffi;
import 'package:fclash/clash/go_string.dart' as go_string;

class CoreBindings {
  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
      _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  CoreBindings(ffi.DynamicLibrary dynamicLibrary)
      : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  CoreBindings.fromLookup(
      ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
          lookup)
      : _lookup = lookup;

  ffi.Pointer<ffi.Char> GetConfigs() {
    return _GetConfigs();
  }

  late final _GetConfigsPtr =
      _lookup<ffi.NativeFunction<ffi.Pointer<ffi.Char> Function()>>(
          'GetConfigs');
  late final _GetConfigs =
      _GetConfigsPtr.asFunction<ffi.Pointer<ffi.Char> Function()>();

  ffi.Pointer<ffi.Char> UpdateConfigs(
    go_string.GoStringDart reqJson,
  ) {
    return _UpdateConfigs(
      reqJson,
    );
  }

  late final _UpdateConfigsPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<ffi.Char> Function(
              go_string.GoStringDart)>>('UpdateConfigs');
  late final _UpdateConfigs = _UpdateConfigsPtr.asFunction<
      ffi.Pointer<ffi.Char> Function(go_string.GoStringDart)>();

  ffi.Pointer<ffi.Char> PatchConfigs(
    go_string.GoStringDart content,
  ) {
    return _PatchConfigs(
      content,
    );
  }

  late final _PatchConfigsPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<ffi.Char> Function(
              go_string.GoStringDart)>>('PatchConfigs');
  late final _PatchConfigs = _PatchConfigsPtr.asFunction<
      ffi.Pointer<ffi.Char> Function(go_string.GoStringDart)>();

  void StartConnections() {
    return _StartConnections();
  }

  late final _StartConnectionsPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function()>>('StartConnections');
  late final _StartConnections =
      _StartConnectionsPtr.asFunction<void Function()>();

  void StopConnections() {
    return _StopConnections();
  }

  late final _StopConnectionsPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function()>>('StopConnections');
  late final _StopConnections =
      _StopConnectionsPtr.asFunction<void Function()>();

  void CloseConnection(
    go_string.GoStringDart id,
  ) {
    return _CloseConnection(
      id,
    );
  }

  late final _CloseConnectionPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(go_string.GoStringDart)>>(
          'CloseConnection');
  late final _CloseConnection =
      _CloseConnectionPtr.asFunction<void Function(go_string.GoStringDart)>();

  void CloseAllConnections() {
    return _CloseAllConnections();
  }

  late final _CloseAllConnectionsPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function()>>('CloseAllConnections');
  late final _CloseAllConnections =
      _CloseAllConnectionsPtr.asFunction<void Function()>();

  ffi.Pointer<ffi.Char> GetAllGroups() {
    return _GetAllGroups();
  }

  late final _GetAllGroupsPtr =
      _lookup<ffi.NativeFunction<ffi.Pointer<ffi.Char> Function()>>(
          'GetAllGroups');
  late final _GetAllGroups =
      _GetAllGroupsPtr.asFunction<ffi.Pointer<ffi.Char> Function()>();

  ffi.Pointer<ffi.Char> GetGroupDelay(
    go_string.GoStringDart groupName,
    go_string.GoStringDart url,
    int timeout,
  ) {
    return _GetGroupDelay(
      groupName,
      url,
      timeout,
    );
  }

  late final _GetGroupDelayPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<ffi.Char> Function(go_string.GoStringDart,
              go_string.GoStringDart, GoInt)>>('GetGroupDelay');
  late final _GetGroupDelay = _GetGroupDelayPtr.asFunction<
      ffi.Pointer<ffi.Char> Function(
          go_string.GoStringDart, go_string.GoStringDart, int)>();

  void StartLog() {
    return _StartLog();
  }

  late final _StartLogPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function()>>('StartLog');
  late final _StartLog = _StartLogPtr.asFunction<void Function()>();

  void StopLog() {
    return _StopLog();
  }

  late final _StopLogPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function()>>('StopLog');
  late final _StopLog = _StopLogPtr.asFunction<void Function()>();

  void StartMemory() {
    return _StartMemory();
  }

  late final _StartMemoryPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function()>>('StartMemory');
  late final _StartMemory = _StartMemoryPtr.asFunction<void Function()>();

  void StopMemory() {
    return _StopMemory();
  }

  late final _StopMemoryPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function()>>('StopMemory');
  late final _StopMemory = _StopMemoryPtr.asFunction<void Function()>();

  ffi.Pointer<ffi.Char> GetAllProxies() {
    return _GetAllProxies();
  }

  late final _GetAllProxiesPtr =
      _lookup<ffi.NativeFunction<ffi.Pointer<ffi.Char> Function()>>(
          'GetAllProxies');
  late final _GetAllProxies =
      _GetAllProxiesPtr.asFunction<ffi.Pointer<ffi.Char> Function()>();

  ffi.Pointer<ffi.Char> GetGlobal() {
    return _GetGlobal();
  }

  late final _GetGlobalPtr =
      _lookup<ffi.NativeFunction<ffi.Pointer<ffi.Char> Function()>>(
          'GetGlobal');
  late final _GetGlobal =
      _GetGlobalPtr.asFunction<ffi.Pointer<ffi.Char> Function()>();

  void ChangeProxy(
    go_string.GoStringDart p,
    go_string.GoStringDart sn,
  ) {
    return _ChangeProxy(
      p,
      sn,
    );
  }

  late final _ChangeProxyPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(
              go_string.GoStringDart, go_string.GoStringDart)>>('ChangeProxy');
  late final _ChangeProxy = _ChangeProxyPtr.asFunction<
      void Function(go_string.GoStringDart, go_string.GoStringDart)>();

  int TestProxyDelay(
    go_string.GoStringDart proxyName,
    go_string.GoStringDart url,
    int timeout,
  ) {
    return _TestProxyDelay(
      proxyName,
      url,
      timeout,
    );
  }

  late final _TestProxyDelayPtr = _lookup<
      ffi.NativeFunction<
          GoUint16 Function(go_string.GoStringDart, go_string.GoStringDart,
              GoInt)>>('TestProxyDelay');
  late final _TestProxyDelay = _TestProxyDelayPtr.asFunction<
      int Function(go_string.GoStringDart, go_string.GoStringDart, int)>();

  void InitializeDartApi(
    ffi.Pointer<ffi.Void> api,
  ) {
    return _InitializeDartApi(
      api,
    );
  }

  late final _InitializeDartApiPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
          'InitializeDartApi');
  late final _InitializeDartApi =
      _InitializeDartApiPtr.asFunction<void Function(ffi.Pointer<ffi.Void>)>();

  void SetMessageCallback(
    int port,
  ) {
    return _SetMessageCallback(
      port,
    );
  }

  late final _SetMessageCallbackPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(GoInt64)>>(
          'SetMessageCallback');
  late final _SetMessageCallback =
      _SetMessageCallbackPtr.asFunction<void Function(int)>();

  void SetErrorCallback(
    int port,
  ) {
    return _SetErrorCallback(
      port,
    );
  }

  late final _SetErrorCallbackPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(GoInt64)>>(
          'SetErrorCallback');
  late final _SetErrorCallback =
      _SetErrorCallbackPtr.asFunction<void Function(int)>();

  int IsRunning() {
    return _IsRunning();
  }

  late final _IsRunningPtr =
      _lookup<ffi.NativeFunction<GoUint8 Function()>>('IsRunning');
  late final _IsRunning = _IsRunningPtr.asFunction<int Function()>();

  void StartClash() {
    return _StartClash();
  }

  late final _StartClashPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function()>>('StartClash');
  late final _StartClash = _StartClashPtr.asFunction<void Function()>();

  void StopClash() {
    return _StopClash();
  }

  late final _StopClashPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function()>>('StopClash');
  late final _StopClash = _StopClashPtr.asFunction<void Function()>();

  void SetConfig(
    go_string.GoStringDart path,
  ) {
    return _SetConfig(
      path,
    );
  }

  late final _SetConfigPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(go_string.GoStringDart)>>(
          'SetConfig');
  late final _SetConfig =
      _SetConfigPtr.asFunction<void Function(go_string.GoStringDart)>();

  void SetHomeDir(
    go_string.GoStringDart path,
  ) {
    return _SetHomeDir(
      path,
    );
  }

  late final _SetHomeDirPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(go_string.GoStringDart)>>(
          'SetHomeDir');
  late final _SetHomeDir =
      _SetHomeDirPtr.asFunction<void Function(go_string.GoStringDart)>();

  ffi.Pointer<ffi.Char> ValidateConfigWithPath(
    go_string.GoStringDart path,
    int create,
  ) {
    return _ValidateConfigWithPath(
      path,
      create,
    );
  }

  late final _ValidateConfigWithPathPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<ffi.Char> Function(
              go_string.GoStringDart, GoUint8)>>('ValidateConfigWithPath');
  late final _ValidateConfigWithPath = _ValidateConfigWithPathPtr.asFunction<
      ffi.Pointer<ffi.Char> Function(go_string.GoStringDart, int)>();

  ffi.Pointer<ffi.Char> ValidateHomeDir(
    go_string.GoStringDart path,
    int create,
  ) {
    return _ValidateHomeDir(
      path,
      create,
    );
  }

  late final _ValidateHomeDirPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<ffi.Char> Function(
              go_string.GoStringDart, GoUint8)>>('ValidateHomeDir');
  late final _ValidateHomeDir = _ValidateHomeDirPtr.asFunction<
      ffi.Pointer<ffi.Char> Function(go_string.GoStringDart, int)>();

  ffi.Pointer<ffi.Char> ValidateResource(
    go_string.GoStringDart path,
  ) {
    return _ValidateResource(
      path,
    );
  }

  late final _ValidateResourcePtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<ffi.Char> Function(
              go_string.GoStringDart)>>('ValidateResource');
  late final _ValidateResource = _ValidateResourcePtr.asFunction<
      ffi.Pointer<ffi.Char> Function(go_string.GoStringDart)>();

  void StartCurrentTraffics() {
    return _StartCurrentTraffics();
  }

  late final _StartCurrentTrafficsPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function()>>('StartCurrentTraffics');
  late final _StartCurrentTraffics =
      _StartCurrentTrafficsPtr.asFunction<void Function()>();

  void StopCurrentTraffics() {
    return _StopCurrentTraffics();
  }

  late final _StopCurrentTrafficsPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function()>>('StopCurrentTraffics');
  late final _StopCurrentTraffics =
      _StopCurrentTrafficsPtr.asFunction<void Function()>();
}

typedef ptrdiff_t = ffi.Long;
typedef Dartptrdiff_t = int;

final class max_align_t extends ffi.Opaque {}

final class _GoString_ extends ffi.Struct {
  external ffi.Pointer<ffi.Char> p;

  @ptrdiff_t()
  external int n;
}

typedef GoInt8 = ffi.SignedChar;
typedef DartGoInt8 = int;
typedef GoUint8 = ffi.UnsignedChar;
typedef DartGoUint8 = int;
typedef GoInt16 = ffi.Short;
typedef DartGoInt16 = int;
typedef GoUint16 = ffi.UnsignedShort;
typedef DartGoUint16 = int;
typedef GoInt32 = ffi.Int;
typedef DartGoInt32 = int;
typedef GoUint32 = ffi.UnsignedInt;
typedef DartGoUint32 = int;
typedef GoInt64 = ffi.LongLong;
typedef DartGoInt64 = int;
typedef GoUint64 = ffi.UnsignedLongLong;
typedef DartGoUint64 = int;
typedef GoInt = GoInt64;
typedef GoUint = GoUint64;
typedef GoUintptr = ffi.Size;
typedef DartGoUintptr = int;
typedef GoFloat32 = ffi.Float;
typedef DartGoFloat32 = double;
typedef GoFloat64 = ffi.Double;
typedef DartGoFloat64 = double;
typedef GoMap = ffi.Pointer<ffi.Void>;
typedef GoChan = ffi.Pointer<ffi.Void>;

final class GoInterface extends ffi.Struct {
  external ffi.Pointer<ffi.Void> t;

  external ffi.Pointer<ffi.Void> v;
}

final class GoSlice extends ffi.Struct {
  external ffi.Pointer<ffi.Void> data;

  @GoInt()
  external int len;

  @GoInt()
  external int cap;
}

const int NULL = 0;
