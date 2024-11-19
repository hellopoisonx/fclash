import 'dart:io';

class Constants {
  static late Uri configPath;
  static late Uri homeDirPath;
  static late Uri delayTestUrl;
  static late int delayTestTimeout; // ms
  static final bool isWindows = Platform.isWindows;
  static final bool isDesktop =
      Platform.isLinux || Platform.isMacOS || Platform.isWindows;
}
