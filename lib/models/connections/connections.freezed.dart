// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'connections.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Connections _$ConnectionsFromJson(Map<String, dynamic> json) {
  return _Connections.fromJson(json);
}

/// @nodoc
mixin _$Connections {
  @JsonKey(name: 'downloadTotal')
  int get downloadTotal => throw _privateConstructorUsedError;
  @JsonKey(name: 'uploadTotal')
  int get uploadTotal => throw _privateConstructorUsedError;
  @JsonKey(name: 'connections')
  List<Connection> get connections => throw _privateConstructorUsedError;
  @JsonKey(name: 'memory')
  int get memory => throw _privateConstructorUsedError;

  /// Serializes this Connections to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Connections
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConnectionsCopyWith<Connections> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectionsCopyWith<$Res> {
  factory $ConnectionsCopyWith(
          Connections value, $Res Function(Connections) then) =
      _$ConnectionsCopyWithImpl<$Res, Connections>;
  @useResult
  $Res call(
      {@JsonKey(name: 'downloadTotal') int downloadTotal,
      @JsonKey(name: 'uploadTotal') int uploadTotal,
      @JsonKey(name: 'connections') List<Connection> connections,
      @JsonKey(name: 'memory') int memory});
}

/// @nodoc
class _$ConnectionsCopyWithImpl<$Res, $Val extends Connections>
    implements $ConnectionsCopyWith<$Res> {
  _$ConnectionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Connections
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? downloadTotal = null,
    Object? uploadTotal = null,
    Object? connections = null,
    Object? memory = null,
  }) {
    return _then(_value.copyWith(
      downloadTotal: null == downloadTotal
          ? _value.downloadTotal
          : downloadTotal // ignore: cast_nullable_to_non_nullable
              as int,
      uploadTotal: null == uploadTotal
          ? _value.uploadTotal
          : uploadTotal // ignore: cast_nullable_to_non_nullable
              as int,
      connections: null == connections
          ? _value.connections
          : connections // ignore: cast_nullable_to_non_nullable
              as List<Connection>,
      memory: null == memory
          ? _value.memory
          : memory // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConnectionsImplCopyWith<$Res>
    implements $ConnectionsCopyWith<$Res> {
  factory _$$ConnectionsImplCopyWith(
          _$ConnectionsImpl value, $Res Function(_$ConnectionsImpl) then) =
      __$$ConnectionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'downloadTotal') int downloadTotal,
      @JsonKey(name: 'uploadTotal') int uploadTotal,
      @JsonKey(name: 'connections') List<Connection> connections,
      @JsonKey(name: 'memory') int memory});
}

/// @nodoc
class __$$ConnectionsImplCopyWithImpl<$Res>
    extends _$ConnectionsCopyWithImpl<$Res, _$ConnectionsImpl>
    implements _$$ConnectionsImplCopyWith<$Res> {
  __$$ConnectionsImplCopyWithImpl(
      _$ConnectionsImpl _value, $Res Function(_$ConnectionsImpl) _then)
      : super(_value, _then);

  /// Create a copy of Connections
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? downloadTotal = null,
    Object? uploadTotal = null,
    Object? connections = null,
    Object? memory = null,
  }) {
    return _then(_$ConnectionsImpl(
      downloadTotal: null == downloadTotal
          ? _value.downloadTotal
          : downloadTotal // ignore: cast_nullable_to_non_nullable
              as int,
      uploadTotal: null == uploadTotal
          ? _value.uploadTotal
          : uploadTotal // ignore: cast_nullable_to_non_nullable
              as int,
      connections: null == connections
          ? _value._connections
          : connections // ignore: cast_nullable_to_non_nullable
              as List<Connection>,
      memory: null == memory
          ? _value.memory
          : memory // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConnectionsImpl with DiagnosticableTreeMixin implements _Connections {
  const _$ConnectionsImpl(
      {@JsonKey(name: 'downloadTotal') required this.downloadTotal,
      @JsonKey(name: 'uploadTotal') required this.uploadTotal,
      @JsonKey(name: 'connections')
      final List<Connection> connections = const [],
      @JsonKey(name: 'memory') required this.memory})
      : _connections = connections;

  factory _$ConnectionsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConnectionsImplFromJson(json);

  @override
  @JsonKey(name: 'downloadTotal')
  final int downloadTotal;
  @override
  @JsonKey(name: 'uploadTotal')
  final int uploadTotal;
  final List<Connection> _connections;
  @override
  @JsonKey(name: 'connections')
  List<Connection> get connections {
    if (_connections is EqualUnmodifiableListView) return _connections;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_connections);
  }

  @override
  @JsonKey(name: 'memory')
  final int memory;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Connections(downloadTotal: $downloadTotal, uploadTotal: $uploadTotal, connections: $connections, memory: $memory)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Connections'))
      ..add(DiagnosticsProperty('downloadTotal', downloadTotal))
      ..add(DiagnosticsProperty('uploadTotal', uploadTotal))
      ..add(DiagnosticsProperty('connections', connections))
      ..add(DiagnosticsProperty('memory', memory));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectionsImpl &&
            (identical(other.downloadTotal, downloadTotal) ||
                other.downloadTotal == downloadTotal) &&
            (identical(other.uploadTotal, uploadTotal) ||
                other.uploadTotal == uploadTotal) &&
            const DeepCollectionEquality()
                .equals(other._connections, _connections) &&
            (identical(other.memory, memory) || other.memory == memory));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, downloadTotal, uploadTotal,
      const DeepCollectionEquality().hash(_connections), memory);

  /// Create a copy of Connections
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConnectionsImplCopyWith<_$ConnectionsImpl> get copyWith =>
      __$$ConnectionsImplCopyWithImpl<_$ConnectionsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConnectionsImplToJson(
      this,
    );
  }
}

