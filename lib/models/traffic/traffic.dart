// ignore_for_file: constant_identifier_names

import 'dart:math';

enum DataUnit {
  Byte,
  KB,
  MB,
  GB,
  TB,
}

class Traffic {
  final DataUnit unit;
  final int byte;

  Traffic({required this.unit, required this.byte});

  factory Traffic.fromByte({required int byte}) => Traffic(
      unit:
          byte > 0 ? DataUnit.values[log(byte) / log(2) ~/ 10] : DataUnit.Byte,
      byte: byte);

  @override
  String toString() =>
      "${byte > 0 ? (byte / pow(2, log(byte) / log(2) ~/ 10 * 10)).toStringAsFixed(1) : "0"} ${unit.name}";
}
