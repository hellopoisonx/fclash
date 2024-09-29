import 'package:fclash/providers/configs/configs.dart';
import 'package:fclash/models/configs/configs.dart' as cfg;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

class ClashConfigsTun extends ConsumerWidget {
  const ClashConfigsTun({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tun =
        ref.watch(clashConfigsNotifierProvider.select((cfg) => cfg.value?.tun));
    return switch (tun) {
      null => const Center(child: CircularProgressIndicator()),
      _ => () {
          final enabled = tun.enable ?? false;
          final autoDetectInterface = tun.autoDetectInterface ?? false;
          final stack = tun.stack ?? cfg.Stack.system;
          final autoRoute = tun.autoRoute ?? false;
          final update =
              ref.watch(clashConfigsNotifierProvider.notifier).updateTun;
          return ExpansionTile(
            title: const Text("TUN Settings"),
            children: [
              SwitchListTile(
                value: enabled,
                title: const Text("TUN"),
                onChanged: (val) => update((tun) => tun.enable = val),
              ),
              SwitchListTile(
                value: autoDetectInterface,
                title: const Text("AutoDetectInterface"),
                onChanged: enabled
                    ? null
                    : (val) => update((tun) => tun.autoDetectInterface = val),
              ),
              SwitchListTile(
                value: autoRoute,
                title: const Text("AutoRoute"),
                onChanged: enabled
                    ? null
                    : (val) => update((tun) => tun.autoRoute = val),
              ),
              SegmentedButton<cfg.Stack>(
                segments: cfg.Stack.values
                    .map((s) => ButtonSegment(
                          value: s,
                          label: Text(s.name),
                          enabled: !enabled,
                        ))
                    .toList(),
                selected: {stack},
                onSelectionChanged: (p0) =>
                    update((tun) => tun.stack = p0.first),
              ),
            ],
          );
        }(),
    };
  }
}