abstract class _Connections implements Connections {
  const factory _Connections(
      {@JsonKey(name: 'downloadTotal') required final int downloadTotal,
      @JsonKey(name: 'uploadTotal') required final int uploadTotal,
      @JsonKey(name: 'connections') final List<Connection> connections,
      @JsonKey(name: 'memory') required final int memory}) = _$ConnectionsImpl;

  factory _Connections.fromJson(Map<String, dynamic> json) =
      _$ConnectionsImpl.fromJson;

  @override
  @JsonKey(name: 'downloadTotal')
  int get downloadTotal;
  @override
  @JsonKey(name: 'uploadTotal')
  int get uploadTotal;
  @override
  @JsonKey(name: 'connections')
  List<Connection> get connections;
  @override
  @JsonKey(name: 'memory')
  int get memory;

  /// Create a copy of Connections
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConnectionsImplCopyWith<_$ConnectionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Connection _$ConnectionFromJson(Map<String, dynamic> json) {
  return _Connection.fromJson(json);
}

/// @nodoc
mixin _$Connection {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'metadata')
  Metadata get metadata => throw _privateConstructorUsedError;
  @JsonKey(name: 'upload')
  int get upload => throw _privateConstructorUsedError;
  @JsonKey(name: 'download')
  int get download => throw _privateConstructorUsedError;
  @JsonKey(name: 'start')
  DateTime get start => throw _privateConstructorUsedError;
  @JsonKey(name: 'chains')
  List<String> get chains => throw _privateConstructorUsedError;
  @JsonKey(name: 'rule')
  String get rule => throw _privateConstructorUsedError;
  @JsonKey(name: 'rulePayload')
  String get rulePayload => throw _privateConstructorUsedError;

  /// Serializes this Connection to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Connection
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConnectionCopyWith<Connection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectionCopyWith<$Res> {
  factory $ConnectionCopyWith(
          Connection value, $Res Function(Connection) then) =
      _$ConnectionCopyWithImpl<$Res, Connection>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'metadata') Metadata metadata,
      @JsonKey(name: 'upload') int upload,
      @JsonKey(name: 'download') int download,
      @JsonKey(name: 'start') DateTime start,
      @JsonKey(name: 'chains') List<String> chains,
      @JsonKey(name: 'rule') String rule,
      @JsonKey(name: 'rulePayload') String rulePayload});

  $MetadataCopyWith<$Res> get metadata;
}

