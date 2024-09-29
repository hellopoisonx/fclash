import 'package:fclash/constants/constants.dart';
import 'package:fclash/pages/connections.dart';
import 'package:fclash/pages/logs.dart';
import 'package:fclash/pages/profiles.dart';
import 'package:fclash/pages/proxies.dart';
import 'package:fclash/pages/settings.dart';
import 'package:fclash/providers/themes/theme_mode.dart';
import 'package:fclash/widgets/memory_card.dart';
import 'package:fclash/widgets/traffics_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  int _currentIndex = 0;
  final List<({Icon icon, String name, Widget page})> _pages = [
    (
      icon: const Icon(Icons.traffic_rounded),
      name: "proxies",
      page: ProxiesPage(),
    ),
    (
      icon: const Icon(Icons.bug_report_rounded),
      name: "Logs",
      page: const LogsPage(),
    ),
    (
      icon: const Icon(Icons.transfer_within_a_station_rounded),
      name: "Connections",
      page: const ConnectionsPage(),
    ),
    (
      icon: const Icon(Icons.file_copy_rounded),
      name: "Profiles",
      page: const ProfilesPage(),
    ),
    (
      icon: const Icon(Icons.settings_rounded),
      name: "Settings",
      page: const SettingsPage(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final mode = ref.watch(themeModeNotifierProvider);
    return Constants.isDesktop
        ? Row(
            children: [
              SizedBox(
                width: 170,
                child: NavigationRail(
                  trailing: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SegmentedButton(
                      segments: ThemeMode.values
                          .map((m) => ButtonSegment(
                              value: m,
                              icon: Icon(switch (m) {
                                ThemeMode.system => Icons.auto_mode_rounded,
                                ThemeMode.light => Icons.light_mode_rounded,
                                ThemeMode.dark => Icons.dark_mode_rounded,
                              })))
                          .toList(),
                      selected: {mode},
                      showSelectedIcon: false,
                      onSelectionChanged: (p0) => ref
                          .read(themeModeNotifierProvider.notifier)
                          .mode = p0.first,
                    ),
                  ),
                  leading: Container(
                    margin: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(),
                    ),
                    height: 90,
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TrafficsCard(),
                        MemoryCard(),
                      ],
                    ),
                  ),
                  extended: true,
                  labelType: NavigationRailLabelType.none,
                  destinations: _pages
                      .map((p) => NavigationRailDestination(
                            icon: p.icon,
                            label: Text(p.name),
                          ))
                      .toList(),
                  selectedIndex: _currentIndex,
                  onDestinationSelected: (idx) =>
                      setState(() => _currentIndex = idx),
                ),
              ),
              Expanded(child: _page)
            ],
          )
        : Column(
            children: [
              Expanded(child: _page),
              NavigationBar(
                destinations: _pages
                    .map((p) => NavigationDestination(
                          icon: p.icon,
                          label: p.name,
                        ))
                    .toList(),
                selectedIndex: _currentIndex,
                onDestinationSelected: (idx) =>
                    setState(() => _currentIndex = idx),
              )
            ],
          );
  }

  Widget get _page => _pages[_currentIndex].page;
}
