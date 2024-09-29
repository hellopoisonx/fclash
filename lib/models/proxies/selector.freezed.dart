// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'selector.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Selector _$SelectorFromJson(Map<String, dynamic> json) {
  return _Selector.fromJson(json);
}

/// @nodoc
mixin _$Selector {
  String get name => throw _privateConstructorUsedError;
  String get now => throw _privateConstructorUsedError;
  List<String> get all => throw _privateConstructorUsedError;
  List<History> get history => throw _privateConstructorUsedError;
  ProxyType get type => throw _privateConstructorUsedError;

  /// Serializes this Selector to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Selector
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SelectorCopyWith<Selector> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectorCopyWith<$Res> {
  factory $SelectorCopyWith(Selector value, $Res Function(Selector) then) =
      _$SelectorCopyWithImpl<$Res, Selector>;
  @useResult
  $Res call(
      {String name,
      String now,
      List<String> all,
      List<History> history,
      ProxyType type});
}

/// @nodoc
class _$SelectorCopyWithImpl<$Res, $Val extends Selector>
    implements $SelectorCopyWith<$Res> {
  _$SelectorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Selector
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? now = null,
    Object? all = null,
    Object? history = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      now: null == now
          ? _value.now
          : now // ignore: cast_nullable_to_non_nullable
              as String,
      all: null == all
          ? _value.all
          : all // ignore: cast_nullable_to_non_nullable
              as List<String>,
      history: null == history
          ? _value.history
          : history // ignore: cast_nullable_to_non_nullable
              as List<History>,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ProxyType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SelectorImplCopyWith<$Res>
    implements $SelectorCopyWith<$Res> {
  factory _$$SelectorImplCopyWith(
          _$SelectorImpl value, $Res Function(_$SelectorImpl) then) =
      __$$SelectorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String now,
      List<String> all,
      List<History> history,
      ProxyType type});
}

/// @nodoc
class __$$SelectorImplCopyWithImpl<$Res>
    extends _$SelectorCopyWithImpl<$Res, _$SelectorImpl>
    implements _$$SelectorImplCopyWith<$Res> {
  __$$SelectorImplCopyWithImpl(
      _$SelectorImpl _value, $Res Function(_$SelectorImpl) _then)
      : super(_value, _then);

  /// Create a copy of Selector
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? now = null,
    Object? all = null,
    Object? history = null,
    Object? type = null,
  }) {
    return _then(_$SelectorImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      now: null == now
          ? _value.now
          : now // ignore: cast_nullable_to_non_nullable
              as String,
      all: null == all
          ? _value._all
          : all // ignore: cast_nullable_to_non_nullable
              as List<String>,
      history: null == history
          ? _value._history
          : history // ignore: cast_nullable_to_non_nullable
              as List<History>,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ProxyType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SelectorImpl extends _Selector with DiagnosticableTreeMixin {
  const _$SelectorImpl(
      {required this.name,
      required this.now,
      required final List<String> all,
      required final List<History> history,
      required this.type})
      : _all = all,
        _history = history,
        super._();

  factory _$SelectorImpl.fromJson(Map<String, dynamic> json) =>
      _$$SelectorImplFromJson(json);

  @override
  final String name;
  @override
  final String now;
  final List<String> _all;
  @override
  List<String> get all {
    if (_all is EqualUnmodifiableListView) return _all;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_all);
  }

  final List<History> _history;
  @override
  List<History> get history {
    if (_history is EqualUnmodifiableListView) return _history;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_history);
  }

  @override
  final ProxyType type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Selector(name: $name, now: $now, all: $all, history: $history, type: $type)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Selector'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('now', now))
      ..add(DiagnosticsProperty('all', all))
      ..add(DiagnosticsProperty('history', history))
      ..add(DiagnosticsProperty('type', type));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectorImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.now, now) || other.now == now) &&
            const DeepCollectionEquality().equals(other._all, _all) &&
            const DeepCollectionEquality().equals(other._history, _history) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      now,
      const DeepCollectionEquality().hash(_all),
      const DeepCollectionEquality().hash(_history),
      type);

  /// Create a copy of Selector
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectorImplCopyWith<_$SelectorImpl> get copyWith =>
      __$$SelectorImplCopyWithImpl<_$SelectorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SelectorImplToJson(
      this,
    );
  }
}

abstract class _Selector extends Selector {
  const factory _Selector(
      {required final String name,
      required final String now,
      required final List<String> all,
      required final List<History> history,
      required final ProxyType type}) = _$SelectorImpl;
  const _Selector._() : super._();

  factory _Selector.fromJson(Map<String, dynamic> json) =
      _$SelectorImpl.fromJson;

  @override
  String get name;
  @override
  String get now;
  @override
  List<String> get all;
  @override
  List<History> get history;
  @override
  ProxyType get type;

  /// Create a copy of Selector
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectorImplCopyWith<_$SelectorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
