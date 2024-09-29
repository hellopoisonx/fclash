// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'logs.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$logsHash() => r'799da9d81fb265da925f62cdd34de7701672770b';

/// See also [logs].
@ProviderFor(logs)
final logsProvider = AutoDisposeStreamProvider<List<Log>>.internal(
  logs,
  name: r'logsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$logsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef LogsRef = AutoDisposeStreamProviderRef<List<Log>>;
String _$filteredLogsHash() => r'3fe51425c324ff9a8e9842d2eeffd4e06de96072';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [filteredLogs].
@ProviderFor(filteredLogs)
const filteredLogsProvider = FilteredLogsFamily();

/// See also [filteredLogs].
class FilteredLogsFamily extends Family<AsyncValue<List<Log>>> {
  /// See also [filteredLogs].
  const FilteredLogsFamily();

  /// See also [filteredLogs].
  FilteredLogsProvider call(
    String query,
    LogType type,
  ) {
    return FilteredLogsProvider(
      query,
      type,
    );
  }

  @override
  FilteredLogsProvider getProviderOverride(
    covariant FilteredLogsProvider provider,
  ) {
    return call(
      provider.query,
      provider.type,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'filteredLogsProvider';
}

/// See also [filteredLogs].
class FilteredLogsProvider extends AutoDisposeFutureProvider<List<Log>> {
  /// See also [filteredLogs].
  FilteredLogsProvider(
    String query,
    LogType type,
  ) : this._internal(
          (ref) => filteredLogs(
            ref as FilteredLogsRef,
            query,
            type,
          ),
          from: filteredLogsProvider,
          name: r'filteredLogsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$filteredLogsHash,
          dependencies: FilteredLogsFamily._dependencies,
          allTransitiveDependencies:
              FilteredLogsFamily._allTransitiveDependencies,
          query: query,
          type: type,
        );

  FilteredLogsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.query,
    required this.type,
  }) : super.internal();

  final String query;
  final LogType type;

  @override
  Override overrideWith(
    FutureOr<List<Log>> Function(FilteredLogsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FilteredLogsProvider._internal(
        (ref) => create(ref as FilteredLogsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        query: query,
        type: type,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<Log>> createElement() {
    return _FilteredLogsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FilteredLogsProvider &&
        other.query == query &&
        other.type == type;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, query.hashCode);
    hash = _SystemHash.combine(hash, type.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FilteredLogsRef on AutoDisposeFutureProviderRef<List<Log>> {
  /// The parameter `query` of this provider.
  String get query;

  /// The parameter `type` of this provider.
  LogType get type;
}

class _FilteredLogsProviderElement
    extends AutoDisposeFutureProviderElement<List<Log>> with FilteredLogsRef {
  _FilteredLogsProviderElement(super.provider);

  @override
  String get query => (origin as FilteredLogsProvider).query;
  @override
  LogType get type => (origin as FilteredLogsProvider).type;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
