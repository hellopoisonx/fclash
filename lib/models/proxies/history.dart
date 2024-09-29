import 'package:freezed_annotation/freezed_annotation.dart';

part 'history.g.dart';
part 'history.freezed.dart';

@freezed
class History with _$History {
  const factory History({required DateTime time, required int delay}) =
      _History;

  factory History.fromJson(Map<String, dynamic> json) =>
      _$HistoryFromJson(json);
}
