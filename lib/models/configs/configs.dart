// ignore_for_file: invalid_annotation_target

import 'package:fclash/models/configs/type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

export './type.dart';

part 'configs.freezed.dart';
part 'configs.g.dart';

@unfreezed
class Configs with _$Configs {
  Configs._();
  factory Configs({
    @JsonKey(name: 'port') int? port,
    @JsonKey(name: 'socks-port') int? socksPort,
    @JsonKey(name: 'redir-port') int? redirPort,
    @JsonKey(name: 'tproxy-port') int? tproxyPort,
    @JsonKey(name: 'mixed-port') int? mixedPort,
    @JsonKey(name: 'tun') Tun? tun,
    @JsonKey(name: 'tuic-server') TuicServer? tuicServer,
    @JsonKey(name: 'ss-config') String? ssConfig,
    @JsonKey(name: 'vmess-config') String? vmessConfig,
    @JsonKey(name: 'lan-allowed-ips') List<String>? lanAllowedIps,
    @JsonKey(name: 'allow-lan') bool? allowLan,
    @JsonKey(name: 'bind-address') String? bindAddress,
    @JsonKey(name: 'inbound-tfo') bool? inboundTfo,
    @JsonKey(name: 'inbound-mptcp') bool? inboundMptcp,
    @JsonKey(name: 'mode') ProxyMode? mode,
    @JsonKey(name: 'UnifiedDelay') bool? unifiedDelay,
    @JsonKey(name: 'log-level') String? logLevel,
    @JsonKey(name: 'ipv6') bool? ipv6,
    @JsonKey(name: 'interface-name') String? interfaceName,
    @JsonKey(name: 'geox-url') GeoxUrl? geoxUrl,
    @JsonKey(name: 'geo-auto-update') bool? geoAutoUpdate,
    @JsonKey(name: 'geo-update-interval') int? geoUpdateInterval,
    @JsonKey(name: 'geodata-mode') bool? geodataMode,
    @JsonKey(name: 'geodata-loader') String? geodataLoader,
    @JsonKey(name: 'geosite-matcher') String? geositeMatcher,
    @JsonKey(name: 'tcp-concurrent') bool? tcpConcurrent,
    @JsonKey(name: 'find-process-mode') String? findProcessMode,
    @JsonKey(name: 'sniffing') bool? sniffing,
    @JsonKey(name: 'global-client-fingerprint') String? globalClientFingerprint,
    @JsonKey(name: 'global-ua') String? globalUa,
  }) = _Configs;

  factory Configs.fromJson(Map<String, Object?> json) =>
      _$ConfigsFromJson(json);
}

@unfreezed
class Tun with _$Tun {
  factory Tun({
    @JsonKey(name: 'enable') bool? enable,
    @JsonKey(name: 'device') String? device,
    @JsonKey(name: 'stack') Stack? stack,
    @JsonKey(name: 'dns-hijack') List<String>? dnsHijack,
    @JsonKey(name: 'auto-route') bool? autoRoute,
    @JsonKey(name: 'auto-detect-interface') bool? autoDetectInterface,
    @JsonKey(name: 'gso-max-size') int? gsoMaxSize,
    @JsonKey(name: 'inet4-address') List<String>? inet4Address,
    @JsonKey(name: 'file-descriptor') int? fileDescriptor,
  }) = _Tun;

  factory Tun.fromJson(Map<String, Object?> json) => _$TunFromJson(json);
}

@unfreezed
class TuicServer with _$TuicServer {
  factory TuicServer({
    @JsonKey(name: 'enable') bool? enable,
    @JsonKey(name: 'listen') String? listen,
    @JsonKey(name: 'certificate') String? certificate,
    @JsonKey(name: 'private-key') String? privateKey,
    @JsonKey(name: 'mux-option') MuxOption? muxOption,
  }) = _TuicServer;

  factory TuicServer.fromJson(Map<String, Object?> json) =>
      _$TuicServerFromJson(json);
}

@unfreezed
class MuxOption with _$MuxOption {
  factory MuxOption({
    @JsonKey(name: 'brutal') Brutal? brutal,
  }) = _MuxOption;

  factory MuxOption.fromJson(Map<String, Object?> json) =>
      _$MuxOptionFromJson(json);
}

@unfreezed
class Brutal with _$Brutal {
  factory Brutal({
    @JsonKey(name: 'enabled') bool? enabled,
  }) = _Brutal;

  factory Brutal.fromJson(Map<String, Object?> json) => _$BrutalFromJson(json);
}

@unfreezed
class GeoxUrl with _$GeoxUrl {
  factory GeoxUrl({
    @JsonKey(name: 'geoip') String? geoip,
    @JsonKey(name: 'mmdb') String? mmdb,
    @JsonKey(name: 'asn') String? asn,
    @JsonKey(name: 'geosite') String? geosite,
  }) = _GeoxUrl;

  factory GeoxUrl.fromJson(Map<String, Object?> json) =>
      _$GeoxUrlFromJson(json);
}

@JsonEnum(valueField: 'field')
enum Stack {
  mixed("Mixed"),
  gvisor("gVisor"),
  system("System"),
  lwip("Lwip");

  final String field;

  const Stack(this.field);
}
