import 'package:shared_preferences/shared_preferences.dart';

class Prefs {
  static late final SharedPreferences _p;
  static Future<void> init() async {
    _p = await SharedPreferences.getInstance();
  }

  static String? getHomeDirPath() => _p.getString("homeDirPath");
  static setHomeDirPath(String p) => _p.setString("homeDirPath", p);

  static String? getConfigPath() => _p.getString("configPath");
  static setConfigPath(String p) => _p.setString("configPath", p);

  static String? getConfigs() => _p.getString("configs");
  static setConfigs(String json) => _p.setString("configs", json);

  static String? getDelayTestUrl() => _p.getString("delayTestUrl");
  static setDelayTestUrl(String url) => _p.setString("delayTestUrl", url);

  static int? getDelayTestTimeout() => _p.getInt("delayTestTimeout");
  static setDelayTestTimeout(int delay) => _p.setInt("delayTestTimeout", delay);

  static String? getProfiles() => _p.getString("profiles");
  static setProfiles(String json) => _p.setString("profiles", json);

  static SharedPreferences get instance => _p;
}
