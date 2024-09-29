// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'typedef.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Source _$SourceFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'default':
      return _Source.fromJson(json);
    case 'geoIP':
      return GeoIP.fromJson(json);
    case 'geoSite':
      return GeoSite.fromJson(json);
    case 'mmdb':
      return MMDB.fromJson(json);
    case 'asn':
      return ASN.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'Source',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$Source {
  String get name => throw _privateConstructorUsedError;
  String get source => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String name, String source) $default, {
    required TResult Function(String name, String source) geoIP,
    required TResult Function(String name, String source) geoSite,
    required TResult Function(String name, String source) mmdb,
    required TResult Function(String name, String source) asn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String name, String source)? $default, {
    TResult? Function(String name, String source)? geoIP,
    TResult? Function(String name, String source)? geoSite,
    TResult? Function(String name, String source)? mmdb,
    TResult? Function(String name, String source)? asn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String name, String source)? $default, {
    TResult Function(String name, String source)? geoIP,
    TResult Function(String name, String source)? geoSite,
    TResult Function(String name, String source)? mmdb,
    TResult Function(String name, String source)? asn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Source value) $default, {
    required TResult Function(GeoIP value) geoIP,
    required TResult Function(GeoSite value) geoSite,
    required TResult Function(MMDB value) mmdb,
    required TResult Function(ASN value) asn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Source value)? $default, {
    TResult? Function(GeoIP value)? geoIP,
    TResult? Function(GeoSite value)? geoSite,
    TResult? Function(MMDB value)? mmdb,
    TResult? Function(ASN value)? asn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Source value)? $default, {
    TResult Function(GeoIP value)? geoIP,
    TResult Function(GeoSite value)? geoSite,
    TResult Function(MMDB value)? mmdb,
    TResult Function(ASN value)? asn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this Source to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Source
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SourceCopyWith<Source> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SourceCopyWith<$Res> {
  factory $SourceCopyWith(Source value, $Res Function(Source) then) =
      _$SourceCopyWithImpl<$Res, Source>;
  @useResult
  $Res call({String name, String source});
}

/// @nodoc
class _$SourceCopyWithImpl<$Res, $Val extends Source>
    implements $SourceCopyWith<$Res> {
  _$SourceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Source
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? source = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SourceImplCopyWith<$Res> implements $SourceCopyWith<$Res> {
  factory _$$SourceImplCopyWith(
          _$SourceImpl value, $Res Function(_$SourceImpl) then) =
      __$$SourceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String source});
}

/// @nodoc
class __$$SourceImplCopyWithImpl<$Res>
    extends _$SourceCopyWithImpl<$Res, _$SourceImpl>
    implements _$$SourceImplCopyWith<$Res> {
  __$$SourceImplCopyWithImpl(
      _$SourceImpl _value, $Res Function(_$SourceImpl) _then)
      : super(_value, _then);

  /// Create a copy of Source
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? source = null,
  }) {
    return _then(_$SourceImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SourceImpl implements _Source {
  const _$SourceImpl(
      {required this.name, required this.source, final String? $type})
      : $type = $type ?? 'default';

  factory _$SourceImpl.fromJson(Map<String, dynamic> json) =>
      _$$SourceImplFromJson(json);

  @override
  final String name;
  @override
  final String source;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Source(name: $name, source: $source)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SourceImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.source, source) || other.source == source));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, source);

  /// Create a copy of Source
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SourceImplCopyWith<_$SourceImpl> get copyWith =>
      __$$SourceImplCopyWithImpl<_$SourceImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String name, String source) $default, {
    required TResult Function(String name, String source) geoIP,
    required TResult Function(String name, String source) geoSite,
    required TResult Function(String name, String source) mmdb,
    required TResult Function(String name, String source) asn,
  }) {
    return $default(name, source);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String name, String source)? $default, {
    TResult? Function(String name, String source)? geoIP,
    TResult? Function(String name, String source)? geoSite,
    TResult? Function(String name, String source)? mmdb,
    TResult? Function(String name, String source)? asn,
  }) {
    return $default?.call(name, source);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String name, String source)? $default, {
    TResult Function(String name, String source)? geoIP,
    TResult Function(String name, String source)? geoSite,
    TResult Function(String name, String source)? mmdb,
    TResult Function(String name, String source)? asn,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(name, source);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Source value) $default, {
    required TResult Function(GeoIP value) geoIP,
    required TResult Function(GeoSite value) geoSite,
    required TResult Function(MMDB value) mmdb,
    required TResult Function(ASN value) asn,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Source value)? $default, {
    TResult? Function(GeoIP value)? geoIP,
    TResult? Function(GeoSite value)? geoSite,
    TResult? Function(MMDB value)? mmdb,
    TResult? Function(ASN value)? asn,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Source value)? $default, {
    TResult Function(GeoIP value)? geoIP,
    TResult Function(GeoSite value)? geoSite,
    TResult Function(MMDB value)? mmdb,
    TResult Function(ASN value)? asn,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SourceImplToJson(
      this,
    );
  }
}

