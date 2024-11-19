// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileImpl _$$ProfileImplFromJson(Map<String, dynamic> json) =>
    _$ProfileImpl(
      name: json['name'] as String,
      path: Uri.parse(json['path'] as String),
      totalTraffic: (json['totalTraffic'] as num?)?.toInt(),
      uploadTraffic: (json['uploadTraffic'] as num?)?.toInt(),
      downloadTraffic: (json['downloadTraffic'] as num?)?.toInt(),
      url: json['url'] == null ? null : Uri.parse(json['url'] as String),
      expirationTime: json['expirationTime'] == null
          ? null
          : DateTime.parse(json['expirationTime'] as String),
    );

Map<String, dynamic> _$$ProfileImplToJson(_$ProfileImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'path': instance.path.toString(),
      'totalTraffic': instance.totalTraffic,
      'uploadTraffic': instance.uploadTraffic,
      'downloadTraffic': instance.downloadTraffic,
      'url': instance.url?.toString(),
      'expirationTime': instance.expirationTime?.toIso8601String(),
    };
