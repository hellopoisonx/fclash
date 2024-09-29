// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profiles.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfilesImpl _$$ProfilesImplFromJson(Map<String, dynamic> json) =>
    _$ProfilesImpl(
      all: (json['all'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, Profile.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$$ProfilesImplToJson(_$ProfilesImpl instance) =>
    <String, dynamic>{
      'all': instance.all,
    };
