import 'package:fclash/models/proxies/history.dart';
import 'package:fclash/models/proxies/type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'selectable.freezed.dart';

@Freezed(copyWith: false)
interface class Selectable with _$Selectable {
  const factory Selectable({
    required String name,
    required List<History> history,
    required ProxyType type,
    required int? delay,
  }) = _Selectable;
}
