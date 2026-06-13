import 'package:freezed_annotation/freezed_annotation.dart';

part 'script_metadata.freezed.dart';

@freezed
abstract class ScriptMetadata with _$ScriptMetadata {
  const ScriptMetadata._();

  const factory ScriptMetadata({
    required String name,
    required String description,
    required String version,
    required String author,
  }) = _ScriptMetadata;
}
