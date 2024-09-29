import 'dart:io';

class Constants {
  static late String configPath;
  static late String homeDirPath;
  static late String delayTestUrl;
  static late int delayTestTimeout; // ms
  static final bool isDesktop =
      Platform.isLinux || Platform.isMacOS || Platform.isWindows;
}
