import 'dart:convert';

import 'package:fclash/clash/clash.dart';
import 'package:fclash/models/connections/connections.dart';
import 'package:fclash/providers/connections/connections.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fuzzy/fuzzy.dart';

class ConnectionsPage extends ConsumerWidget {
  const ConnectionsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final connections = ref.watch(connectionsProvider);
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.search_rounded),
            onPressed: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => SafeArea(
                child: ConnectionsSearchPage(
                    connections: connections.value?.connections ?? []),
              ),
            )),
          ),
          const IconButton(
            icon: Icon(Icons.block_rounded),
            onPressed: core.closeAllConnections,
          ),
        ],
      ),
      body: switch (connections) {
        AsyncData(:final value) => ConnectionsList(
            connections: value.connections,
            onClose: core.closeConnection,
          ),
        AsyncError(:final error) => Center(
              child: Tooltip(
            message: error.toString(),
            child: const Icon(
              Icons.warning_rounded,
              color: Colors.red,
            ),
          )),
        _ => const Center(child: CircularProgressIndicator())
      },
    );
  }
}

class ConnectionsList extends StatelessWidget {
  const ConnectionsList(
      {super.key, required this.connections, required this.onClose});

  final List<Connection> connections;
  final void Function(String id) onClose;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: connections.length,
      itemBuilder: (context, index) {
        final conn = connections[index];
        return ListTile(
          onTap: () async => await showDialog(
            context: context,
            builder: (context) {
              final navi = Navigator.of(context);
              return AlertDialog(
                title: const Text("Detail"),
                content: SingleChildScrollView(
                  child: SelectableText(
                    const JsonEncoder.withIndent("  ").convert(conn.toJson()),
                  ),
                ),
                actions: [
                  IconButton(
                    icon: const Icon(Icons.exit_to_app_rounded),
                    onPressed: navi.pop,
                  )
                ],
              );
            },
          ),
          leading: IconButton(
            icon: const Icon(Icons.close_rounded),
            onPressed: () => onClose(conn.id),
          ),
          title: Text(
              "${conn.metadata.network}::${conn.metadata.type}::${conn.metadata.host}"),
          subtitle: Text(conn.chains.join("::")),
          trailing: Text(conn.metadata.process),
        );
      },
    );
  }
}

class ConnectionsSearchPage extends StatefulWidget {
  const ConnectionsSearchPage({super.key, required this.connections});

  final List<Connection> connections;

  @override
  State<ConnectionsSearchPage> createState() => _ConnectionsSearchPageState();
}

class _ConnectionsSearchPageState extends State<ConnectionsSearchPage> {
  String query = "";
  late final List<Connection> connections = [...widget.connections];
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
          onSubmitted: (value) => setState(() => query = value),
          onChanged: (value) =>
              value.trim().isEmpty ? setState(() => query = "") : null,
        ),
      ),
      body: ConnectionsList(
        connections: filteredConnections(connections, query),
        onClose: (id) {
          core.closeConnection(id);
          setState(() {
            connections.removeWhere((c) => c.id == id);
          });
        },
      ),
    );
  }
}

List<Connection> filteredConnections(
    List<Connection> connections, String query) {
  return Fuzzy(
    connections,
    options: FuzzyOptions(shouldSort: true, keys: [
      WeightedKey(name: "rule", getter: (Connection c) => c.rule, weight: 1),
      WeightedKey(
          name: "rulePayload",
          getter: (Connection c) => c.rulePayload,
          weight: 1),
      WeightedKey(
          name: "chains",
          getter: (Connection c) => c.chains.join(" "),
          weight: 1),
      WeightedKey(
          name: "network",
          getter: (Connection c) => c.metadata.network,
          weight: 1),
      WeightedKey(
          name: "type", getter: (Connection c) => c.metadata.type, weight: 1),
      WeightedKey(
          name: "sourceIP",
          getter: (Connection c) => c.metadata.sourceIP,
          weight: 1),
      WeightedKey(
          name: "destinationIP",
          getter: (Connection c) => c.metadata.destinationIP,
          weight: 1),
      WeightedKey(
          name: "sourcePort",
          getter: (Connection c) => c.metadata.sourcePort,
          weight: 1),
      WeightedKey(
          name: "destinationPort",
          getter: (Connection c) => c.metadata.destinationPort,
          weight: 1),
      WeightedKey(
          name: "inboundIP",
          getter: (Connection c) => c.metadata.inboundIP,
          weight: 1),
      WeightedKey(
          name: "inboundName",
          getter: (Connection c) => c.metadata.inboundName,
          weight: 1),
      WeightedKey(
          name: "inboundPort",
          getter: (Connection c) => c.metadata.inboundPort,
          weight: 1),
      WeightedKey(
          name: "inboundUser",
          getter: (Connection c) => c.metadata.inboundUser,
          weight: 1),
      WeightedKey(
          name: "host", getter: (Connection c) => c.metadata.host, weight: 1),
      WeightedKey(
          name: "dnsMode",
          getter: (Connection c) => c.metadata.dnsMode,
          weight: 1),
      WeightedKey(
          name: "uid",
          getter: (Connection c) => c.metadata.uid.toString(),
          weight: 1),
      WeightedKey(
          name: "process",
          getter: (Connection c) => c.metadata.process,
          weight: 1),
      WeightedKey(
          name: "processPath",
          getter: (Connection c) => c.metadata.processPath,
          weight: 1),
      WeightedKey(
          name: "specialProxy",
          getter: (Connection c) => c.metadata.specialProxy,
          weight: 1),
      WeightedKey(
          name: "specialRules",
          getter: (Connection c) => c.metadata.specialRules,
          weight: 1),
      WeightedKey(
          name: "remoteDestination",
          getter: (Connection c) => c.metadata.remoteDestination,
          weight: 1),
      WeightedKey(
          name: "sniffHost",
          getter: (Connection c) => c.metadata.sniffHost,
          weight: 1),
    ]),
  ).search(query).map((result) => result.item).toList();
}