abstract class _Source implements Source {
  const factory _Source(
      {required final String name,
      required final String source}) = _$SourceImpl;

  factory _Source.fromJson(Map<String, dynamic> json) = _$SourceImpl.fromJson;

  @override
  String get name;
  @override
  String get source;

  /// Create a copy of Source
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SourceImplCopyWith<_$SourceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GeoIPImplCopyWith<$Res> implements $SourceCopyWith<$Res> {
  factory _$$GeoIPImplCopyWith(
          _$GeoIPImpl value, $Res Function(_$GeoIPImpl) then) =
      __$$GeoIPImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String source});
}

/// @nodoc
class __$$GeoIPImplCopyWithImpl<$Res>
    extends _$SourceCopyWithImpl<$Res, _$GeoIPImpl>
    implements _$$GeoIPImplCopyWith<$Res> {
  __$$GeoIPImplCopyWithImpl(
      _$GeoIPImpl _value, $Res Function(_$GeoIPImpl) _then)
      : super(_value, _then);

  /// Create a copy of Source
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? source = null,
  }) {
    return _then(_$GeoIPImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GeoIPImpl implements GeoIP {
  const _$GeoIPImpl(
      {this.name = "GeoIP.dat",
      this.source =
          "https://github.com/MetaCubeX/meta-rules-dat/releases/download/latest/GeoIP.dat",
      final String? $type})
      : $type = $type ?? 'geoIP';

  factory _$GeoIPImpl.fromJson(Map<String, dynamic> json) =>
      _$$GeoIPImplFromJson(json);

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String source;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Source.geoIP(name: $name, source: $source)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GeoIPImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.source, source) || other.source == source));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, source);

  /// Create a copy of Source
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GeoIPImplCopyWith<_$GeoIPImpl> get copyWith =>
      __$$GeoIPImplCopyWithImpl<_$GeoIPImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String name, String source) $default, {
    required TResult Function(String name, String source) geoIP,
    required TResult Function(String name, String source) geoSite,
    required TResult Function(String name, String source) mmdb,
    required TResult Function(String name, String source) asn,
  }) {
    return geoIP(name, source);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String name, String source)? $default, {
    TResult? Function(String name, String source)? geoIP,
    TResult? Function(String name, String source)? geoSite,
    TResult? Function(String name, String source)? mmdb,
    TResult? Function(String name, String source)? asn,
  }) {
    return geoIP?.call(name, source);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String name, String source)? $default, {
    TResult Function(String name, String source)? geoIP,
    TResult Function(String name, String source)? geoSite,
    TResult Function(String name, String source)? mmdb,
    TResult Function(String name, String source)? asn,
    required TResult orElse(),
  }) {
    if (geoIP != null) {
      return geoIP(name, source);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Source value) $default, {
    required TResult Function(GeoIP value) geoIP,
    required TResult Function(GeoSite value) geoSite,
    required TResult Function(MMDB value) mmdb,
    required TResult Function(ASN value) asn,
  }) {
    return geoIP(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Source value)? $default, {
    TResult? Function(GeoIP value)? geoIP,
    TResult? Function(GeoSite value)? geoSite,
    TResult? Function(MMDB value)? mmdb,
    TResult? Function(ASN value)? asn,
  }) {
    return geoIP?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Source value)? $default, {
    TResult Function(GeoIP value)? geoIP,
    TResult Function(GeoSite value)? geoSite,
    TResult Function(MMDB value)? mmdb,
    TResult Function(ASN value)? asn,
    required TResult orElse(),
  }) {
    if (geoIP != null) {
      return geoIP(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$GeoIPImplToJson(
      this,
    );
  }
}

abstract class GeoIP implements Source {
  const factory GeoIP({final String name, final String source}) = _$GeoIPImpl;

  factory GeoIP.fromJson(Map<String, dynamic> json) = _$GeoIPImpl.fromJson;

  @override
  String get name;
  @override
  String get source;

  /// Create a copy of Source
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GeoIPImplCopyWith<_$GeoIPImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GeoSiteImplCopyWith<$Res> implements $SourceCopyWith<$Res> {
  factory _$$GeoSiteImplCopyWith(
          _$GeoSiteImpl value, $Res Function(_$GeoSiteImpl) then) =
      __$$GeoSiteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String source});
}

