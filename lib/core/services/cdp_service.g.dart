// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cdp_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(cdpService)
const cdpServiceProvider = CdpServiceProvider._();

final class CdpServiceProvider
    extends $FunctionalProvider<CdpService, CdpService, CdpService>
    with $Provider<CdpService> {
  const CdpServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'cdpServiceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$cdpServiceHash();

  @$internal
  @override
  $ProviderElement<CdpService> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  CdpService create(Ref ref) {
    return cdpService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CdpService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CdpService>(value),
    );
  }
}

String _$cdpServiceHash() => r'eee0b2750137ccebf22a3303de5271f23a61614e';
