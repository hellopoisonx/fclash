import 'dart:convert';

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