/// @nodoc
class __$$GeoSiteImplCopyWithImpl<$Res>
    extends _$SourceCopyWithImpl<$Res, _$GeoSiteImpl>
    implements _$$GeoSiteImplCopyWith<$Res> {
  __$$GeoSiteImplCopyWithImpl(
      _$GeoSiteImpl _value, $Res Function(_$GeoSiteImpl) _then)
      : super(_value, _then);

  /// Create a copy of Source
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? source = null,
  }) {
    return _then(_$GeoSiteImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GeoSiteImpl implements GeoSite {
  const _$GeoSiteImpl(
      {this.name = "geosite.dat",
      this.source =
          "https://github.com/MetaCubeX/meta-rules-dat/releases/download/latest/geosite.dat",
      final String? $type})
      : $type = $type ?? 'geoSite';

  factory _$GeoSiteImpl.fromJson(Map<String, dynamic> json) =>
      _$$GeoSiteImplFromJson(json);

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String source;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Source.geoSite(name: $name, source: $source)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GeoSiteImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.source, source) || other.source == source));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, source);

  /// Create a copy of Source
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GeoSiteImplCopyWith<_$GeoSiteImpl> get copyWith =>
      __$$GeoSiteImplCopyWithImpl<_$GeoSiteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String name, String source) $default, {
    required TResult Function(String name, String source) geoIP,
    required TResult Function(String name, String source) geoSite,
    required TResult Function(String name, String source) mmdb,
    required TResult Function(String name, String source) asn,
  }) {
    return geoSite(name, source);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String name, String source)? $default, {
    TResult? Function(String name, String source)? geoIP,
    TResult? Function(String name, String source)? geoSite,
    TResult? Function(String name, String source)? mmdb,
    TResult? Function(String name, String source)? asn,
  }) {
    return geoSite?.call(name, source);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String name, String source)? $default, {
    TResult Function(String name, String source)? geoIP,
    TResult Function(String name, String source)? geoSite,
    TResult Function(String name, String source)? mmdb,
    TResult Function(String name, String source)? asn,
    required TResult orElse(),
  }) {
    if (geoSite != null) {
      return geoSite(name, source);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Source value) $default, {
    required TResult Function(GeoIP value) geoIP,
    required TResult Function(GeoSite value) geoSite,
    required TResult Function(MMDB value) mmdb,
    required TResult Function(ASN value) asn,
  }) {
    return geoSite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Source value)? $default, {
    TResult? Function(GeoIP value)? geoIP,
    TResult? Function(GeoSite value)? geoSite,
    TResult? Function(MMDB value)? mmdb,
    TResult? Function(ASN value)? asn,
  }) {
    return geoSite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Source value)? $default, {
    TResult Function(GeoIP value)? geoIP,
    TResult Function(GeoSite value)? geoSite,
    TResult Function(MMDB value)? mmdb,
    TResult Function(ASN value)? asn,
    required TResult orElse(),
  }) {
    if (geoSite != null) {
      return geoSite(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$GeoSiteImplToJson(
      this,
    );
  }
}

abstract class GeoSite implements Source {
  const factory GeoSite({final String name, final String source}) =
      _$GeoSiteImpl;

  factory GeoSite.fromJson(Map<String, dynamic> json) = _$GeoSiteImpl.fromJson;

  @override
  String get name;
  @override
  String get source;

  /// Create a copy of Source
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GeoSiteImplCopyWith<_$GeoSiteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MMDBImplCopyWith<$Res> implements $SourceCopyWith<$Res> {
  factory _$$MMDBImplCopyWith(
          _$MMDBImpl value, $Res Function(_$MMDBImpl) then) =
      __$$MMDBImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String source});
}

