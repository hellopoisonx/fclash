import 'dart:collection';

import 'package:fclash/models/proxies/selectable.dart';
import 'package:fclash/models/proxies/selector.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'proxy.freezed.dart';

@Freezed(copyWith: false)
interface class Proxy with _$Proxy {
  const factory Proxy({
    required final SplayTreeMap<String, Selector> selectors,
    required final Map<String, Selectable> p,
  }) = _Proxy;
}
