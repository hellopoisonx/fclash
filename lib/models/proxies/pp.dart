import 'dart:collection';

import 'package:fclash/models/proxies/node.dart';
import 'package:fclash/models/proxies/selectable.dart';
import 'package:fclash/models/proxies/selector.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

export 'package:fclash/models/proxies/type.dart';
export 'package:fclash/models/proxies/node.dart';
export 'package:fclash/models/proxies/selector.dart';
export 'package:fclash/models/proxies/selectable.dart';

part 'pp.freezed.dart';

@Freezed(equal: true, toJson: false, fromJson: false, copyWith: true)
class PP with _$PP {
  const PP._();
  const factory PP({
    required final Map<String, Selector> selectors,
    required final Selector global,
    required final Map<String, Selectable> all,
  }) = _PP;

  factory PP.fromJson(
      List<dynamic> s, Map<String, dynamic> g, Map<String, dynamic> a) {
    final SplayTreeMap<String, Selector> selectors = SplayTreeMap();
    final Map<String, Selectable> all = {};
    final global = Selector.fromJson(g);
    for (final ss in s) {
      final n = Selector.fromJson(ss);
      selectors[n.name] = n;
    }

    for (final entry in a.entries) {
      late final Selectable n;
      if (entry.value["type"] == "URLTest" ||
          entry.value["type"] == "Selector") {
        n = Selector.fromJson(entry.value);
      } else {
        n = Node.fromJson(entry.value);
      }
      all[entry.key] = n;
    }
    return PP(selectors: selectors, all: all, global: global);
  }
}
