import 'dart:convert';

import 'package:fclash/clash/core.dart';
import 'package:fclash/clash/typedef.dart';
import 'package:fclash/constants/constants.dart';
import 'package:fclash/prefs/prefs.dart';
import 'package:dio/dio.dart';
import 'package:path/path.dart' as p;

class ExternalResourceController {
  ExternalResourceController._() {
    syncResources();
  }
  static final ExternalResourceController _instance =
      ExternalResourceController._();

  void syncResources() {
    for (final (index, res) in resources.indexed) {
      final json = Prefs.instance.getString(res.source.name);
      if (json == null || json.isEmpty) {
        resources[index] =
            res.copyWith(path: p.join(Constants.homeDirPath, res.source.name));
      } else {
        resources[index] = ExternalResource.fromJson(jsonDecode(json));
      }
    }
  }

  List<ExternalResource> resources = [
    ExternalResource.mmdb(),
    ExternalResource.geoIP(),
    ExternalResource.geoSite(),
    ExternalResource.asn(),
  ];

  Future<void> update(ExternalResource resource) async {
    print("updating ${resource.path}");
    final dio = Dio();
    await dio.download(resource.source.source, resource.path);
    try {
      await core.validateResources(resource.path ?? "");
      resource = resource.copyWith(
        isValid: true,
        lastUpdated: DateTime.now(),
      );
    } catch (e) {
      resource = resource.copyWith(
        isValid: false,
        lastUpdated: DateTime.now(),
      );
    }
    Prefs.instance
        .setString(resource.source.name, jsonEncode(resource.toJson()));
    syncResources();
  }

  Future<void> checkAll() async {
    for (var res in resources) {
      try {
        await core.validateResources(res.path ?? "");
        res = res.copyWith(isValid: true);
      } catch (_) {
        res = res.copyWith(isValid: false);
      } finally {
        Prefs.instance.setString(res.source.name, jsonEncode(res.toJson()));
      }
    }
    syncResources();
  }
}

final resource = ExternalResourceController._instance;
