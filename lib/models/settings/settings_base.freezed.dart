// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_base.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SettingsBase {
  String get homeDir => throw _privateConstructorUsedError;
}

/// @nodoc

class _$SettingsBaseImpl implements _SettingsBase {
  const _$SettingsBaseImpl({required this.homeDir});

  @override
  final String homeDir;

  @override
  String toString() {
    return 'SettingsBase(homeDir: $homeDir)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsBaseImpl &&
            (identical(other.homeDir, homeDir) || other.homeDir == homeDir));
  }

  @override
  int get hashCode => Object.hash(runtimeType, homeDir);
}

abstract class _SettingsBase implements SettingsBase {
  const factory _SettingsBase({required final String homeDir}) =
      _$SettingsBaseImpl;

  @override
  String get homeDir;
}
