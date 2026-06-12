// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_storage.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(appStorage)
const appStorageProvider = AppStorageProvider._();

final class AppStorageProvider
    extends $FunctionalProvider<AppStorage, AppStorage, AppStorage>
    with $Provider<AppStorage> {
  const AppStorageProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'appStorageProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$appStorageHash();

  @$internal
  @override
  $ProviderElement<AppStorage> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  AppStorage create(Ref ref) {
    return appStorage(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AppStorage value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AppStorage>(value),
    );
  }
}

String _$appStorageHash() => r'f9fba450449b6f3280f7290a7c246bf16469569c';
