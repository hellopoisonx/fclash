// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'configs.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConfigsImpl _$$ConfigsImplFromJson(Map<String, dynamic> json) =>
    _$ConfigsImpl(
      port: (json['port'] as num?)?.toInt(),
      socksPort: (json['socks-port'] as num?)?.toInt(),
      redirPort: (json['redir-port'] as num?)?.toInt(),
      tproxyPort: (json['tproxy-port'] as num?)?.toInt(),
      mixedPort: (json['mixed-port'] as num?)?.toInt(),
      tun: json['tun'] == null
          ? null
          : Tun.fromJson(json['tun'] as Map<String, dynamic>),
      tuicServer: json['tuic-server'] == null
          ? null
          : TuicServer.fromJson(json['tuic-server'] as Map<String, dynamic>),
      ssConfig: json['ss-config'] as String?,
      vmessConfig: json['vmess-config'] as String?,
      lanAllowedIps: (json['lan-allowed-ips'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      allowLan: json['allow-lan'] as bool?,
      bindAddress: json['bind-address'] as String?,
      inboundTfo: json['inbound-tfo'] as bool?,
      inboundMptcp: json['inbound-mptcp'] as bool?,
      mode: $enumDecodeNullable(_$ProxyModeEnumMap, json['mode']),
      unifiedDelay: json['UnifiedDelay'] as bool?,
      logLevel: json['log-level'] as String?,
      ipv6: json['ipv6'] as bool?,
      interfaceName: json['interface-name'] as String?,
      geoxUrl: json['geox-url'] == null
          ? null
          : GeoxUrl.fromJson(json['geox-url'] as Map<String, dynamic>),
      geoAutoUpdate: json['geo-auto-update'] as bool?,
      geoUpdateInterval: (json['geo-update-interval'] as num?)?.toInt(),
      geodataMode: json['geodata-mode'] as bool?,
      geodataLoader: json['geodata-loader'] as String?,
      geositeMatcher: json['geosite-matcher'] as String?,
      tcpConcurrent: json['tcp-concurrent'] as bool?,
      findProcessMode: json['find-process-mode'] as String?,
      sniffing: json['sniffing'] as bool?,
      globalClientFingerprint: json['global-client-fingerprint'] as String?,
      globalUa: json['global-ua'] as String?,
    );

Map<String, dynamic> _$$ConfigsImplToJson(_$ConfigsImpl instance) =>
    <String, dynamic>{
      'port': instance.port,
      'socks-port': instance.socksPort,
      'redir-port': instance.redirPort,
      'tproxy-port': instance.tproxyPort,
      'mixed-port': instance.mixedPort,
      'tun': instance.tun,
      'tuic-server': instance.tuicServer,
      'ss-config': instance.ssConfig,
      'vmess-config': instance.vmessConfig,
      'lan-allowed-ips': instance.lanAllowedIps,
      'allow-lan': instance.allowLan,
      'bind-address': instance.bindAddress,
      'inbound-tfo': instance.inboundTfo,
      'inbound-mptcp': instance.inboundMptcp,
      'mode': _$ProxyModeEnumMap[instance.mode],
      'UnifiedDelay': instance.unifiedDelay,
      'log-level': instance.logLevel,
      'ipv6': instance.ipv6,
      'interface-name': instance.interfaceName,
      'geox-url': instance.geoxUrl,
      'geo-auto-update': instance.geoAutoUpdate,
      'geo-update-interval': instance.geoUpdateInterval,
      'geodata-mode': instance.geodataMode,
      'geodata-loader': instance.geodataLoader,
      'geosite-matcher': instance.geositeMatcher,
      'tcp-concurrent': instance.tcpConcurrent,
      'find-process-mode': instance.findProcessMode,
      'sniffing': instance.sniffing,
      'global-client-fingerprint': instance.globalClientFingerprint,
      'global-ua': instance.globalUa,
    };

const _$ProxyModeEnumMap = {
  ProxyMode.global: 'global',
  ProxyMode.rule: 'rule',
  ProxyMode.direct: 'direct',
};

_$TunImpl _$$TunImplFromJson(Map<String, dynamic> json) => _$TunImpl(
      enable: json['enable'] as bool?,
      device: json['device'] as String?,
      stack: $enumDecodeNullable(_$StackEnumMap, json['stack']),
      dnsHijack: (json['dns-hijack'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      autoRoute: json['auto-route'] as bool?,
      autoDetectInterface: json['auto-detect-interface'] as bool?,
      gsoMaxSize: (json['gso-max-size'] as num?)?.toInt(),
      inet4Address: (json['inet4-address'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      fileDescriptor: (json['file-descriptor'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$TunImplToJson(_$TunImpl instance) => <String, dynamic>{
      'enable': instance.enable,
      'device': instance.device,
      'stack': _$StackEnumMap[instance.stack],
      'dns-hijack': instance.dnsHijack,
      'auto-route': instance.autoRoute,
      'auto-detect-interface': instance.autoDetectInterface,
      'gso-max-size': instance.gsoMaxSize,
      'inet4-address': instance.inet4Address,
      'file-descriptor': instance.fileDescriptor,
    };

const _$StackEnumMap = {
  Stack.mixed: 'Mixed',
  Stack.gvisor: 'gVisor',
  Stack.system: 'System',
  Stack.lwip: 'Lwip',
};

_$TuicServerImpl _$$TuicServerImplFromJson(Map<String, dynamic> json) =>
    _$TuicServerImpl(
      enable: json['enable'] as bool?,
      listen: json['listen'] as String?,
      certificate: json['certificate'] as String?,
      privateKey: json['private-key'] as String?,
      muxOption: json['mux-option'] == null
          ? null
          : MuxOption.fromJson(json['mux-option'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TuicServerImplToJson(_$TuicServerImpl instance) =>
    <String, dynamic>{
      'enable': instance.enable,
      'listen': instance.listen,
      'certificate': instance.certificate,
      'private-key': instance.privateKey,
      'mux-option': instance.muxOption,
    };

_$MuxOptionImpl _$$MuxOptionImplFromJson(Map<String, dynamic> json) =>
    _$MuxOptionImpl(
      brutal: json['brutal'] == null
          ? null
          : Brutal.fromJson(json['brutal'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MuxOptionImplToJson(_$MuxOptionImpl instance) =>
    <String, dynamic>{
      'brutal': instance.brutal,
    };

_$BrutalImpl _$$BrutalImplFromJson(Map<String, dynamic> json) => _$BrutalImpl(
      enabled: json['enabled'] as bool?,
    );

Map<String, dynamic> _$$BrutalImplToJson(_$BrutalImpl instance) =>
    <String, dynamic>{
      'enabled': instance.enabled,
    };

_$GeoxUrlImpl _$$GeoxUrlImplFromJson(Map<String, dynamic> json) =>
    _$GeoxUrlImpl(
      geoip: json['geoip'] as String?,
      mmdb: json['mmdb'] as String?,
      asn: json['asn'] as String?,
      geosite: json['geosite'] as String?,
    );

Map<String, dynamic> _$$GeoxUrlImplToJson(_$GeoxUrlImpl instance) =>
    <String, dynamic>{
      'geoip': instance.geoip,
      'mmdb': instance.mmdb,
      'asn': instance.asn,
      'geosite': instance.geosite,
    };
