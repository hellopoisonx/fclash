import 'dart:convert';

import 'package:fclash/clash/clash.dart';
import 'package:fclash/models/traffic/traffic.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'memory.g.dart';

@riverpod
Stream<Traffic> memory(MemoryRef ref) async* {
  core.startMemory();
  ref.onDispose(core.stopMemory);
  await for (final rawJson in core.getMessageStream(MessageType.memory)) {
    final m = jsonDecode(rawJson);
    yield Traffic.fromByte(byte: m["inuse"] as int);
  }
}
