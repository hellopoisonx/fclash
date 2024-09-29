import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'typedef.g.dart';
part 'typedef.freezed.dart';

enum MessageType {
  log,
  currentTraffics,
  totalTraffics,
  memory,
  connections,
  clashStatus,
  unknown;
}

class DartMessage {
  final String data;
  final MessageType type;

  DartMessage({required this.data, required this.type});

  factory DartMessage.fromJson(Map<String, dynamic> json) {
    return DartMessage(
        data: json["data"] as String,
        type: MessageType.values.elementAt(json["messageType"]));
  }

  String toJson() {
    return jsonEncode({"data": data, "type": type.index});
  }
}

@freezed
sealed class Source with _$Source {
  const factory Source({required String name, required String source}) =
      _Source;

  factory Source.fromJson(Map<String, dynamic> json) => _$SourceFromJson(json);

  const factory Source.geoIP(
      {@Default("GeoIP.dat") String name,
      @Default(
          "https://github.com/MetaCubeX/meta-rules-dat/releases/download/latest/GeoIP.dat")
      String source}) = GeoIP;
  const factory Source.geoSite(
      {@Default("geosite.dat") String name,
      @Default(
          "https://github.com/MetaCubeX/meta-rules-dat/releases/download/latest/geosite.dat")
      String source}) = GeoSite;
  const factory Source.mmdb(
      {@Default("geoip.metadb") String name,
      @Default(
          "https://github.com/MetaCubeX/meta-rules-dat/releases/download/latest/geoip.metadb")
      String source}) = MMDB;
  const factory Source.asn(
      {@Default("GeoLite2-ASN.mmdb") String name,
      @Default(
          "https://github.com/MetaCubeX/meta-rules-dat/releases/download/latest/GeoLite2-ASN.mmdb")
      String source}) = ASN;
}

@freezed
class ExternalResource with _$ExternalResource {
  const ExternalResource._();
  factory ExternalResource({
    required Source source,
    DateTime? lastUpdated,
    bool? isValid,
    String? path,
  }) = _ExternalResource;

  factory ExternalResource.mmdb() {
    return ExternalResource(
      source: const Source.mmdb(),
    );
  }
  factory ExternalResource.geoIP() {
    return ExternalResource(
      source: const Source.geoIP(),
    );
  }
  factory ExternalResource.geoSite() {
    return ExternalResource(
      source: const Source.geoSite(),
    );
  }
  factory ExternalResource.asn() {
    return ExternalResource(
      source: const Source.asn(),
    );
  }

  factory ExternalResource.fromJson(Map<String, dynamic> json) =>
      _$ExternalResourceFromJson(json);
}
