// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'node.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NodeImpl _$$NodeImplFromJson(Map<String, dynamic> json) => _$NodeImpl(
      name: json['name'] as String,
      history: (json['history'] as List<dynamic>)
          .map((e) => History.fromJson(e as Map<String, dynamic>))
          .toList(),
      type: $enumDecode(_$ProxyTypeEnumMap, json['type']),
      udp: json['udp'] as bool,
    );

Map<String, dynamic> _$$NodeImplToJson(_$NodeImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'history': instance.history,
      'type': _$ProxyTypeEnumMap[instance.type]!,
      'udp': instance.udp,
    };

const _$ProxyTypeEnumMap = {
  ProxyType.Pass: 'Pass',
  ProxyType.Reject: 'Reject',
  ProxyType.RejectDrop: 'RejectDrop',
  ProxyType.Selector: 'Selector',
  ProxyType.URLTest: 'URLTest',
  ProxyType.Direct: 'Direct',
  ProxyType.Compatible: 'Compatible',
  ProxyType.Vless: 'Vless',
  ProxyType.Hysteria2: 'Hysteria2',
  ProxyType.Vmess: 'Vmess',
  ProxyType.ShadowsocksR: 'ShadowsocksR',
  ProxyType.Shadowsocks: 'Shadowsocks',
  ProxyType.Trojan: 'Trojan',
};
