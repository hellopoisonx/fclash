// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'proxy.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Proxy {
  SplayTreeMap<String, Selector> get selectors =>
      throw _privateConstructorUsedError;
  Map<String, Selectable> get p => throw _privateConstructorUsedError;
}

/// @nodoc

class _$ProxyImpl implements _Proxy {
  const _$ProxyImpl(
      {required this.selectors, required final Map<String, Selectable> p})
      : _p = p;

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
    return 'Proxy(selectors: $selectors, p: $p)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProxyImpl &&
            const DeepCollectionEquality().equals(other.selectors, selectors) &&
            const DeepCollectionEquality().equals(other._p, _p));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(selectors),
      const DeepCollectionEquality().hash(_p));
}

abstract class _Proxy implements Proxy {
  const factory _Proxy(
      {required final SplayTreeMap<String, Selector> selectors,
      required final Map<String, Selectable> p}) = _$ProxyImpl;

  @override
  SplayTreeMap<String, Selector> get selectors;
  @override
  Map<String, Selectable> get p;
}
