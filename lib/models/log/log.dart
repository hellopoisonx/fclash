import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fclash/models/log/type.dart';

export 'package:fclash/models/log/type.dart';

part 'log.g.dart';
part 'log.freezed.dart';

@freezed
class Log with _$Log {
  const Log._();
  const factory Log({
    required LogType type,
    required String payload,
    @JsonKey(fromJson: _timeFromJson) required DateTime time,
  }) = _Log;

  factory Log.fromJson(Map<String, dynamic> json) => _$LogFromJson(json);
}

DateTime _timeFromJson(_) => DateTime.now();
