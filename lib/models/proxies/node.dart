import 'package:fclash/models/proxies/history.dart';
import 'package:fclash/models/proxies/selectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fclash/models/proxies/type.dart';
import 'package:flutter/foundation.dart';

part 'node.freezed.dart';
part 'node.g.dart';

@freezed
class Node with _$Node implements Selectable{
  const Node._();
  const factory Node({
    required String name,
    required List<History> history,
    required ProxyType type,
    required bool udp,
  }) = _Node;
  factory Node.fromJson(Map<String, dynamic> json) => _$NodeFromJson(json);

  @override
  int? get delay => history.lastOrNull?.delay;
}
