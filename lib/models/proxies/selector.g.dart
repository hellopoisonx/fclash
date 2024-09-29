// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'selector.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SelectorImpl _$$SelectorImplFromJson(Map<String, dynamic> json) =>
    _$SelectorImpl(
      name: json['name'] as String,
      now: json['now'] as String,
      all: (json['all'] as List<dynamic>).map((e) => e as String).toList(),
      history: (json['history'] as List<dynamic>)
          .map((e) => History.fromJson(e as Map<String, dynamic>))
          .toList(),
      type: $enumDecode(_$ProxyTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$$SelectorImplToJson(_$SelectorImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'now': instance.now,
      'all': instance.all,
      'history': instance.history,
      'type': _$ProxyTypeEnumMap[instance.type]!,
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
