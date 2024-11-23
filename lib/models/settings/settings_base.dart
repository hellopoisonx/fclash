import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_base.freezed.dart';

@Freezed(copyWith: false)
interface class SettingsBase with _$SettingsBase {
  const factory SettingsBase({
    required final String homeDir,
  }) = _SettingsBase;
}