/// @nodoc
class _$ConnectionCopyWithImpl<$Res, $Val extends Connection>
    implements $ConnectionCopyWith<$Res> {
  _$ConnectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Connection
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? metadata = null,
    Object? upload = null,
    Object? download = null,
    Object? start = null,
    Object? chains = null,
    Object? rule = null,
    Object? rulePayload = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Metadata,
      upload: null == upload
          ? _value.upload
          : upload // ignore: cast_nullable_to_non_nullable
              as int,
      download: null == download
          ? _value.download
          : download // ignore: cast_nullable_to_non_nullable
              as int,
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime,
      chains: null == chains
          ? _value.chains
          : chains // ignore: cast_nullable_to_non_nullable
              as List<String>,
      rule: null == rule
          ? _value.rule
          : rule // ignore: cast_nullable_to_non_nullable
              as String,
      rulePayload: null == rulePayload
          ? _value.rulePayload
          : rulePayload // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of Connection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MetadataCopyWith<$Res> get metadata {
    return $MetadataCopyWith<$Res>(_value.metadata, (value) {
      return _then(_value.copyWith(metadata: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ConnectionImplCopyWith<$Res>
    implements $ConnectionCopyWith<$Res> {
  factory _$$ConnectionImplCopyWith(
          _$ConnectionImpl value, $Res Function(_$ConnectionImpl) then) =
      __$$ConnectionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'metadata') Metadata metadata,
      @JsonKey(name: 'upload') int upload,
      @JsonKey(name: 'download') int download,
      @JsonKey(name: 'start') DateTime start,
      @JsonKey(name: 'chains') List<String> chains,
      @JsonKey(name: 'rule') String rule,
      @JsonKey(name: 'rulePayload') String rulePayload});

  @override
  $MetadataCopyWith<$Res> get metadata;
}

/// @nodoc
class __$$ConnectionImplCopyWithImpl<$Res>
    extends _$ConnectionCopyWithImpl<$Res, _$ConnectionImpl>
    implements _$$ConnectionImplCopyWith<$Res> {
  __$$ConnectionImplCopyWithImpl(
      _$ConnectionImpl _value, $Res Function(_$ConnectionImpl) _then)
      : super(_value, _then);

  /// Create a copy of Connection
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? metadata = null,
    Object? upload = null,
    Object? download = null,
    Object? start = null,
    Object? chains = null,
    Object? rule = null,
    Object? rulePayload = null,
  }) {
    return _then(_$ConnectionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Metadata,
      upload: null == upload
          ? _value.upload
          : upload // ignore: cast_nullable_to_non_nullable
              as int,
      download: null == download
          ? _value.download
          : download // ignore: cast_nullable_to_non_nullable
              as int,
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime,
      chains: null == chains
          ? _value._chains
          : chains // ignore: cast_nullable_to_non_nullable
              as List<String>,
      rule: null == rule
          ? _value.rule
          : rule // ignore: cast_nullable_to_non_nullable
              as String,
      rulePayload: null == rulePayload
          ? _value.rulePayload
          : rulePayload // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConnectionImpl with DiagnosticableTreeMixin implements _Connection {
  const _$ConnectionImpl(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'metadata') required this.metadata,
      @JsonKey(name: 'upload') required this.upload,
      @JsonKey(name: 'download') required this.download,
      @JsonKey(name: 'start') required this.start,
      @JsonKey(name: 'chains') required final List<String> chains,
      @JsonKey(name: 'rule') required this.rule,
      @JsonKey(name: 'rulePayload') required this.rulePayload})
      : _chains = chains;

  factory _$ConnectionImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConnectionImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'metadata')
  final Metadata metadata;
  @override
  @JsonKey(name: 'upload')
  final int upload;
  @override
  @JsonKey(name: 'download')
  final int download;
  @override
  @JsonKey(name: 'start')
  final DateTime start;
  final List<String> _chains;
  @override
  @JsonKey(name: 'chains')
  List<String> get chains {
    if (_chains is EqualUnmodifiableListView) return _chains;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chains);
  }

  @override
  @JsonKey(name: 'rule')
  final String rule;
  @override
  @JsonKey(name: 'rulePayload')
  final String rulePayload;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Connection(id: $id, metadata: $metadata, upload: $upload, download: $download, start: $start, chains: $chains, rule: $rule, rulePayload: $rulePayload)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Connection'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('metadata', metadata))
      ..add(DiagnosticsProperty('upload', upload))
      ..add(DiagnosticsProperty('download', download))
      ..add(DiagnosticsProperty('start', start))
      ..add(DiagnosticsProperty('chains', chains))
      ..add(DiagnosticsProperty('rule', rule))
      ..add(DiagnosticsProperty('rulePayload', rulePayload));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata) &&
            (identical(other.upload, upload) || other.upload == upload) &&
            (identical(other.download, download) ||
                other.download == download) &&
            (identical(other.start, start) || other.start == start) &&
            const DeepCollectionEquality().equals(other._chains, _chains) &&
            (identical(other.rule, rule) || other.rule == rule) &&
            (identical(other.rulePayload, rulePayload) ||
                other.rulePayload == rulePayload));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, metadata, upload, download,
      start, const DeepCollectionEquality().hash(_chains), rule, rulePayload);

  /// Create a copy of Connection
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConnectionImplCopyWith<_$ConnectionImpl> get copyWith =>
      __$$ConnectionImplCopyWithImpl<_$ConnectionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConnectionImplToJson(
      this,
    );
  }
}

