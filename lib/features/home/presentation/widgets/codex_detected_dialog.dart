import 'package:shim/common/widgets/custom_dialog.dart';
import 'package:shim/core/extensions/context_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';

class CodexDetectedDialog extends StatelessWidget {
  const CodexDetectedDialog({super.key, this.detectedPath});

  final String? detectedPath;

  static Future<bool?> show({String? detectedPath}) {
    return CustomDialog.show<bool>(
      title: Builder(
        builder: (context) => Text(context.l10n.codexDetectedTitle),
      ),
      hasClose: true,
      child: CodexDetectedDialog(detectedPath: detectedPath),
      actionButtons: [
        Builder(
          builder: (context) => TextButton(
            onPressed: () => SmartDialog.dismiss(result: false),
            child: Text(context.l10n.cancel),
          ),
        ),
        Builder(
          builder: (context) => FilledButton(
            onPressed: () => SmartDialog.dismiss(result: true),
            child: Text(context.l10n.confirm),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final hasPath = detectedPath != null && detectedPath!.isNotEmpty;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: Text(
        hasPath
            ? context.l10n.codexDetectedMessage(detectedPath!)
            : context.l10n.codexDetectedNoPathMessage,
      ),
    );
  }
}
