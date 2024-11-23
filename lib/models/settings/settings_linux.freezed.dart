// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_linux.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SettingsLinux _$SettingsLinuxFromJson(Map<String, dynamic> json) {
  return _SettingsLinux.fromJson(json);
}

/// @nodoc
mixin _$SettingsLinux {
  String get homeDir => throw _privateConstructorUsedError;
  bool get privilaged => throw _privateConstructorUsedError;

  /// Serializes this SettingsLinux to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SettingsLinux
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SettingsLinuxCopyWith<SettingsLinux> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsLinuxCopyWith<$Res> {
  factory $SettingsLinuxCopyWith(
          SettingsLinux value, $Res Function(SettingsLinux) then) =
      _$SettingsLinuxCopyWithImpl<$Res, SettingsLinux>;
  @useResult
  $Res call({String homeDir, bool privilaged});
}

/// @nodoc
class _$SettingsLinuxCopyWithImpl<$Res, $Val extends SettingsLinux>
    implements $SettingsLinuxCopyWith<$Res> {
  _$SettingsLinuxCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SettingsLinux
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? homeDir = null,
    Object? privilaged = null,
  }) {
    return _then(_value.copyWith(
      homeDir: null == homeDir
          ? _value.homeDir
          : homeDir // ignore: cast_nullable_to_non_nullable
              as String,
      privilaged: null == privilaged
          ? _value.privilaged
          : privilaged // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SettingsLinuxImplCopyWith<$Res>
    implements $SettingsLinuxCopyWith<$Res> {
  factory _$$SettingsLinuxImplCopyWith(
          _$SettingsLinuxImpl value, $Res Function(_$SettingsLinuxImpl) then) =
      __$$SettingsLinuxImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String homeDir, bool privilaged});
}

/// @nodoc
class __$$SettingsLinuxImplCopyWithImpl<$Res>
    extends _$SettingsLinuxCopyWithImpl<$Res, _$SettingsLinuxImpl>
    implements _$$SettingsLinuxImplCopyWith<$Res> {
  __$$SettingsLinuxImplCopyWithImpl(
      _$SettingsLinuxImpl _value, $Res Function(_$SettingsLinuxImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettingsLinux
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? homeDir = null,
    Object? privilaged = null,
  }) {
    return _then(_$SettingsLinuxImpl(
      homeDir: null == homeDir
          ? _value.homeDir
          : homeDir // ignore: cast_nullable_to_non_nullable
              as String,
      privilaged: null == privilaged
          ? _value.privilaged
          : privilaged // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SettingsLinuxImpl implements _SettingsLinux {
  const _$SettingsLinuxImpl({required this.homeDir, required this.privilaged});

  factory _$SettingsLinuxImpl.fromJson(Map<String, dynamic> json) =>
      _$$SettingsLinuxImplFromJson(json);

  @override
  final String homeDir;
  @override
  final bool privilaged;

  @override
  String toString() {
    return 'SettingsLinux(homeDir: $homeDir, privilaged: $privilaged)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsLinuxImpl &&
            (identical(other.homeDir, homeDir) || other.homeDir == homeDir) &&
            (identical(other.privilaged, privilaged) ||
                other.privilaged == privilaged));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, homeDir, privilaged);

  /// Create a copy of SettingsLinux
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsLinuxImplCopyWith<_$SettingsLinuxImpl> get copyWith =>
      __$$SettingsLinuxImplCopyWithImpl<_$SettingsLinuxImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SettingsLinuxImplToJson(
      this,
    );
  }
}

abstract class _SettingsLinux implements SettingsLinux {
  const factory _SettingsLinux(
      {required final String homeDir,
      required final bool privilaged}) = _$SettingsLinuxImpl;

  factory _SettingsLinux.fromJson(Map<String, dynamic> json) =
      _$SettingsLinuxImpl.fromJson;

  @override
  String get homeDir;
  @override
  bool get privilaged;

  /// Create a copy of SettingsLinux
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SettingsLinuxImplCopyWith<_$SettingsLinuxImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
