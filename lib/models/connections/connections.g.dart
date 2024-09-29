// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'connections.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConnectionsImpl _$$ConnectionsImplFromJson(Map<String, dynamic> json) =>
    _$ConnectionsImpl(
      downloadTotal: (json['downloadTotal'] as num).toInt(),
      uploadTotal: (json['uploadTotal'] as num).toInt(),
      connections: (json['connections'] as List<dynamic>?)
              ?.map((e) => Connection.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      memory: (json['memory'] as num).toInt(),
    );

Map<String, dynamic> _$$ConnectionsImplToJson(_$ConnectionsImpl instance) =>
    <String, dynamic>{
      'downloadTotal': instance.downloadTotal,
      'uploadTotal': instance.uploadTotal,
      'connections': instance.connections,
      'memory': instance.memory,
    };

_$ConnectionImpl _$$ConnectionImplFromJson(Map<String, dynamic> json) =>
    _$ConnectionImpl(
      id: json['id'] as String,
      metadata: Metadata.fromJson(json['metadata'] as Map<String, dynamic>),
      upload: (json['upload'] as num).toInt(),
      download: (json['download'] as num).toInt(),
      start: DateTime.parse(json['start'] as String),
      chains:
          (json['chains'] as List<dynamic>).map((e) => e as String).toList(),
      rule: json['rule'] as String,
      rulePayload: json['rulePayload'] as String,
    );

Map<String, dynamic> _$$ConnectionImplToJson(_$ConnectionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'metadata': instance.metadata,
      'upload': instance.upload,
      'download': instance.download,
      'start': instance.start.toIso8601String(),
      'chains': instance.chains,
      'rule': instance.rule,
      'rulePayload': instance.rulePayload,
    };

_$MetadataImpl _$$MetadataImplFromJson(Map<String, dynamic> json) =>
    _$MetadataImpl(
      network: json['network'] as String,
      type: json['type'] as String,
      sourceIP: json['sourceIP'] as String,
      destinationIP: json['destinationIP'] as String,
      sourcePort: json['sourcePort'] as String,
      destinationPort: json['destinationPort'] as String,
      inboundIP: json['inboundIP'] as String,
      inboundPort: json['inboundPort'] as String,
      inboundName: json['inboundName'] as String,
      inboundUser: json['inboundUser'] as String,
      host: json['host'] as String,
      dnsMode: json['dnsMode'] as String,
      uid: (json['uid'] as num).toInt(),
      process: json['process'] as String,
      processPath: json['processPath'] as String,
      specialProxy: json['specialProxy'] as String,
      specialRules: json['specialRules'] as String,
      remoteDestination: json['remoteDestination'] as String,
      sniffHost: json['sniffHost'] as String,
    );

Map<String, dynamic> _$$MetadataImplToJson(_$MetadataImpl instance) =>
    <String, dynamic>{
      'network': instance.network,
      'type': instance.type,
      'sourceIP': instance.sourceIP,
      'destinationIP': instance.destinationIP,
      'sourcePort': instance.sourcePort,
      'destinationPort': instance.destinationPort,
      'inboundIP': instance.inboundIP,
      'inboundPort': instance.inboundPort,
      'inboundName': instance.inboundName,
      'inboundUser': instance.inboundUser,
      'host': instance.host,
      'dnsMode': instance.dnsMode,
      'uid': instance.uid,
      'process': instance.process,
      'processPath': instance.processPath,
      'specialProxy': instance.specialProxy,
      'specialRules': instance.specialRules,
      'remoteDestination': instance.remoteDestination,
      'sniffHost': instance.sniffHost,
    };
