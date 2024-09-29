// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profiles.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Profiles _$ProfilesFromJson(Map<String, dynamic> json) {
  return _Profiles.fromJson(json);
}

/// @nodoc
mixin _$Profiles {
  Map<String, Profile> get all => throw _privateConstructorUsedError;

  /// Serializes this Profiles to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Profiles
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfilesCopyWith<Profiles> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfilesCopyWith<$Res> {
  factory $ProfilesCopyWith(Profiles value, $Res Function(Profiles) then) =
      _$ProfilesCopyWithImpl<$Res, Profiles>;
  @useResult
  $Res call({Map<String, Profile> all});
}

/// @nodoc
class _$ProfilesCopyWithImpl<$Res, $Val extends Profiles>
    implements $ProfilesCopyWith<$Res> {
  _$ProfilesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Profiles
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? all = null,
  }) {
    return _then(_value.copyWith(
      all: null == all
          ? _value.all
          : all // ignore: cast_nullable_to_non_nullable
              as Map<String, Profile>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfilesImplCopyWith<$Res>
    implements $ProfilesCopyWith<$Res> {
  factory _$$ProfilesImplCopyWith(
          _$ProfilesImpl value, $Res Function(_$ProfilesImpl) then) =
      __$$ProfilesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, Profile> all});
}

/// @nodoc
class __$$ProfilesImplCopyWithImpl<$Res>
    extends _$ProfilesCopyWithImpl<$Res, _$ProfilesImpl>
    implements _$$ProfilesImplCopyWith<$Res> {
  __$$ProfilesImplCopyWithImpl(
      _$ProfilesImpl _value, $Res Function(_$ProfilesImpl) _then)
      : super(_value, _then);

  /// Create a copy of Profiles
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? all = null,
  }) {
    return _then(_$ProfilesImpl(
      all: null == all
          ? _value._all
          : all // ignore: cast_nullable_to_non_nullable
              as Map<String, Profile>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfilesImpl extends _Profiles with DiagnosticableTreeMixin {
  const _$ProfilesImpl({required final Map<String, Profile> all})
      : _all = all,
        super._();

  factory _$ProfilesImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfilesImplFromJson(json);

  final Map<String, Profile> _all;
  @override
  Map<String, Profile> get all {
    if (_all is EqualUnmodifiableMapView) return _all;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_all);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Profiles(all: $all)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Profiles'))
      ..add(DiagnosticsProperty('all', all));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfilesImpl &&
            const DeepCollectionEquality().equals(other._all, _all));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_all));

  /// Create a copy of Profiles
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfilesImplCopyWith<_$ProfilesImpl> get copyWith =>
      __$$ProfilesImplCopyWithImpl<_$ProfilesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfilesImplToJson(
      this,
    );
  }
}

abstract class _Profiles extends Profiles {
  const factory _Profiles({required final Map<String, Profile> all}) =
      _$ProfilesImpl;
  const _Profiles._() : super._();

  factory _Profiles.fromJson(Map<String, dynamic> json) =
      _$ProfilesImpl.fromJson;

  @override
  Map<String, Profile> get all;

  /// Create a copy of Profiles
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfilesImplCopyWith<_$ProfilesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
