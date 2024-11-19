import 'dart:convert';
import 'dart:io';

import 'package:fclash/clash/clash.dart';
import 'package:fclash/constants/constants.dart';
import 'package:fclash/models/profiles/profile.dart';
import 'package:fclash/models/profiles/profiles.dart' as p;
import 'package:fclash/prefs/prefs.dart';
import 'package:path/path.dart' as p;
import 'package:file_picker/file_picker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:dio/dio.dart';

part 'profiles.g.dart';

@riverpod
class Profiles extends _$Profiles {
  @override
  p.Profiles build() {
    final json = Prefs.getProfiles();
    if (json == null) {
      final defaultProfile = Profile.defaultConfig;
      final profiles = p.Profiles(all: {defaultProfile.path: defaultProfile});
      Prefs.setProfiles(jsonEncode(profiles.toJson()));
      return profiles;
    }
    return p.Profiles.fromJson(jsonDecode(json));
  }

  Future<void> switchProfile(Profile profile) async {
    await core.changeProfile(profile.path.toFilePath());
    ref.invalidateSelf();
  }

  void addProfile(Profile profile) {
    state = state.copyWith(all: {...state.all, profile.path: profile});
    Prefs.setProfiles(jsonEncode(state.toJson()));
  }

  void reviseProfile(Profile profile) {
    final name =
        "${findAvailableName(p.basenameWithoutExtension(profile.name))}.yaml";
    addProfile(profile.copyWith(name: name));
  }

  bool isNameDumplicated(String name) {
    return File(p.join(Constants.homeDirPath.toFilePath(), name)).existsSync();
  }

  String findAvailableName(String baseName) {
    final id = _findAvailableId(baseName, 0);
    return id == 0 ? baseName : "$baseName($id)";
  }

  int _findAvailableId(String baseName, int count) {
    final isDumplicated = isNameDumplicated("$baseName.yaml");
    if (isDumplicated) {
      return _findAvailableId("$baseName(${count + 1})", count + 1);
    } else {
      return count;
    }
  }

  void deleteProfile(Profile profile) {
    var profiles = {...state.all};
    profiles.remove(profile.path);
    core.changeProfile(Profile.defaultConfig.path.toFilePath());
    state = state.copyWith(
        all: {...profiles, Profile.defaultConfig.path: Profile.defaultConfig});
    Prefs.setProfiles(jsonEncode(state.toJson()));
    File.fromUri(profile.path).deleteSync();
  }

  Future<void> importFromLocal() async {
    String? path = (await FilePicker.platform.pickFiles())?.files.single.path;
    if (path == null) {
      return;
    }
    core.validateConfigWithPath(path, false);
    final src = File(path);
    final name = findAvailableName(p.basenameWithoutExtension(path));
    File dst = File(p.join(Constants.homeDirPath.toFilePath(), "$name.yaml"));
    src.copySync(dst.path);
    addProfile(Profile(
      name: p.basename(dst.path),
      path: Uri.file(dst.path),
    ));
  }

  Future<void> importFromURL(Uri url, [String filename = ""]) async {
    final profile = await downloadProfile(url, filename);
    addProfile(profile);
  }

  Future<Profile> downloadProfile(Uri url, String filename) async {
    final resp =
        await Dio(BaseOptions(responseType: ResponseType.plain)).getUri(url);
    final headers = resp.headers;
    if (filename.isEmpty) {
      if (headers.value("content-disposition") == null) {
        filename = DateTime.now().toIso8601String();
      } else {
        final hDis = headers.value("content-disposition")!;
        final dis = HeaderValue.parse(hDis);
        dis.parameters.forEach((k, v) {
          if (k.startsWith("filename")) {
            if (v == null || v.isEmpty) {
              return;
            }
            if (k == "filename*") {
              filename = Uri.decodeComponent((v).split("'").last);
            } else {
              filename = v;
            }
          }
        });
      }
    }
    final subInfo = headers.value("subscription-userinfo");
    Map<String, int?> m = {};
    if (subInfo != null) {
      final list = subInfo.split(";");
      for (final ele in list) {
        final v = ele.trim().split("=");
        m[v.first] = v.lastOrNull != null ? int.tryParse(v.last) : null;
      }
    }
    filename =
        "${findAvailableName(p.basenameWithoutExtension(filename))}.yaml";
    String path = p.join(Constants.homeDirPath.toFilePath(), filename);
    await Dio().downloadUri(url, path);
    return Profile(
      name: filename,
      path: Uri.file(path),
      url: url,
      expirationTime: m["expire"] != null
          ? DateTime.fromMillisecondsSinceEpoch(m["expire"]! * 1000)
          : null,
      uploadTraffic: m["upload"],
      downloadTraffic: m["download"],
      totalTraffic: m["total"],
    );
  }
}
