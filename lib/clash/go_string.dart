import 'dart:convert';
import 'dart:ffi' as ffi;
import 'package:ffi/ffi.dart';

final class GoStringDart extends ffi.Struct {
  external ffi.Pointer<ffi.Char> p;

  @ffi.Long()
  external int n;

  @override
  String toString() {
    List<int> units = [];
    for (int i = 0; i < n; i++) {
      units.add((p + i).value);
    }
    return const Utf8Decoder().convert(units);
  }

  void free() {
    calloc.free(p);
  }

  bool get isNull => p.address == ffi.nullptr.address;
  bool get isNotNull => p.address != ffi.nullptr.address;

  factory GoStringDart.fromString(String str) {
    List<int> units = const Utf8Encoder().convert(str);
    final ptr = malloc<ffi.Char>(units.length);
    for (int i = 0; i < units.length; i++) {
      (ptr + i).value = units[i];
    }
    ffi.Pointer<GoStringDart> goPtr = malloc<GoStringDart>();
    final GoStringDart s = goPtr.ref;
    s.n = units.length;
    s.p = ptr;
    return s;
  }
}
