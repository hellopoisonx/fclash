import 'package:fclash/models/proxies/history.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fclash/models/proxies/selectable.dart';
import 'package:fclash/models/proxies/type.dart';
import 'package:flutter/foundation.dart';

part 'selector.freezed.dart';
part 'selector.g.dart';

@Freezed(copyWith: true)
class Selector with _$Selector, Selectable {
  const Selector._();
  const factory Selector({
    required String name,
    required String now,
    required List<String> all,
    required List<History> history,
    required ProxyType type,
  }) = _Selector;
  factory Selector.fromJson(Map<String, dynamic> json) =>
      _$SelectorFromJson(json);

  @override
  int? get delay => history.lastOrNull?.delay;
}
