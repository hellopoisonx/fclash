// ignore_for_file: constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum()
enum ProxyType {
  Pass,
  Reject,
  RejectDrop,
  Selector,
  URLTest,
  Direct,
  Compatible,
  Vless,
  Hysteria2,
  Vmess,
  ShadowsocksR,
  Shadowsocks,
  Trojan;

  bool isSelector(String t) => t == "Selector";
}
