import 'dart:convert';

import 'package:fclash/clash/clash.dart';
import 'package:fclash/models/traffic/traffic.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'current_traffics.g.dart';

@riverpod
Stream<({Traffic up, Traffic down})> currentTraffics(
    CurrentTrafficsRef ref) async* {
  core.startCurrentTraffics();
  ref.onDispose(core.stopCurrentTraffics);
  await for (final rawJson
      in core.getMessageStream(MessageType.currentTraffics)) {
    final m = jsonDecode(rawJson);
    yield (
      up: Traffic.fromByte(byte: m["up"] as int),
      down: Traffic.fromByte(byte: m["down"] as int),
    );
  }
}
