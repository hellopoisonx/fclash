import 'dart:convert';

import 'package:fclash/models/log/log.dart';
import 'package:fclash/clash/clash.dart';
import 'package:fuzzy/fuzzy.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'logs.g.dart';

@riverpod
Stream<List<Log>> logs(LogsRef ref) async* {
  await core.startLog();
  final alive = ref.keepAlive();
  ref.onDispose(() {
    core.stopLog();
    alive.close();
  });
  final List<Log> logs = [];
  await for (final log in core.getMessageStream(MessageType.log)) {
    if (logs.length >= 200) logs.clear();
    logs.insert(0, Log.fromJson(jsonDecode(log)));
    yield logs;
  }
}

@riverpod
Future<List<Log>> filteredLogs(
    FilteredLogsRef ref, String query, LogType type) async {
  final allLogs = await ref.watch(logsProvider.future);
  List<Log> logs = [];
  if (type == LogType.all) {
    logs = allLogs;
  } else {
    logs = allLogs.where((log) => log.type == type).toList();
  }
  if (query.trim().isEmpty) {
    return logs;
  }
  return Fuzzy(logs,
      options: FuzzyOptions(
        shouldSort: true,
        keys: [
          WeightedKey(
              name: "payload", getter: (Log log) => log.payload, weight: 1)
        ],
      )).search(query).map<Log>((result) => result.item).toList();
}
