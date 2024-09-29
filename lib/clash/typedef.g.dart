// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'typedef.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SourceImpl _$$SourceImplFromJson(Map<String, dynamic> json) => _$SourceImpl(
      name: json['name'] as String,
      source: json['source'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$SourceImplToJson(_$SourceImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'source': instance.source,
      'runtimeType': instance.$type,
    };

_$GeoIPImpl _$$GeoIPImplFromJson(Map<String, dynamic> json) => _$GeoIPImpl(
      name: json['name'] as String? ?? "GeoIP.dat",
      source: json['source'] as String? ??
          "https://github.com/MetaCubeX/meta-rules-dat/releases/download/latest/GeoIP.dat",
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$GeoIPImplToJson(_$GeoIPImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'source': instance.source,
      'runtimeType': instance.$type,
    };

_$GeoSiteImpl _$$GeoSiteImplFromJson(Map<String, dynamic> json) =>
    _$GeoSiteImpl(
      name: json['name'] as String? ?? "geosite.dat",
      source: json['source'] as String? ??
          "https://github.com/MetaCubeX/meta-rules-dat/releases/download/latest/geosite.dat",
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$GeoSiteImplToJson(_$GeoSiteImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'source': instance.source,
      'runtimeType': instance.$type,
    };

_$MMDBImpl _$$MMDBImplFromJson(Map<String, dynamic> json) => _$MMDBImpl(
      name: json['name'] as String? ?? "geoip.metadb",
      source: json['source'] as String? ??
          "https://github.com/MetaCubeX/meta-rules-dat/releases/download/latest/geoip.metadb",
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$MMDBImplToJson(_$MMDBImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'source': instance.source,
      'runtimeType': instance.$type,
    };

_$ASNImpl _$$ASNImplFromJson(Map<String, dynamic> json) => _$ASNImpl(
      name: json['name'] as String? ?? "GeoLite2-ASN.mmdb",
      source: json['source'] as String? ??
          "https://github.com/MetaCubeX/meta-rules-dat/releases/download/latest/GeoLite2-ASN.mmdb",
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ASNImplToJson(_$ASNImpl instance) => <String, dynamic>{
      'name': instance.name,
      'source': instance.source,
      'runtimeType': instance.$type,
    };

_$ExternalResourceImpl _$$ExternalResourceImplFromJson(
        Map<String, dynamic> json) =>
    _$ExternalResourceImpl(
      source: Source.fromJson(json['source'] as Map<String, dynamic>),
      lastUpdated: json['lastUpdated'] == null
          ? null
          : DateTime.parse(json['lastUpdated'] as String),
      isValid: json['isValid'] as bool?,
      path: json['path'] as String?,
    );

Map<String, dynamic> _$$ExternalResourceImplToJson(
        _$ExternalResourceImpl instance) =>
    <String, dynamic>{
      'source': instance.source,
      'lastUpdated': instance.lastUpdated?.toIso8601String(),
      'isValid': instance.isValid,
      'path': instance.path,
    };
