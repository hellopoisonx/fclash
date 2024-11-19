// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rule.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Rule {
  Map<String, Selectable> get p => throw _privateConstructorUsedError;
  SplayTreeMap<String, Selector> get selectors =>
      throw _privateConstructorUsedError;

  /// Create a copy of Rule
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RuleCopyWith<Rule> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RuleCopyWith<$Res> {
  factory $RuleCopyWith(Rule value, $Res Function(Rule) then) =
      _$RuleCopyWithImpl<$Res, Rule>;
  @useResult
  $Res call(
      {Map<String, Selectable> p, SplayTreeMap<String, Selector> selectors});
}

/// @nodoc
class _$RuleCopyWithImpl<$Res, $Val extends Rule>
    implements $RuleCopyWith<$Res> {
  _$RuleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Rule
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? p = null,
    Object? selectors = null,
  }) {
    return _then(_value.copyWith(
      p: null == p
          ? _value.p
          : p // ignore: cast_nullable_to_non_nullable
              as Map<String, Selectable>,
      selectors: null == selectors
          ? _value.selectors
          : selectors // ignore: cast_nullable_to_non_nullable
              as SplayTreeMap<String, Selector>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RuleImplCopyWith<$Res> implements $RuleCopyWith<$Res> {
  factory _$$RuleImplCopyWith(
          _$RuleImpl value, $Res Function(_$RuleImpl) then) =
      __$$RuleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<String, Selectable> p, SplayTreeMap<String, Selector> selectors});
}

/// @nodoc
class __$$RuleImplCopyWithImpl<$Res>
    extends _$RuleCopyWithImpl<$Res, _$RuleImpl>
    implements _$$RuleImplCopyWith<$Res> {
  __$$RuleImplCopyWithImpl(_$RuleImpl _value, $Res Function(_$RuleImpl) _then)
      : super(_value, _then);

  /// Create a copy of Rule
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? p = null,
    Object? selectors = null,
  }) {
    return _then(_$RuleImpl(
      p: null == p
          ? _value._p
          : p // ignore: cast_nullable_to_non_nullable
              as Map<String, Selectable>,
      selectors: null == selectors
          ? _value.selectors
          : selectors // ignore: cast_nullable_to_non_nullable
              as SplayTreeMap<String, Selector>,
    ));
  }
}

/// @nodoc

class _$RuleImpl extends _Rule {
  const _$RuleImpl(
      {required final Map<String, Selectable> p, required this.selectors})
      : _p = p,
        super._();

  final Map<String, Selectable> _p;
  @override
  Map<String, Selectable> get p {
    if (_p is EqualUnmodifiableMapView) return _p;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_p);
  }

  @override
  final SplayTreeMap<String, Selector> selectors;

  @override
  String toString() {
    return 'Rule(p: $p, selectors: $selectors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RuleImpl &&
            const DeepCollectionEquality().equals(other._p, _p) &&
            const DeepCollectionEquality().equals(other.selectors, selectors));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_p),
      const DeepCollectionEquality().hash(selectors));

  /// Create a copy of Rule
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RuleImplCopyWith<_$RuleImpl> get copyWith =>
      __$$RuleImplCopyWithImpl<_$RuleImpl>(this, _$identity);
}

abstract class _Rule extends Rule {
  const factory _Rule(
      {required final Map<String, Selectable> p,
      required final SplayTreeMap<String, Selector> selectors}) = _$RuleImpl;
  const _Rule._() : super._();

  @override
  Map<String, Selectable> get p;
  @override
  SplayTreeMap<String, Selector> get selectors;

  /// Create a copy of Rule
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RuleImplCopyWith<_$RuleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
