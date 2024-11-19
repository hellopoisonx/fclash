import 'dart:convert';

import 'package:fclash/providers/logs/logs.dart';
import 'package:logging/logging.dart';
import 'package:fclash/clash/clash.dart';
import 'package:fclash/prefs/prefs.dart';
import 'package:path/path.dart' as p;
import 'package:fclash/constants/constants.dart';
import 'package:fclash/providers/themes/theme_mode.dart';
import 'package:fclash/themes/default.dart';
import 'package:fclash/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((record) =>
      // ignore: avoid_print
      print("${record.level.name} ${record.time}: ${record.message}"));
  try {
    await init();
    runApp(const ProviderScope(child: App(null)));
  } on Exception catch (e) {
    runApp(ProviderScope(child: App(e)));
  }
}

class App extends ConsumerWidget {
  const App(this.err, {super.key});

  final Exception? err;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mode = ref.watch(themeModeNotifierProvider);
    ref.watch(logsProvider);
    return MaterialApp(
      theme: light,
      darkTheme: dark,
      themeMode: mode,
      home: err == null
          ? const SafeArea(child: HomePage())
          : Scaffold(
              body: Center(child: Text(err.toString())),
            ),
    );
  }
}

Future<void> init() async {
  core.init();
  await Prefs.init();
  final homeDir = Prefs.getHomeDirPath();
  if (homeDir == null || homeDir.isEmpty) {
    Constants.homeDirPath =
        Uri.parse((await getApplicationSupportDirectory()).path);
    Prefs.setHomeDirPath(Constants.homeDirPath.toFilePath());
  } else {
    Constants.homeDirPath = Uri.parse(homeDir);
  }
  final configPath = Prefs.getConfigPath();
  if (configPath == null || configPath.isEmpty) {
    Constants.configPath =
        Uri.file(p.join(Constants.homeDirPath.toFilePath(), "config.yaml"));
    Prefs.setConfigPath(Constants.configPath.toFilePath());
  } else {
    Constants.configPath = Uri.file(configPath);
  }
  final delayUrl = Prefs.getDelayTestUrl();
  if (delayUrl == null || delayUrl.isEmpty) {
    Constants.delayTestUrl = Uri.parse("http://www.gstatic.com/generate_204");
    Prefs.setDelayTestUrl(Constants.delayTestUrl.toString());
  } else {
    Constants.delayTestUrl = Uri.parse(delayUrl);
  }
  final delayTimeout = Prefs.getDelayTestTimeout();
  if (delayTimeout == null) {
    Constants.delayTestTimeout = 1000;
    Prefs.setDelayTestTimeout(Constants.delayTestTimeout);
  } else {
    Constants.delayTestTimeout = delayTimeout;
  }
  await core.setCallbacks();
  await core.startClash();
  core.startListeningOnBridgeMessage();
  core.startListeningOnBridgeError();
  final cfg = Prefs.getConfigs();
  if (cfg != null && cfg.isNotEmpty) {
    await core.patchConfig(jsonDecode(cfg));
  }
}
