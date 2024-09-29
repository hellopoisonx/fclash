import 'dart:convert';

import 'package:fclash/models/connections/connections.dart';
import 'package:fclash/clash/clash.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'connections.g.dart';

@riverpod
Stream<Connections> connections(ConnectionsRef ref) async* {
  core.startConnections();
  ref.onDispose(core.stopConnections);
  await for (final conns in core.getMessageStream(MessageType.connections)) {
    yield Connections.fromJson(jsonDecode(conns));
  }
}