abstract class _Connection implements Connection {
  const factory _Connection(
          {@JsonKey(name: 'id') required final String id,
          @JsonKey(name: 'metadata') required final Metadata metadata,
          @JsonKey(name: 'upload') required final int upload,
          @JsonKey(name: 'download') required final int download,
          @JsonKey(name: 'start') required final DateTime start,
          @JsonKey(name: 'chains') required final List<String> chains,
          @JsonKey(name: 'rule') required final String rule,
          @JsonKey(name: 'rulePayload') required final String rulePayload}) =
      _$ConnectionImpl;

  factory _Connection.fromJson(Map<String, dynamic> json) =
      _$ConnectionImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'metadata')
  Metadata get metadata;
  @override
  @JsonKey(name: 'upload')
  int get upload;
  @override
  @JsonKey(name: 'download')
  int get download;
  @override
  @JsonKey(name: 'start')
  DateTime get start;
  @override
  @JsonKey(name: 'chains')
  List<String> get chains;
  @override
  @JsonKey(name: 'rule')
  String get rule;
  @override
  @JsonKey(name: 'rulePayload')
  String get rulePayload;

  /// Create a copy of Connection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConnectionImplCopyWith<_$ConnectionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Metadata _$MetadataFromJson(Map<String, dynamic> json) {
  return _Metadata.fromJson(json);
}

/// @nodoc
mixin _$Metadata {
  @JsonKey(name: 'network')
  String get network => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  String get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'sourceIP')
  String get sourceIP => throw _privateConstructorUsedError;
  @JsonKey(name: 'destinationIP')
  String get destinationIP => throw _privateConstructorUsedError;
  @JsonKey(name: 'sourcePort')
  String get sourcePort => throw _privateConstructorUsedError;
  @JsonKey(name: 'destinationPort')
  String get destinationPort => throw _privateConstructorUsedError;
  @JsonKey(name: 'inboundIP')
  String get inboundIP => throw _privateConstructorUsedError;
  @JsonKey(name: 'inboundPort')
  String get inboundPort => throw _privateConstructorUsedError;
  @JsonKey(name: 'inboundName')
  String get inboundName => throw _privateConstructorUsedError;
  @JsonKey(name: 'inboundUser')
  String get inboundUser => throw _privateConstructorUsedError;
  @JsonKey(name: 'host')
  String get host => throw _privateConstructorUsedError;
  @JsonKey(name: 'dnsMode')
  String get dnsMode => throw _privateConstructorUsedError;
  @JsonKey(name: 'uid')
  int get uid => throw _privateConstructorUsedError;
  @JsonKey(name: 'process')
  String get process => throw _privateConstructorUsedError;
  @JsonKey(name: 'processPath')
  String get processPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'specialProxy')
  String get specialProxy => throw _privateConstructorUsedError;
  @JsonKey(name: 'specialRules')
  String get specialRules => throw _privateConstructorUsedError;
  @JsonKey(name: 'remoteDestination')
  String get remoteDestination => throw _privateConstructorUsedError;
  @JsonKey(name: 'sniffHost')
  String get sniffHost => throw _privateConstructorUsedError;

  /// Serializes this Metadata to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Metadata
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MetadataCopyWith<Metadata> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetadataCopyWith<$Res> {
  factory $MetadataCopyWith(Metadata value, $Res Function(Metadata) then) =
      _$MetadataCopyWithImpl<$Res, Metadata>;
  @useResult
  $Res call(
      {@JsonKey(name: 'network') String network,
      @JsonKey(name: 'type') String type,
      @JsonKey(name: 'sourceIP') String sourceIP,
      @JsonKey(name: 'destinationIP') String destinationIP,
      @JsonKey(name: 'sourcePort') String sourcePort,
      @JsonKey(name: 'destinationPort') String destinationPort,
      @JsonKey(name: 'inboundIP') String inboundIP,
      @JsonKey(name: 'inboundPort') String inboundPort,
      @JsonKey(name: 'inboundName') String inboundName,
      @JsonKey(name: 'inboundUser') String inboundUser,
      @JsonKey(name: 'host') String host,
      @JsonKey(name: 'dnsMode') String dnsMode,
      @JsonKey(name: 'uid') int uid,
      @JsonKey(name: 'process') String process,
      @JsonKey(name: 'processPath') String processPath,
      @JsonKey(name: 'specialProxy') String specialProxy,
      @JsonKey(name: 'specialRules') String specialRules,
      @JsonKey(name: 'remoteDestination') String remoteDestination,
      @JsonKey(name: 'sniffHost') String sniffHost});
}

