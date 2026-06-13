// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inject_action_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(injectActionRepository)
const injectActionRepositoryProvider = InjectActionRepositoryProvider._();

final class InjectActionRepositoryProvider
    extends
        $FunctionalProvider<
          InjectActionRepository,
          InjectActionRepository,
          InjectActionRepository
        >
    with $Provider<InjectActionRepository> {
  const InjectActionRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'injectActionRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$injectActionRepositoryHash();

  @$internal
  @override
  $ProviderElement<InjectActionRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  InjectActionRepository create(Ref ref) {
    return injectActionRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(InjectActionRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<InjectActionRepository>(value),
    );
  }
}

String _$injectActionRepositoryHash() =>
    r'2b974a3c311fbc0ff607e5be1c6472b9dea9be55';
