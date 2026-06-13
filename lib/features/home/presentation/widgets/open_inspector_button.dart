import 'package:shim/core/extensions/context_extensions.dart';
import 'package:shim/features/home/presentation/providers/inject_action_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class OpenInspectorButton extends HookConsumerWidget {
  const OpenInspectorButton({super.key, required this.debugPort});

  final int debugPort;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isOpening = useState(false);

    return SizedBox(
      width: double.infinity,
      height: 46.ch(min: 42, max: 50),
      child: FilledButton.tonalIcon(
        onPressed: isOpening.value ? null : () => _run(context, ref, isOpening),
        icon: isOpening.value
            ? SizedBox(
                width: 18.cr(min: 16, max: 20),
                height: 18.cr(min: 16, max: 20),
                child: const CircularProgressIndicator(strokeWidth: 2),
              )
            : const Icon(Icons.developer_mode_rounded),
        label: Text(context.l10n.openInspector),
      ),
    );
  }

  Future<void> _run(
    BuildContext context,
    WidgetRef ref,
    ValueNotifier<bool> isOpening,
  ) async {
    isOpening.value = true;
    final l10n = context.l10n;
    try {
      await ref.read(openInspectorProvider(debugPort: debugPort).future);
    } catch (e) {
      SmartDialog.showToast(l10n.openInspectorFailed(e.toString()));
    } finally {
      isOpening.value = false;
    }
  }
}