/// @nodoc
class _$MetadataCopyWithImpl<$Res, $Val extends Metadata>
    implements $MetadataCopyWith<$Res> {
  _$MetadataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Metadata
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? network = null,
    Object? type = null,
    Object? sourceIP = null,
    Object? destinationIP = null,
    Object? sourcePort = null,
    Object? destinationPort = null,
    Object? inboundIP = null,
    Object? inboundPort = null,
    Object? inboundName = null,
    Object? inboundUser = null,
    Object? host = null,
    Object? dnsMode = null,
    Object? uid = null,
    Object? process = null,
    Object? processPath = null,
    Object? specialProxy = null,
    Object? specialRules = null,
    Object? remoteDestination = null,
    Object? sniffHost = null,
  }) {
    return _then(_value.copyWith(
      network: null == network
          ? _value.network
          : network // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      sourceIP: null == sourceIP
          ? _value.sourceIP
          : sourceIP // ignore: cast_nullable_to_non_nullable
              as String,
      destinationIP: null == destinationIP
          ? _value.destinationIP
          : destinationIP // ignore: cast_nullable_to_non_nullable
              as String,
      sourcePort: null == sourcePort
          ? _value.sourcePort
          : sourcePort // ignore: cast_nullable_to_non_nullable
              as String,
      destinationPort: null == destinationPort
          ? _value.destinationPort
          : destinationPort // ignore: cast_nullable_to_non_nullable
              as String,
      inboundIP: null == inboundIP
          ? _value.inboundIP
          : inboundIP // ignore: cast_nullable_to_non_nullable
              as String,
      inboundPort: null == inboundPort
          ? _value.inboundPort
          : inboundPort // ignore: cast_nullable_to_non_nullable
              as String,
      inboundName: null == inboundName
          ? _value.inboundName
          : inboundName // ignore: cast_nullable_to_non_nullable
              as String,
      inboundUser: null == inboundUser
          ? _value.inboundUser
          : inboundUser // ignore: cast_nullable_to_non_nullable
              as String,
      host: null == host
          ? _value.host
          : host // ignore: cast_nullable_to_non_nullable
              as String,
      dnsMode: null == dnsMode
          ? _value.dnsMode
          : dnsMode // ignore: cast_nullable_to_non_nullable
              as String,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as int,
      process: null == process
          ? _value.process
          : process // ignore: cast_nullable_to_non_nullable
              as String,
      processPath: null == processPath
          ? _value.processPath
          : processPath // ignore: cast_nullable_to_non_nullable
              as String,
      specialProxy: null == specialProxy
          ? _value.specialProxy
          : specialProxy // ignore: cast_nullable_to_non_nullable
              as String,
      specialRules: null == specialRules
          ? _value.specialRules
          : specialRules // ignore: cast_nullable_to_non_nullable
              as String,
      remoteDestination: null == remoteDestination
          ? _value.remoteDestination
          : remoteDestination // ignore: cast_nullable_to_non_nullable
              as String,
      sniffHost: null == sniffHost
          ? _value.sniffHost
          : sniffHost // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MetadataImplCopyWith<$Res>
    implements $MetadataCopyWith<$Res> {
  factory _$$MetadataImplCopyWith(
          _$MetadataImpl value, $Res Function(_$MetadataImpl) then) =
      __$$MetadataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'network') String network,
      @JsonKey(name: 'type') String type,
      @JsonKey(name: 'sourceIP') String sourceIP,
      @JsonKey(name: 'destinationIP') String destinationIP,
      @JsonKey(name: 'sourcePort') String sourcePort,
      @JsonKey(name: 'destinationPort') String destinationPort,
      @JsonKey(name: 'inboundIP') String inboundIP,
      @JsonKey(name: 'inboundPort') String inboundPort,
      @JsonKey(name: 'inboundName') String inboundName,
      @JsonKey(name: 'inboundUser') String inboundUser,
      @JsonKey(name: 'host') String host,
      @JsonKey(name: 'dnsMode') String dnsMode,
      @JsonKey(name: 'uid') int uid,
      @JsonKey(name: 'process') String process,
      @JsonKey(name: 'processPath') String processPath,
      @JsonKey(name: 'specialProxy') String specialProxy,
      @JsonKey(name: 'specialRules') String specialRules,
      @JsonKey(name: 'remoteDestination') String remoteDestination,
      @JsonKey(name: 'sniffHost') String sniffHost});
}

