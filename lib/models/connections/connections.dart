// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'connections.freezed.dart';
part 'connections.g.dart';

@freezed
class Connections with _$Connections {
  const factory Connections({
    @JsonKey(name: 'downloadTotal') required int downloadTotal,
    @JsonKey(name: 'uploadTotal') required int uploadTotal,
    @JsonKey(name: 'connections') @Default([]) List<Connection> connections,
    @JsonKey(name: 'memory') required int memory,
  }) = _Connections;

  factory Connections.fromJson(Map<String, Object?> json) =>
      _$ConnectionsFromJson(json);
}

@freezed
class Connection with _$Connection {
  const factory Connection({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'metadata') required Metadata metadata,
    @JsonKey(name: 'upload') required int upload,
    @JsonKey(name: 'download') required int download,
    @JsonKey(name: 'start') required DateTime start,
    @JsonKey(name: 'chains') required List<String> chains,
    @JsonKey(name: 'rule') required String rule,
    @JsonKey(name: 'rulePayload') required String rulePayload,
  }) = _Connection;

  factory Connection.fromJson(Map<String, Object?> json) =>
      _$ConnectionFromJson(json);
}

@freezed
class Metadata with _$Metadata {
  const factory Metadata({
    @JsonKey(name: 'network') required String network,
    @JsonKey(name: 'type') required String type,
    @JsonKey(name: 'sourceIP') required String sourceIP,
    @JsonKey(name: 'destinationIP') required String destinationIP,
    @JsonKey(name: 'sourcePort') required String sourcePort,
    @JsonKey(name: 'destinationPort') required String destinationPort,
    @JsonKey(name: 'inboundIP') required String inboundIP,
    @JsonKey(name: 'inboundPort') required String inboundPort,
    @JsonKey(name: 'inboundName') required String inboundName,
    @JsonKey(name: 'inboundUser') required String inboundUser,
    @JsonKey(name: 'host') required String host,
    @JsonKey(name: 'dnsMode') required String dnsMode,
    @JsonKey(name: 'uid') required int uid,
    @JsonKey(name: 'process') required String process,
    @JsonKey(name: 'processPath') required String processPath,
    @JsonKey(name: 'specialProxy') required String specialProxy,
    @JsonKey(name: 'specialRules') required String specialRules,
    @JsonKey(name: 'remoteDestination') required String remoteDestination,
    @JsonKey(name: 'sniffHost') required String sniffHost,
  }) = _Metadata;

  factory Metadata.fromJson(Map<String, Object?> json) =>
      _$MetadataFromJson(json);
}
