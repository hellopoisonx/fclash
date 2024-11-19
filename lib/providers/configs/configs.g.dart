// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'configs.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$clashConfigsNotifierHash() =>
    r'234d6cabf6b43b9cd44989b0319ccaf82c55fadd';

/// See also [ClashConfigsNotifier].
@ProviderFor(ClashConfigsNotifier)
final clashConfigsNotifierProvider =
    AutoDisposeAsyncNotifierProvider<ClashConfigsNotifier, Configs>.internal(
  ClashConfigsNotifier.new,
  name: r'clashConfigsNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$clashConfigsNotifierHash,
  dependencies: <ProviderOrFamily>[profilesProvider],
  allTransitiveDependencies: <ProviderOrFamily>{
    profilesProvider,
    ...?profilesProvider.allTransitiveDependencies
  },
);

typedef _$ClashConfigsNotifier = AutoDisposeAsyncNotifier<Configs>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