/// @nodoc
class __$$MetadataImplCopyWithImpl<$Res>
    extends _$MetadataCopyWithImpl<$Res, _$MetadataImpl>
    implements _$$MetadataImplCopyWith<$Res> {
  __$$MetadataImplCopyWithImpl(
      _$MetadataImpl _value, $Res Function(_$MetadataImpl) _then)
      : super(_value, _then);

  /// Create a copy of Metadata
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? network = null,
    Object? type = null,
    Object? sourceIP = null,
    Object? destinationIP = null,
    Object? sourcePort = null,
    Object? destinationPort = null,
    Object? inboundIP = null,
    Object? inboundPort = null,
    Object? inboundName = null,
    Object? inboundUser = null,
    Object? host = null,
    Object? dnsMode = null,
    Object? uid = null,
    Object? process = null,
    Object? processPath = null,
    Object? specialProxy = null,
    Object? specialRules = null,
    Object? remoteDestination = null,
    Object? sniffHost = null,
  }) {
    return _then(_$MetadataImpl(
      network: null == network
          ? _value.network
          : network // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      sourceIP: null == sourceIP
          ? _value.sourceIP
          : sourceIP // ignore: cast_nullable_to_non_nullable
              as String,
      destinationIP: null == destinationIP
          ? _value.destinationIP
          : destinationIP // ignore: cast_nullable_to_non_nullable
              as String,
      sourcePort: null == sourcePort
          ? _value.sourcePort
          : sourcePort // ignore: cast_nullable_to_non_nullable
              as String,
      destinationPort: null == destinationPort
          ? _value.destinationPort
          : destinationPort // ignore: cast_nullable_to_non_nullable
              as String,
      inboundIP: null == inboundIP
          ? _value.inboundIP
          : inboundIP // ignore: cast_nullable_to_non_nullable
              as String,
      inboundPort: null == inboundPort
          ? _value.inboundPort
          : inboundPort // ignore: cast_nullable_to_non_nullable
              as String,
      inboundName: null == inboundName
          ? _value.inboundName
          : inboundName // ignore: cast_nullable_to_non_nullable
              as String,
      inboundUser: null == inboundUser
          ? _value.inboundUser
          : inboundUser // ignore: cast_nullable_to_non_nullable
              as String,
      host: null == host
          ? _value.host
          : host // ignore: cast_nullable_to_non_nullable
              as String,
      dnsMode: null == dnsMode
          ? _value.dnsMode
          : dnsMode // ignore: cast_nullable_to_non_nullable
              as String,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as int,
      process: null == process
          ? _value.process
          : process // ignore: cast_nullable_to_non_nullable
              as String,
      processPath: null == processPath
          ? _value.processPath
          : processPath // ignore: cast_nullable_to_non_nullable
              as String,
      specialProxy: null == specialProxy
          ? _value.specialProxy
          : specialProxy // ignore: cast_nullable_to_non_nullable
              as String,
      specialRules: null == specialRules
          ? _value.specialRules
          : specialRules // ignore: cast_nullable_to_non_nullable
              as String,
      remoteDestination: null == remoteDestination
          ? _value.remoteDestination
          : remoteDestination // ignore: cast_nullable_to_non_nullable
              as String,
      sniffHost: null == sniffHost
          ? _value.sniffHost
          : sniffHost // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MetadataImpl with DiagnosticableTreeMixin implements _Metadata {
  const _$MetadataImpl(
      {@JsonKey(name: 'network') required this.network,
      @JsonKey(name: 'type') required this.type,
      @JsonKey(name: 'sourceIP') required this.sourceIP,
      @JsonKey(name: 'destinationIP') required this.destinationIP,
      @JsonKey(name: 'sourcePort') required this.sourcePort,
      @JsonKey(name: 'destinationPort') required this.destinationPort,
      @JsonKey(name: 'inboundIP') required this.inboundIP,
      @JsonKey(name: 'inboundPort') required this.inboundPort,
      @JsonKey(name: 'inboundName') required this.inboundName,
      @JsonKey(name: 'inboundUser') required this.inboundUser,
      @JsonKey(name: 'host') required this.host,
      @JsonKey(name: 'dnsMode') required this.dnsMode,
      @JsonKey(name: 'uid') required this.uid,
      @JsonKey(name: 'process') required this.process,
      @JsonKey(name: 'processPath') required this.processPath,
      @JsonKey(name: 'specialProxy') required this.specialProxy,
      @JsonKey(name: 'specialRules') required this.specialRules,
      @JsonKey(name: 'remoteDestination') required this.remoteDestination,
      @JsonKey(name: 'sniffHost') required this.sniffHost});

  factory _$MetadataImpl.fromJson(Map<String, dynamic> json) =>
      _$$MetadataImplFromJson(json);

  @override
  @JsonKey(name: 'network')
  final String network;
  @override
  @JsonKey(name: 'type')
  final String type;
  @override
  @JsonKey(name: 'sourceIP')
  final String sourceIP;
  @override
  @JsonKey(name: 'destinationIP')
  final String destinationIP;
  @override
  @JsonKey(name: 'sourcePort')
  final String sourcePort;
  @override
  @JsonKey(name: 'destinationPort')
  final String destinationPort;
  @override
  @JsonKey(name: 'inboundIP')
  final String inboundIP;
  @override
  @JsonKey(name: 'inboundPort')
  final String inboundPort;
  @override
  @JsonKey(name: 'inboundName')
  final String inboundName;
  @override
  @JsonKey(name: 'inboundUser')
  final String inboundUser;
  @override
  @JsonKey(name: 'host')
  final String host;
  @override
  @JsonKey(name: 'dnsMode')
  final String dnsMode;
  @override
  @JsonKey(name: 'uid')
  final int uid;
  @override
  @JsonKey(name: 'process')
  final String process;
  @override
  @JsonKey(name: 'processPath')
  final String processPath;
  @override
  @JsonKey(name: 'specialProxy')
  final String specialProxy;
  @override
  @JsonKey(name: 'specialRules')
  final String specialRules;
  @override
  @JsonKey(name: 'remoteDestination')
  final String remoteDestination;
  @override
  @JsonKey(name: 'sniffHost')
  final String sniffHost;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Metadata(network: $network, type: $type, sourceIP: $sourceIP, destinationIP: $destinationIP, sourcePort: $sourcePort, destinationPort: $destinationPort, inboundIP: $inboundIP, inboundPort: $inboundPort, inboundName: $inboundName, inboundUser: $inboundUser, host: $host, dnsMode: $dnsMode, uid: $uid, process: $process, processPath: $processPath, specialProxy: $specialProxy, specialRules: $specialRules, remoteDestination: $remoteDestination, sniffHost: $sniffHost)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Metadata'))
      ..add(DiagnosticsProperty('network', network))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('sourceIP', sourceIP))
      ..add(DiagnosticsProperty('destinationIP', destinationIP))
      ..add(DiagnosticsProperty('sourcePort', sourcePort))
      ..add(DiagnosticsProperty('destinationPort', destinationPort))
      ..add(DiagnosticsProperty('inboundIP', inboundIP))
      ..add(DiagnosticsProperty('inboundPort', inboundPort))
      ..add(DiagnosticsProperty('inboundName', inboundName))
      ..add(DiagnosticsProperty('inboundUser', inboundUser))
      ..add(DiagnosticsProperty('host', host))
      ..add(DiagnosticsProperty('dnsMode', dnsMode))
      ..add(DiagnosticsProperty('uid', uid))
      ..add(DiagnosticsProperty('process', process))
      ..add(DiagnosticsProperty('processPath', processPath))
      ..add(DiagnosticsProperty('specialProxy', specialProxy))
      ..add(DiagnosticsProperty('specialRules', specialRules))
      ..add(DiagnosticsProperty('remoteDestination', remoteDestination))
      ..add(DiagnosticsProperty('sniffHost', sniffHost));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MetadataImpl &&
            (identical(other.network, network) || other.network == network) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.sourceIP, sourceIP) ||
                other.sourceIP == sourceIP) &&
            (identical(other.destinationIP, destinationIP) ||
                other.destinationIP == destinationIP) &&
            (identical(other.sourcePort, sourcePort) ||
                other.sourcePort == sourcePort) &&
            (identical(other.destinationPort, destinationPort) ||
                other.destinationPort == destinationPort) &&
            (identical(other.inboundIP, inboundIP) ||
                other.inboundIP == inboundIP) &&
            (identical(other.inboundPort, inboundPort) ||
                other.inboundPort == inboundPort) &&
            (identical(other.inboundName, inboundName) ||
                other.inboundName == inboundName) &&
            (identical(other.inboundUser, inboundUser) ||
                other.inboundUser == inboundUser) &&
            (identical(other.host, host) || other.host == host) &&
            (identical(other.dnsMode, dnsMode) || other.dnsMode == dnsMode) &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.process, process) || other.process == process) &&
            (identical(other.processPath, processPath) ||
                other.processPath == processPath) &&
            (identical(other.specialProxy, specialProxy) ||
                other.specialProxy == specialProxy) &&
            (identical(other.specialRules, specialRules) ||
                other.specialRules == specialRules) &&
            (identical(other.remoteDestination, remoteDestination) ||
                other.remoteDestination == remoteDestination) &&
            (identical(other.sniffHost, sniffHost) ||
                other.sniffHost == sniffHost));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        network,
        type,
        sourceIP,
        destinationIP,
        sourcePort,
        destinationPort,
        inboundIP,
        inboundPort,
        inboundName,
        inboundUser,
        host,
        dnsMode,
        uid,
        process,
        processPath,
        specialProxy,
        specialRules,
        remoteDestination,
        sniffHost
      ]);

  /// Create a copy of Metadata
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MetadataImplCopyWith<_$MetadataImpl> get copyWith =>
      __$$MetadataImplCopyWithImpl<_$MetadataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MetadataImplToJson(
      this,
    );
  }
}

