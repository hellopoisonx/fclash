// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pp.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PP {
  Map<String, Selector> get selectors => throw _privateConstructorUsedError;
  Selector get global => throw _privateConstructorUsedError;
  Map<String, Selectable> get all => throw _privateConstructorUsedError;

  /// Create a copy of PP
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PPCopyWith<PP> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PPCopyWith<$Res> {
  factory $PPCopyWith(PP value, $Res Function(PP) then) =
      _$PPCopyWithImpl<$Res, PP>;
  @useResult
  $Res call(
      {Map<String, Selector> selectors,
      Selector global,
      Map<String, Selectable> all});

  $SelectorCopyWith<$Res> get global;
}

/// @nodoc
class _$PPCopyWithImpl<$Res, $Val extends PP> implements $PPCopyWith<$Res> {
  _$PPCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PP
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectors = null,
    Object? global = null,
    Object? all = null,
  }) {
    return _then(_value.copyWith(
      selectors: null == selectors
          ? _value.selectors
          : selectors // ignore: cast_nullable_to_non_nullable
              as Map<String, Selector>,
      global: null == global
          ? _value.global
          : global // ignore: cast_nullable_to_non_nullable
              as Selector,
      all: null == all
          ? _value.all
          : all // ignore: cast_nullable_to_non_nullable
              as Map<String, Selectable>,
    ) as $Val);
  }

  /// Create a copy of PP
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SelectorCopyWith<$Res> get global {
    return $SelectorCopyWith<$Res>(_value.global, (value) {
      return _then(_value.copyWith(global: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PPImplCopyWith<$Res> implements $PPCopyWith<$Res> {
  factory _$$PPImplCopyWith(_$PPImpl value, $Res Function(_$PPImpl) then) =
      __$$PPImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<String, Selector> selectors,
      Selector global,
      Map<String, Selectable> all});

  @override
  $SelectorCopyWith<$Res> get global;
}

/// @nodoc
class __$$PPImplCopyWithImpl<$Res> extends _$PPCopyWithImpl<$Res, _$PPImpl>
    implements _$$PPImplCopyWith<$Res> {
  __$$PPImplCopyWithImpl(_$PPImpl _value, $Res Function(_$PPImpl) _then)
      : super(_value, _then);

  /// Create a copy of PP
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectors = null,
    Object? global = null,
    Object? all = null,
  }) {
    return _then(_$PPImpl(
      selectors: null == selectors
          ? _value._selectors
          : selectors // ignore: cast_nullable_to_non_nullable
              as Map<String, Selector>,
      global: null == global
          ? _value.global
          : global // ignore: cast_nullable_to_non_nullable
              as Selector,
      all: null == all
          ? _value._all
          : all // ignore: cast_nullable_to_non_nullable
              as Map<String, Selectable>,
    ));
  }
}

/// @nodoc

class _$PPImpl extends _PP {
  const _$PPImpl(
      {required final Map<String, Selector> selectors,
      required this.global,
      required final Map<String, Selectable> all})
      : _selectors = selectors,
        _all = all,
        super._();

  final Map<String, Selector> _selectors;
  @override
  Map<String, Selector> get selectors {
    if (_selectors is EqualUnmodifiableMapView) return _selectors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_selectors);
  }

  @override
  final Selector global;
  final Map<String, Selectable> _all;
  @override
  Map<String, Selectable> get all {
    if (_all is EqualUnmodifiableMapView) return _all;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_all);
  }

  @override
  String toString() {
    return 'PP(selectors: $selectors, global: $global, all: $all)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PPImpl &&
            const DeepCollectionEquality()
                .equals(other._selectors, _selectors) &&
            (identical(other.global, global) || other.global == global) &&
            const DeepCollectionEquality().equals(other._all, _all));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_selectors),
      global,
      const DeepCollectionEquality().hash(_all));

  /// Create a copy of PP
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PPImplCopyWith<_$PPImpl> get copyWith =>
      __$$PPImplCopyWithImpl<_$PPImpl>(this, _$identity);
}

abstract class _PP extends PP {
  const factory _PP(
      {required final Map<String, Selector> selectors,
      required final Selector global,
      required final Map<String, Selectable> all}) = _$PPImpl;
  const _PP._() : super._();

  @override
  Map<String, Selector> get selectors;
  @override
  Selector get global;
  @override
  Map<String, Selectable> get all;

  /// Create a copy of PP
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PPImplCopyWith<_$PPImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
