import 'package:fclash/widgets/clash_configs_tun.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: const [
          ClashConfigsTun(),
        ],
      ),
    );
  }
}