abstract class _Metadata implements Metadata {
  const factory _Metadata(
      {@JsonKey(name: 'network') required final String network,
      @JsonKey(name: 'type') required final String type,
      @JsonKey(name: 'sourceIP') required final String sourceIP,
      @JsonKey(name: 'destinationIP') required final String destinationIP,
      @JsonKey(name: 'sourcePort') required final String sourcePort,
      @JsonKey(name: 'destinationPort') required final String destinationPort,
      @JsonKey(name: 'inboundIP') required final String inboundIP,
      @JsonKey(name: 'inboundPort') required final String inboundPort,
      @JsonKey(name: 'inboundName') required final String inboundName,
      @JsonKey(name: 'inboundUser') required final String inboundUser,
      @JsonKey(name: 'host') required final String host,
      @JsonKey(name: 'dnsMode') required final String dnsMode,
      @JsonKey(name: 'uid') required final int uid,
      @JsonKey(name: 'process') required final String process,
      @JsonKey(name: 'processPath') required final String processPath,
      @JsonKey(name: 'specialProxy') required final String specialProxy,
      @JsonKey(name: 'specialRules') required final String specialRules,
      @JsonKey(name: 'remoteDestination')
      required final String remoteDestination,
      @JsonKey(name: 'sniffHost')
      required final String sniffHost}) = _$MetadataImpl;

