import 'dart:collection';

import 'package:fclash/models/proxies/proxy.dart';
import 'package:fclash/models/proxies/node.dart';
import 'package:fclash/models/proxies/selectable.dart';
import 'package:fclash/models/proxies/selector.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

export 'package:fclash/models/proxies/type.dart';
export 'package:fclash/models/proxies/node.dart';
export 'package:fclash/models/proxies/selector.dart';
export 'package:fclash/models/proxies/selectable.dart';

part 'rule.freezed.dart';

@freezed
class Rule with _$Rule implements Proxy{
  const Rule._();
  const factory Rule({
    required final Map<String, Selectable> p,
    required final SplayTreeMap<String, Selector> selectors,
  }) = _Rule;

  factory Rule.fromJson(Map<String, dynamic> json) {
    final SplayTreeMap<String, Selector> selectors = SplayTreeMap();
    final Map<String, Selectable> p = {};
    for (final entry in json.entries) {
      late final Selectable n;
      if (entry.value["type"] == "URLTest" ||
          entry.value["type"] == "Selector") {
        final s = Selector.fromJson(entry.value);
        selectors.addAll({entry.key: s});
        n = s;
      } else {
        n = Node.fromJson(entry.value);
      }
      p[entry.key] = n;
    }
    return Rule(selectors: selectors, p: p);
  }
}
