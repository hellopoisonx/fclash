import 'package:fclash/providers/memory/memory.dart';
import 'package:fclash/widgets/traffic_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MemoryCard extends ConsumerWidget {
  const MemoryCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mem = ref.watch(memoryProvider);
    return switch (mem) {
      AsyncData(:final value) => TrafficTile(
          traffic: value.toString(),
          prefix: const Icon(Icons.memory_rounded),
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
    };
  }
}
