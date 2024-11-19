import 'dart:collection';

import 'package:fclash/models/proxies/proxy.dart';
import 'package:fclash/models/proxies/selectable.dart';
import 'package:fclash/models/proxies/selector.dart';

class Direct implements Proxy {
  @override
  Map<String, Selectable> get p => const {};

  @override
  SplayTreeMap<String, Selector> get selectors => SplayTreeMap();

  const Direct();
}
