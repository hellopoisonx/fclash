import 'package:fclash/models/proxies/history.dart';
import 'package:fclash/models/proxies/type.dart';

mixin Selectable {
  String get name;
  List<History> get history;
  ProxyType get type;
  int? get delay;
}
