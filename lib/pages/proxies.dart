import 'package:fclash/models/configs/configs.dart';
import 'package:fclash/models/proxies/proxies.dart';
import 'package:fclash/providers/configs/configs.dart';
import 'package:fclash/providers/proxies/proxies.dart';
import 'package:fclash/widgets/node_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProxiesList extends StatefulWidget {
  const ProxiesList(
      {super.key,
      required this.p,
      required this.changeProxy,
      required this.fetchDelay,
      required this.fetchGroupDelay});

  final Proxy p;
  final Function(String proxy, String selector) changeProxy;
  final Function(String name) fetchDelay;
  final Function(String name) fetchGroupDelay;

  @override
  State<ProxiesList> createState() => _ProxiesListState();
}

class _ProxiesListState extends State<ProxiesList> {
  late Map<String, bool> expand = Map.fromIterables(widget.p.selectors.keys,
      List.generate(widget.p.selectors.length, (_) => false));

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        for (final selector in widget.p.selectors.values)
          ...() {
            final slivers = getSlivers(selector);
            return [
              slivers.header,
              SliverVisibility(
                  visible: expand[selector.name] ??= false,
                  sliver: slivers.body)
            ];
          }()
      ],
    );
  }

  ({Widget header, Widget body}) getSlivers(Selector selector) {
    final header = getHeader(selector);
    final body = getBody(selector);
    return (header: header, body: body);
  }

  SliverToBoxAdapter getHeader(Selector selector) => SliverToBoxAdapter(
        child: ListTile(
          title: Text(selector.name),
          subtitle: Text(selector.now),
          trailing: selector.delay == null
              ? IconButton(
                  icon: const Icon(Icons.speed_rounded),
                  onPressed: () => widget.fetchGroupDelay(selector.name),
                )
              : selector.delay == 0
                  ? TextButton(
                      onPressed: () => widget.fetchGroupDelay(selector.name),
                      child: Text(
                        "Err",
                        style: Theme.of(context)
                            .textTheme
                            .labelMedium
                            ?.copyWith(color: Colors.red),
                      ),
                    )
                  : TextButton(
                      child: Text(selector.delay.toString()),
                      onPressed: () => widget.fetchGroupDelay(selector.name),
                    ),
          onTap: () async {
            //await Future.delayed(const Duration(milliseconds: 150));
            setState(() =>
                expand[selector.name] = !(expand[selector.name] ??= false));
          },
        ),
      );

  Widget getBody(Selector selector) {
    return SliverGrid.extent(
      maxCrossAxisExtent: 170,
      childAspectRatio: 2.5,
      mainAxisSpacing: 8,
      crossAxisSpacing: 8,
      children: [
        for (final node in selector.all.map((n) => widget.p.p[n]!))
          NodeCard(
            node: node,
            selected: selector.now == node.name,
            onTap: () => widget.changeProxy(node.name, selector.name),
            delayTest: () => widget.fetchDelay(node.name),
          )
      ],
    );
  }
}

class ProxiesPage extends ConsumerWidget {
  ProxiesPage({super.key});

  final _proxiesList = GlobalKey();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final p = ref.watch(proxiesNotifierProvider);
    final mode = ref.watch(clashConfigsNotifierProvider
        .select((cfg) => cfg.value?.mode ?? ProxyMode.rule));
    final scaffold = GlobalKey<ScaffoldState>();
    return Scaffold(
      key: scaffold,
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.details_rounded),
            onPressed: () {
              scaffold.currentState?.showBottomSheet(
                (context) {
                  return Padding(
                    padding: const EdgeInsets.all(8),
                    child: SegmentedButton<ProxyMode>(
                      segments: ProxyMode.values
                          .map((m) =>
                              ButtonSegment(value: m, label: Text(m.name)))
                          .toList(),
                      selected: {mode},
                      onSelectionChanged: (p0) {
                        ref
                            .read(clashConfigsNotifierProvider.notifier)
                            .updateProxyMode(p0.first);
                      },
                    ),
                  );
                },
                showDragHandle: true,
                constraints: const BoxConstraints.expand(height: 120),
              );
            },
          )
        ],
      ),
      body: switch (p) {
        AsyncData(:final value) => switch (mode) {
            ProxyMode.rule || ProxyMode.global => ProxiesList(
                key: _proxiesList,
                p: value,
                fetchDelay: ref
                    .read(proxiesNotifierProvider.notifier)
                    .testDelayForProxy,
                fetchGroupDelay: ref
                    .read(proxiesNotifierProvider.notifier)
                    .testDelayForSelector,
                changeProxy:
                    ref.read(proxiesNotifierProvider.notifier).changeProxy,
              ),
            ProxyMode.direct => const Center(child: Text("DIRECT")),
          },
        AsyncError(:final error) => Center(child: Text(error.toString())),
        _ => const Center(child: CircularProgressIndicator()),
      },
    );
  }
}
