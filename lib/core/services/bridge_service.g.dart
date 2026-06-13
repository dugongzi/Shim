// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bridge_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(bridgeService)
const bridgeServiceProvider = BridgeServiceProvider._();

final class BridgeServiceProvider
    extends $FunctionalProvider<BridgeService, BridgeService, BridgeService>
    with $Provider<BridgeService> {
  const BridgeServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'bridgeServiceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$bridgeServiceHash();

  @$internal
  @override
  $ProviderElement<BridgeService> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  BridgeService create(Ref ref) {
    return bridgeService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(BridgeService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<BridgeService>(value),
    );
  }
}

String _$bridgeServiceHash() => r'f54689176a4c705dffcbc7d8737f0b8b9ccc9aa6';
