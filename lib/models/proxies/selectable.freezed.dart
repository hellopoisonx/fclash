// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'selectable.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Selectable {
  String get name => throw _privateConstructorUsedError;
  List<History> get history => throw _privateConstructorUsedError;
  ProxyType get type => throw _privateConstructorUsedError;
  int? get delay => throw _privateConstructorUsedError;
}

/// @nodoc

class _$SelectableImpl implements _Selectable {
  const _$SelectableImpl(
      {required this.name,
      required final List<History> history,
      required this.type,
      required this.delay})
      : _history = history;

  @override
  final String name;
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
  final int? delay;

  @override
  String toString() {
    return 'Selectable(name: $name, history: $history, type: $type, delay: $delay)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectableImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._history, _history) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.delay, delay) || other.delay == delay));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name,
      const DeepCollectionEquality().hash(_history), type, delay);
}

abstract class _Selectable implements Selectable {
  const factory _Selectable(
      {required final String name,
      required final List<History> history,
      required final ProxyType type,
      required final int? delay}) = _$SelectableImpl;

  @override
  String get name;
  @override
  List<History> get history;
  @override
  ProxyType get type;
  @override
  int? get delay;
}
