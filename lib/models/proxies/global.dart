import 'dart:collection';

import 'package:fclash/models/proxies/node.dart';
import 'package:fclash/models/proxies/proxy.dart';
import 'package:fclash/models/proxies/selectable.dart';
import 'package:fclash/models/proxies/selector.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'global.freezed.dart';

@freezed
class Global with _$Global implements Proxy {
  const Global._();
  const factory Global(
      {required final SplayTreeMap<String, Selector> selectors,
      required final Map<String, Selectable> p}) = _Global;

  factory Global.fromJson(Map<String, dynamic> json) {
    final SplayTreeMap<String, Selector> selectors = SplayTreeMap();
    final Map<String, Selectable> p = {};
    for (final entry in json.entries) {
      late final Selectable n;
      if (entry.value["type"] == "URLTest" ||
          entry.value["type"] == "Selector") {
        n = Selector.fromJson(entry.value);
      } else {
        n = Node.fromJson(entry.value);
      }
      p[entry.key] = n;
    }
    selectors.addAll({"GLOBAL": p["GLOBAL"]! as Selector});
    return Global(selectors: selectors, p: p);
  }
}
