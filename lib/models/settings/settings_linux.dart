import './settings_base.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_linux.freezed.dart';
part 'settings_linux.g.dart';

@freezed
class SettingsLinux with _$SettingsLinux implements SettingsBase {
  const factory SettingsLinux({
    required final String homeDir,
    required final bool privilaged,
  }) = _SettingsLinux;

  factory SettingsLinux.fromJson(Map<String, dynamic> json) =>
      _$SettingsLinuxFromJson(json);
}
