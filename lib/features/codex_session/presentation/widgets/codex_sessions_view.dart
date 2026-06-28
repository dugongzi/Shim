import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shim/core/constants/app_sizes.dart';
import 'package:shim/core/extensions/context_extensions.dart';
import 'package:shim/features/codex_session/domain/models/codex_thread.dart';
import 'package:shim/features/codex_session/presentation/widgets/projects_pane.dart';
import 'package:shim/features/codex_session/presentation/widgets/thread_detail_pane.dart';
import 'package:shim/features/codex_session/presentation/widgets/threads_pane.dart';

/// Codex 会话浏览三栏视图:项目(按 cwd 分组) / 会话 / 详情。
class CodexSessionsView extends HookConsumerWidget {
  const CodexSessionsView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedCwd = useState<String?>(null);
    final selectedThread = useState<CodexThread?>(null);
    final l10n = context.l10n;

    return Padding(
      padding: EdgeInsets.all(AppSizes.itemGap),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            width: 240,
            child: ProjectsPane(
              selectedCwd: selectedCwd.value,
              onSelect: (cwd) {
                selectedCwd.value = cwd;
                selectedThread.value = null;
              },
            ),
          ),
          SizedBox(width: AppSizes.itemGap),
          SizedBox(
            width: 320,
            child: ThreadsPane(
              cwdFilter: selectedCwd.value,
              selected: selectedThread.value,
              onSelect: (t) => selectedThread.value = t,
              emptyHint: l10n.claudeProjectsSelectHint,
            ),
          ),
          SizedBox(width: AppSizes.itemGap),
          Expanded(
            child: ThreadDetailPane(thread: selectedThread.value),
          ),
        ],
      ),
    );
  }
}
