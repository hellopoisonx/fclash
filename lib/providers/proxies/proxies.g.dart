// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'proxies.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$proxiesNotifierHash() => r'7569b8ae96562c1a696814ae86e307f7dcaadc2e';

/// See also [ProxiesNotifier].
@ProviderFor(ProxiesNotifier)
final proxiesNotifierProvider =
    AutoDisposeAsyncNotifierProvider<ProxiesNotifier, Proxy>.internal(
  ProxiesNotifier.new,
  name: r'proxiesNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$proxiesNotifierHash,
  dependencies: <ProviderOrFamily>[profilesProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    profilesProvider,
    ...?profilesProvider.allTransitiveDependencies
  },
);

typedef _$ProxiesNotifier = AutoDisposeAsyncNotifier<Proxy>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
