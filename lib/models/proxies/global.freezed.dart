// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'global.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Global {
  SplayTreeMap<String, Selector> get selectors =>
      throw _privateConstructorUsedError;
  Map<String, Selectable> get p => throw _privateConstructorUsedError;

  /// Create a copy of Global
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GlobalCopyWith<Global> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GlobalCopyWith<$Res> {
  factory $GlobalCopyWith(Global value, $Res Function(Global) then) =
      _$GlobalCopyWithImpl<$Res, Global>;
  @useResult
  $Res call(
      {SplayTreeMap<String, Selector> selectors, Map<String, Selectable> p});
}

/// @nodoc
class _$GlobalCopyWithImpl<$Res, $Val extends Global>
    implements $GlobalCopyWith<$Res> {
  _$GlobalCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Global
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectors = null,
    Object? p = null,
  }) {
    return _then(_value.copyWith(
      selectors: null == selectors
          ? _value.selectors
          : selectors // ignore: cast_nullable_to_non_nullable
              as SplayTreeMap<String, Selector>,
      p: null == p
          ? _value.p
          : p // ignore: cast_nullable_to_non_nullable
              as Map<String, Selectable>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GlobalImplCopyWith<$Res> implements $GlobalCopyWith<$Res> {
  factory _$$GlobalImplCopyWith(
          _$GlobalImpl value, $Res Function(_$GlobalImpl) then) =
      __$$GlobalImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SplayTreeMap<String, Selector> selectors, Map<String, Selectable> p});
}

/// @nodoc
class __$$GlobalImplCopyWithImpl<$Res>
    extends _$GlobalCopyWithImpl<$Res, _$GlobalImpl>
    implements _$$GlobalImplCopyWith<$Res> {
  __$$GlobalImplCopyWithImpl(
      _$GlobalImpl _value, $Res Function(_$GlobalImpl) _then)
      : super(_value, _then);

  /// Create a copy of Global
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectors = null,
    Object? p = null,
  }) {
    return _then(_$GlobalImpl(
      selectors: null == selectors
          ? _value.selectors
          : selectors // ignore: cast_nullable_to_non_nullable
              as SplayTreeMap<String, Selector>,
      p: null == p
          ? _value._p
          : p // ignore: cast_nullable_to_non_nullable
              as Map<String, Selectable>,
    ));
  }
}

/// @nodoc

class _$GlobalImpl extends _Global {
  const _$GlobalImpl(
      {required this.selectors, required final Map<String, Selectable> p})
      : _p = p,
        super._();

  @override
  final SplayTreeMap<String, Selector> selectors;
  final Map<String, Selectable> _p;
  @override
  Map<String, Selectable> get p {
    if (_p is EqualUnmodifiableMapView) return _p;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_p);
  }

  @override
  String toString() {
    return 'Global(selectors: $selectors, p: $p)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GlobalImpl &&
            const DeepCollectionEquality().equals(other.selectors, selectors) &&
            const DeepCollectionEquality().equals(other._p, _p));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(selectors),
      const DeepCollectionEquality().hash(_p));

  /// Create a copy of Global
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GlobalImplCopyWith<_$GlobalImpl> get copyWith =>
      __$$GlobalImplCopyWithImpl<_$GlobalImpl>(this, _$identity);
}

abstract class _Global extends Global {
  const factory _Global(
      {required final SplayTreeMap<String, Selector> selectors,
      required final Map<String, Selectable> p}) = _$GlobalImpl;
  const _Global._() : super._();

  @override
  SplayTreeMap<String, Selector> get selectors;
  @override
  Map<String, Selectable> get p;

  /// Create a copy of Global
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GlobalImplCopyWith<_$GlobalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