/// @nodoc
class __$$MMDBImplCopyWithImpl<$Res>
    extends _$SourceCopyWithImpl<$Res, _$MMDBImpl>
    implements _$$MMDBImplCopyWith<$Res> {
  __$$MMDBImplCopyWithImpl(_$MMDBImpl _value, $Res Function(_$MMDBImpl) _then)
      : super(_value, _then);

  /// Create a copy of Source
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? source = null,
  }) {
    return _then(_$MMDBImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MMDBImpl implements MMDB {
  const _$MMDBImpl(
      {this.name = "geoip.metadb",
      this.source =
          "https://github.com/MetaCubeX/meta-rules-dat/releases/download/latest/geoip.metadb",
      final String? $type})
      : $type = $type ?? 'mmdb';

  factory _$MMDBImpl.fromJson(Map<String, dynamic> json) =>
      _$$MMDBImplFromJson(json);

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String source;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Source.mmdb(name: $name, source: $source)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MMDBImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.source, source) || other.source == source));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, source);

  /// Create a copy of Source
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MMDBImplCopyWith<_$MMDBImpl> get copyWith =>
      __$$MMDBImplCopyWithImpl<_$MMDBImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String name, String source) $default, {
    required TResult Function(String name, String source) geoIP,
    required TResult Function(String name, String source) geoSite,
    required TResult Function(String name, String source) mmdb,
    required TResult Function(String name, String source) asn,
  }) {
    return mmdb(name, source);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String name, String source)? $default, {
    TResult? Function(String name, String source)? geoIP,
    TResult? Function(String name, String source)? geoSite,
    TResult? Function(String name, String source)? mmdb,
    TResult? Function(String name, String source)? asn,
  }) {
    return mmdb?.call(name, source);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String name, String source)? $default, {
    TResult Function(String name, String source)? geoIP,
    TResult Function(String name, String source)? geoSite,
    TResult Function(String name, String source)? mmdb,
    TResult Function(String name, String source)? asn,
    required TResult orElse(),
  }) {
    if (mmdb != null) {
      return mmdb(name, source);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Source value) $default, {
    required TResult Function(GeoIP value) geoIP,
    required TResult Function(GeoSite value) geoSite,
    required TResult Function(MMDB value) mmdb,
    required TResult Function(ASN value) asn,
  }) {
    return mmdb(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Source value)? $default, {
    TResult? Function(GeoIP value)? geoIP,
    TResult? Function(GeoSite value)? geoSite,
    TResult? Function(MMDB value)? mmdb,
    TResult? Function(ASN value)? asn,
  }) {
    return mmdb?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Source value)? $default, {
    TResult Function(GeoIP value)? geoIP,
    TResult Function(GeoSite value)? geoSite,
    TResult Function(MMDB value)? mmdb,
    TResult Function(ASN value)? asn,
    required TResult orElse(),
  }) {
    if (mmdb != null) {
      return mmdb(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MMDBImplToJson(
      this,
    );
  }
}

abstract class MMDB implements Source {
  const factory MMDB({final String name, final String source}) = _$MMDBImpl;

  factory MMDB.fromJson(Map<String, dynamic> json) = _$MMDBImpl.fromJson;

  @override
  String get name;
  @override
  String get source;

  /// Create a copy of Source
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MMDBImplCopyWith<_$MMDBImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ASNImplCopyWith<$Res> implements $SourceCopyWith<$Res> {
  factory _$$ASNImplCopyWith(_$ASNImpl value, $Res Function(_$ASNImpl) then) =
      __$$ASNImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String source});
}

