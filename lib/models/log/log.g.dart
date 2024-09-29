// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'log.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LogImpl _$$LogImplFromJson(Map<String, dynamic> json) => _$LogImpl(
      type: $enumDecode(_$LogTypeEnumMap, json['type']),
      payload: json['payload'] as String,
      time: _timeFromJson(json['time']),
    );

Map<String, dynamic> _$$LogImplToJson(_$LogImpl instance) => <String, dynamic>{
      'type': _$LogTypeEnumMap[instance.type]!,
      'payload': instance.payload,
      'time': instance.time.toIso8601String(),
    };

const _$LogTypeEnumMap = {
  LogType.debug: 'debug',
  LogType.all: 'all',
  LogType.info: 'info',
  LogType.warning: 'warning',
  LogType.error: 'error',
  LogType.silent: 'silent',
};
