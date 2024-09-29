import 'package:fclash/models/profiles/profile.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profiles.g.dart';
part 'profiles.freezed.dart';

@Freezed(toJson: true, fromJson: true, equal: true, copyWith: true)
class Profiles with _$Profiles {
  const Profiles._();
  const factory Profiles({
    required Map<String, Profile> all,
  }) = _Profiles;

  factory Profiles.fromJson(Map<String, dynamic> json) =>
      _$ProfilesFromJson(json);
}
