import 'package:fclash/models/log/log.dart';
import 'package:fclash/providers/logs/logs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fuzzy/fuzzy.dart';

class LogsPage extends ConsumerWidget {
  const LogsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final logs = ref.watch(logsProvider);
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.search_rounded),
            onPressed: () => {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => SafeArea(child: LogsSearchPage(logs.value ?? []))))
            },
          ),
        ],
      ),
      body: switch (logs) {
        AsyncData(:final value) => LogsList(logs: value),
        AsyncError(:final error) => Center(
              child: Tooltip(
            message: error.toString(),
            child: const Icon(
              Icons.warning_rounded,
              color: Colors.red,
            ),
          )),
        _ => const Center(child: CircularProgressIndicator()),
      },
    );
  }
}

class LogsList extends StatelessWidget {
  const LogsList({super.key, required this.logs});

  final List<Log> logs;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: logs.length,
        itemBuilder: (context, index) {
          final log = logs[index];
          return ListTile(
            title: Text(log.payload),
            subtitle: Text(log.time.toLocal().toIso8601String()),
            trailing: Text(
              log.type.name,
              style: Theme.of(context).textTheme.labelMedium?.copyWith(
                      color: switch (log.type) {
                    LogType.debug => Colors.yellow,
                    LogType.warning => Colors.orange,
                    LogType.error => Colors.red,
                    _ => Colors.green,
                  }),
            ),
          );
        });
  }
}

class LogsSearchPage extends StatefulWidget {
  const LogsSearchPage(this.logs, {super.key});

  final List<Log> logs;

  @override
  State<LogsSearchPage> createState() => _LogsSearchPageState();
}

class _LogsSearchPageState extends State<LogsSearchPage> {
  String query = "";
  LogType type = LogType.all;
  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffold = GlobalKey();
    return Scaffold(
      key: scaffold,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(41),
        child: SearchBar(
          leading: IconButton(
            icon: const Icon(Icons.exit_to_app_rounded),
            onPressed: Navigator.of(context).pop,
          ),
          trailing: [
            IconButton(
              icon: const Icon(Icons.menu_rounded),
              onPressed: () => scaffold.currentState?.showBottomSheet(
                (context) {
                  return Padding(
                    padding: const EdgeInsets.all(8),
                    child: SegmentedButton(
                      segments: LogType.values
                          .map(
                            (t) => ButtonSegment(
                              value: t,
                              label: Text(t.name),
                            ),
                          )
                          .toList(),
                      selected: {type},
                      onSelectionChanged: (p0) {
                        setState(() => type = p0.first);
                        (context as Element).markNeedsBuild();
                      },
                    ),
                  );
                },
                showDragHandle: true,
                constraints: const BoxConstraints.expand(height: 150),
              ),
            ),
          ],
          onSubmitted: (value) => setState(() => query = value),
          onChanged: (value) =>
              value.trim().isEmpty ? setState(() => query = "") : null,
        ),
      ),
      body: LogsList(
        logs: Fuzzy<Log>(
          widget.logs
              .where((log) => type == LogType.all ? true : log.type == type)
              .toList(),
          options: FuzzyOptions(
            keys: [
              WeightedKey(
                  name: "payload", getter: (log) => log.payload, weight: 1)
            ],
          ),
        ).search(query).map((result) => result.item).toList(),
      ),
    );
  }
}
