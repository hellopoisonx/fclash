import 'package:fclash/models/traffic/traffic.dart';
import 'package:fclash/providers/current_traffics/current_traffics.dart';
import 'package:fclash/widgets/traffic_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TrafficsCard extends ConsumerWidget {
  const TrafficsCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final traffic = ref.watch(currentTrafficsProvider);
    return switch (traffic) {
      AsyncData<({Traffic up, Traffic down})>(:final value) => Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TrafficTile(
                traffic: "${value.up}/s",
                prefix: const Icon(Icons.arrow_upward_rounded)),
            TrafficTile(
                traffic: "${value.down}/s",
                prefix: const Icon(Icons.arrow_downward_rounded)),
          ],
        ),
      AsyncError() => const Center(
            child: Icon(
          Icons.warning_rounded,
          color: Colors.red,
        )),
      _ => const Center(child: CircularProgressIndicator()),
    };
  }
}