  factory _Metadata.fromJson(Map<String, dynamic> json) =
      _$MetadataImpl.fromJson;

  @override
  @JsonKey(name: 'network')
  String get network;
  @override
  @JsonKey(name: 'type')
  String get type;
  @override
  @JsonKey(name: 'sourceIP')
  String get sourceIP;
  @override
  @JsonKey(name: 'destinationIP')
  String get destinationIP;
  @override
  @JsonKey(name: 'sourcePort')
  String get sourcePort;
  @override
  @JsonKey(name: 'destinationPort')
  String get destinationPort;
  @override
  @JsonKey(name: 'inboundIP')
  String get inboundIP;
  @override
  @JsonKey(name: 'inboundPort')
  String get inboundPort;
  @override
  @JsonKey(name: 'inboundName')
  String get inboundName;
  @override
  @JsonKey(name: 'inboundUser')
  String get inboundUser;
  @override
  @JsonKey(name: 'host')
  String get host;
  @override
  @JsonKey(name: 'dnsMode')
  String get dnsMode;
  @override
  @JsonKey(name: 'uid')
  int get uid;
  @override
  @JsonKey(name: 'process')
  String get process;
  @override
  @JsonKey(name: 'processPath')
  String get processPath;
  @override
  @JsonKey(name: 'specialProxy')
  String get specialProxy;
  @override
  @JsonKey(name: 'specialRules')
  String get specialRules;
  @override
  @JsonKey(name: 'remoteDestination')
  String get remoteDestination;
  @override
  @JsonKey(name: 'sniffHost')
  String get sniffHost;

  /// Create a copy of Metadata
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MetadataImplCopyWith<_$MetadataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
