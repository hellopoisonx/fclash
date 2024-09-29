import 'dart:convert';
import 'dart:io';

import 'package:fclash/clash/clash.dart';
import 'package:fclash/prefs/prefs.dart';
import 'package:flutter/services.dart';
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
  try {
    core.init();
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
  await Prefs.init();
  final homeDir = Prefs.getHomeDirPath();
  if (homeDir == null || homeDir.isEmpty) {
    Constants.homeDirPath = (await getApplicationSupportDirectory()).path;
    Prefs.setHomeDirPath(Constants.homeDirPath);
  } else {
    Constants.homeDirPath = homeDir;
  }
  final configPath = Prefs.getConfigPath();
  if (configPath == null || configPath.isEmpty) {
    Constants.configPath = p.join(Constants.homeDirPath, "config.yaml");
    Prefs.setConfigPath(Constants.configPath);
  } else {
    Constants.configPath = configPath;
  }
  final delayUrl = Prefs.getDelayTestUrl();
  if (delayUrl == null || delayUrl.isEmpty) {
    Constants.delayTestUrl = "http://www.gstatic.com/generate_204";
    Prefs.setDelayTestUrl(Constants.delayTestUrl);
  } else {
    Constants.delayTestUrl = delayUrl;
  }
  final delayTimeout = Prefs.getDelayTestTimeout();
  if (delayTimeout == null) {
    Constants.delayTestTimeout = 1000;
    Prefs.setDelayTestTimeout(Constants.delayTestTimeout);
  } else {
    Constants.delayTestTimeout = delayTimeout;
  }
  await core.setCallbacks();
  //
  var mmdb = File(p.join(Constants.homeDirPath, "Country.mmdb"));
  if (!mmdb.existsSync()) {
    final data = await rootBundle.load("assets/Country.mmdb");
    await mmdb.create();
    await mmdb.writeAsBytes(Uint8List.sublistView(data));
  }
  //
  await core.startClash();
  core.startListeningOnBridgeMessage();
  core.startListeningOnBridgeError();
  final cfg = Prefs.getConfigs();
  if (cfg != null && cfg.isNotEmpty) {
    await core.patchConfig(jsonDecode(cfg));
  }
}
