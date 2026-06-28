// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'codex_session_action_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(codexSessionActionRepository)
const codexSessionActionRepositoryProvider =
    CodexSessionActionRepositoryProvider._();

final class CodexSessionActionRepositoryProvider
    extends
        $FunctionalProvider<
          CodexSessionActionRepository,
          CodexSessionActionRepository,
          CodexSessionActionRepository
        >
    with $Provider<CodexSessionActionRepository> {
  const CodexSessionActionRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'codexSessionActionRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$codexSessionActionRepositoryHash();

  @$internal
  @override
  $ProviderElement<CodexSessionActionRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  CodexSessionActionRepository create(Ref ref) {
    return codexSessionActionRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CodexSessionActionRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CodexSessionActionRepository>(value),
    );
  }
}

String _$codexSessionActionRepositoryHash() =>
    r'bf433692c49addec15c993329f113d8f00826bab';

@ProviderFor(deleteCodexThread)
const deleteCodexThreadProvider = DeleteCodexThreadFamily._();

final class DeleteCodexThreadProvider
    extends $FunctionalProvider<AsyncValue<String>, String, FutureOr<String>>
    with $FutureModifier<String>, $FutureProvider<String> {
  const DeleteCodexThreadProvider._({
    required DeleteCodexThreadFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'deleteCodexThreadProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$deleteCodexThreadHash();

  @override
  String toString() {
    return r'deleteCodexThreadProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<String> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<String> create(Ref ref) {
    final argument = this.argument as String;
    return deleteCodexThread(ref, id: argument);
  }

  @override
  bool operator ==(Object other) {
    return other is DeleteCodexThreadProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$deleteCodexThreadHash() => r'da1a52fa7057ae1e9de99f43f7e938605d713c1a';

final class DeleteCodexThreadFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<String>, String> {
  const DeleteCodexThreadFamily._()
    : super(
        retry: null,
        name: r'deleteCodexThreadProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  DeleteCodexThreadProvider call({required String id}) =>
      DeleteCodexThreadProvider._(argument: id, from: this);

  @override
  String toString() => r'deleteCodexThreadProvider';
}

/// 导出单条会话:弹保存对话框 → 写文件。返回 outputPath,用户取消返回 null。

@ProviderFor(exportCodexThread)
const exportCodexThreadProvider = ExportCodexThreadFamily._();

/// 导出单条会话:弹保存对话框 → 写文件。返回 outputPath,用户取消返回 null。

final class ExportCodexThreadProvider
    extends $FunctionalProvider<AsyncValue<String?>, String?, FutureOr<String?>>
    with $FutureModifier<String?>, $FutureProvider<String?> {
  /// 导出单条会话:弹保存对话框 → 写文件。返回 outputPath,用户取消返回 null。
  const ExportCodexThreadProvider._({
    required ExportCodexThreadFamily super.from,
    required ({CodexThreadDetail detail, String format, String? dialogTitle})
    super.argument,
  }) : super(
         retry: null,
         name: r'exportCodexThreadProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$exportCodexThreadHash();

  @override
  String toString() {
    return r'exportCodexThreadProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $FutureProviderElement<String?> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<String?> create(Ref ref) {
    final argument =
        this.argument
            as ({CodexThreadDetail detail, String format, String? dialogTitle});
    return exportCodexThread(
      ref,
      detail: argument.detail,
      format: argument.format,
      dialogTitle: argument.dialogTitle,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is ExportCodexThreadProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$exportCodexThreadHash() => r'7aa9b510e606fbc0016d93686ccfd43919872382';

/// 导出单条会话:弹保存对话框 → 写文件。返回 outputPath,用户取消返回 null。

final class ExportCodexThreadFamily extends $Family
    with
        $FunctionalFamilyOverride<
          FutureOr<String?>,
          ({CodexThreadDetail detail, String format, String? dialogTitle})
        > {
  const ExportCodexThreadFamily._()
    : super(
        retry: null,
        name: r'exportCodexThreadProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  /// 导出单条会话:弹保存对话框 → 写文件。返回 outputPath,用户取消返回 null。

  ExportCodexThreadProvider call({
    required CodexThreadDetail detail,
    required String format,
    String? dialogTitle,
  }) => ExportCodexThreadProvider._(
    argument: (detail: detail, format: format, dialogTitle: dialogTitle),
    from: this,
  );

  @override
  String toString() => r'exportCodexThreadProvider';
}