/// @nodoc
class __$$ASNImplCopyWithImpl<$Res>
    extends _$SourceCopyWithImpl<$Res, _$ASNImpl>
    implements _$$ASNImplCopyWith<$Res> {
  __$$ASNImplCopyWithImpl(_$ASNImpl _value, $Res Function(_$ASNImpl) _then)
      : super(_value, _then);

  /// Create a copy of Source
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? source = null,
  }) {
    return _then(_$ASNImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ASNImpl implements ASN {
  const _$ASNImpl(
      {this.name = "GeoLite2-ASN.mmdb",
      this.source =
          "https://github.com/MetaCubeX/meta-rules-dat/releases/download/latest/GeoLite2-ASN.mmdb",
      final String? $type})
      : $type = $type ?? 'asn';

  factory _$ASNImpl.fromJson(Map<String, dynamic> json) =>
      _$$ASNImplFromJson(json);

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String source;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Source.asn(name: $name, source: $source)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ASNImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.source, source) || other.source == source));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, source);

  /// Create a copy of Source
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ASNImplCopyWith<_$ASNImpl> get copyWith =>
      __$$ASNImplCopyWithImpl<_$ASNImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String name, String source) $default, {
    required TResult Function(String name, String source) geoIP,
    required TResult Function(String name, String source) geoSite,
    required TResult Function(String name, String source) mmdb,
    required TResult Function(String name, String source) asn,
  }) {
    return asn(name, source);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String name, String source)? $default, {
    TResult? Function(String name, String source)? geoIP,
    TResult? Function(String name, String source)? geoSite,
    TResult? Function(String name, String source)? mmdb,
    TResult? Function(String name, String source)? asn,
  }) {
    return asn?.call(name, source);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String name, String source)? $default, {
    TResult Function(String name, String source)? geoIP,
    TResult Function(String name, String source)? geoSite,
    TResult Function(String name, String source)? mmdb,
    TResult Function(String name, String source)? asn,
    required TResult orElse(),
  }) {
    if (asn != null) {
      return asn(name, source);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Source value) $default, {
    required TResult Function(GeoIP value) geoIP,
    required TResult Function(GeoSite value) geoSite,
    required TResult Function(MMDB value) mmdb,
    required TResult Function(ASN value) asn,
  }) {
    return asn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Source value)? $default, {
    TResult? Function(GeoIP value)? geoIP,
    TResult? Function(GeoSite value)? geoSite,
    TResult? Function(MMDB value)? mmdb,
    TResult? Function(ASN value)? asn,
  }) {
    return asn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Source value)? $default, {
    TResult Function(GeoIP value)? geoIP,
    TResult Function(GeoSite value)? geoSite,
    TResult Function(MMDB value)? mmdb,
    TResult Function(ASN value)? asn,
    required TResult orElse(),
  }) {
    if (asn != null) {
      return asn(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ASNImplToJson(
      this,
    );
  }
}

abstract class ASN implements Source {
  const factory ASN({final String name, final String source}) = _$ASNImpl;

  factory ASN.fromJson(Map<String, dynamic> json) = _$ASNImpl.fromJson;

  @override
  String get name;
  @override
  String get source;

  /// Create a copy of Source
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ASNImplCopyWith<_$ASNImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ExternalResource _$ExternalResourceFromJson(Map<String, dynamic> json) {
  return _ExternalResource.fromJson(json);
}

/// @nodoc
mixin _$ExternalResource {
  Source get source => throw _privateConstructorUsedError;
  DateTime? get lastUpdated => throw _privateConstructorUsedError;
  bool? get isValid => throw _privateConstructorUsedError;
  String? get path => throw _privateConstructorUsedError;

  /// Serializes this ExternalResource to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ExternalResource
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExternalResourceCopyWith<ExternalResource> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExternalResourceCopyWith<$Res> {
  factory $ExternalResourceCopyWith(
          ExternalResource value, $Res Function(ExternalResource) then) =
      _$ExternalResourceCopyWithImpl<$Res, ExternalResource>;
  @useResult
  $Res call(
      {Source source, DateTime? lastUpdated, bool? isValid, String? path});

  $SourceCopyWith<$Res> get source;
}

/// @nodoc
class _$ExternalResourceCopyWithImpl<$Res, $Val extends ExternalResource>
    implements $ExternalResourceCopyWith<$Res> {
  _$ExternalResourceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExternalResource
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = null,
    Object? lastUpdated = freezed,
    Object? isValid = freezed,
    Object? path = freezed,
  }) {
    return _then(_value.copyWith(
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as Source,
      lastUpdated: freezed == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isValid: freezed == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of ExternalResource
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SourceCopyWith<$Res> get source {
    return $SourceCopyWith<$Res>(_value.source, (value) {
      return _then(_value.copyWith(source: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ExternalResourceImplCopyWith<$Res>
    implements $ExternalResourceCopyWith<$Res> {
  factory _$$ExternalResourceImplCopyWith(_$ExternalResourceImpl value,
          $Res Function(_$ExternalResourceImpl) then) =
      __$$ExternalResourceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Source source, DateTime? lastUpdated, bool? isValid, String? path});

  @override
  $SourceCopyWith<$Res> get source;
}

/// @nodoc
class __$$ExternalResourceImplCopyWithImpl<$Res>
    extends _$ExternalResourceCopyWithImpl<$Res, _$ExternalResourceImpl>
    implements _$$ExternalResourceImplCopyWith<$Res> {
  __$$ExternalResourceImplCopyWithImpl(_$ExternalResourceImpl _value,
      $Res Function(_$ExternalResourceImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExternalResource
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = null,
    Object? lastUpdated = freezed,
    Object? isValid = freezed,
    Object? path = freezed,
  }) {
    return _then(_$ExternalResourceImpl(
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as Source,
      lastUpdated: freezed == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isValid: freezed == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExternalResourceImpl extends _ExternalResource {
  _$ExternalResourceImpl(
      {required this.source, this.lastUpdated, this.isValid, this.path})
      : super._();

  factory _$ExternalResourceImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExternalResourceImplFromJson(json);

  @override
  final Source source;
  @override
  final DateTime? lastUpdated;
  @override
  final bool? isValid;
  @override
  final String? path;

  @override
  String toString() {
    return 'ExternalResource(source: $source, lastUpdated: $lastUpdated, isValid: $isValid, path: $path)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExternalResourceImpl &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            (identical(other.isValid, isValid) || other.isValid == isValid) &&
            (identical(other.path, path) || other.path == path));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, source, lastUpdated, isValid, path);

  /// Create a copy of ExternalResource
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExternalResourceImplCopyWith<_$ExternalResourceImpl> get copyWith =>
      __$$ExternalResourceImplCopyWithImpl<_$ExternalResourceImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExternalResourceImplToJson(
      this,
    );
  }
}

abstract class _ExternalResource extends ExternalResource {
  factory _ExternalResource(
      {required final Source source,
      final DateTime? lastUpdated,
      final bool? isValid,
      final String? path}) = _$ExternalResourceImpl;
  _ExternalResource._() : super._();

  factory _ExternalResource.fromJson(Map<String, dynamic> json) =
      _$ExternalResourceImpl.fromJson;

  @override
  Source get source;
  @override
  DateTime? get lastUpdated;
  @override
  bool? get isValid;
  @override
  String? get path;

  /// Create a copy of ExternalResource
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExternalResourceImplCopyWith<_$ExternalResourceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
