import 'package:shim/core/constants/app_sizes.dart';
import 'package:shim/core/extensions/context_extensions.dart';
import 'package:shim/features/scripts/domain/models/inject_script.dart';
import 'package:shim/features/scripts/presentation/providers/script_query_provider.dart';
import 'package:shim/features/scripts/presentation/widgets/script_list_item.dart';
import 'package:shim/features/scripts/presentation/widgets/script_list_pagination.dart';
import 'package:shim/features/scripts/presentation/widgets/script_list_toolbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

const _pageSize = 20;

class ScriptList extends HookConsumerWidget {
  const ScriptList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selected = useState<Set<String>>({});
    final currentPage = useState(1);

    final scriptsAsync = ref.watch(scriptsProvider);
    final scripts = scriptsAsync.value ?? const <InjectScript>[];

    final totalPages =
        scripts.isEmpty ? 1 : (scripts.length / _pageSize).ceil();
    final clampedPage = currentPage.value.clamp(1, totalPages);
    if (clampedPage != currentPage.value) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        currentPage.value = clampedPage;
      });
    }
    final start = (clampedPage - 1) * _pageSize;
    final end = (start + _pageSize).clamp(0, scripts.length);
    final pageItems = scripts.sublist(start, end);
    final pageIds = pageItems.map((s) => s.id).toSet();
    final selectedOnPage =
        selected.value.where(pageIds.contains).length;

    void notImplemented() {
      SmartDialog.showToast(context.l10n.notImplementedYet);
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ScriptListToolbar(
          selectedCount: selectedOnPage,
          onImport: notImplemented,
          onSelectAll: pageItems.isEmpty
              ? null
              : () => selected.value = {...selected.value, ...pageIds},
          onInvertSelection: pageItems.isEmpty
              ? null
              : () {
                  final next = {...selected.value};
                  for (final id in pageIds) {
                    if (next.contains(id)) {
                      next.remove(id);
                    } else {
                      next.add(id);
                    }
                  }
                  selected.value = next;
                },
          onDeleteSelected: notImplemented,
          onEnableSelected: notImplemented,
          onDisableSelected: notImplemented,
        ),
        SizedBox(height: AppSizes.sectionGap),
        Expanded(
          child: _Body(
            scriptsAsync: scriptsAsync,
            pageItems: pageItems,
            selected: selected,
          ),
        ),
        SizedBox(height: AppSizes.sectionGap),
        ScriptListPagination(
          currentPage: clampedPage,
          totalPages: totalPages,
          onPageSelected: (page) => currentPage.value = page,
        ),
      ],
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({
    required this.scriptsAsync,
    required this.pageItems,
    required this.selected,
  });

  final AsyncValue<List<InjectScript>> scriptsAsync;
  final List<InjectScript> pageItems;
  final ValueNotifier<Set<String>> selected;

  @override
  Widget build(BuildContext context) {
    if (scriptsAsync.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }
    if (scriptsAsync.hasError) {
      return Center(child: Text(scriptsAsync.error.toString()));
    }
    if (pageItems.isEmpty) {
      return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.inventory_2_outlined,
              size: 48,
              color: Theme.of(context).colorScheme.onSurfaceVariant,
            ),
            SizedBox(height: AppSizes.itemGap),
            Text(
              context.l10n.noScripts,
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: Theme.of(context).colorScheme.onSurfaceVariant,
              ),
            ),
          ],
        ),
      );
    }
    return ListView.separated(
      padding: EdgeInsets.zero,
      itemCount: pageItems.length,
      separatorBuilder: (_, __) => SizedBox(height: AppSizes.itemGap),
      itemBuilder: (context, index) {
        final script = pageItems[index];
        final isSelected = selected.value.contains(script.id);
        return ScriptListItem(
          script: script,
          selected: isSelected,
          onSelectedChanged: (checked) {
            final next = {...selected.value};
            if (checked) {
              next.add(script.id);
            } else {
              next.remove(script.id);
            }
            selected.value = next;
          },
        );
      },
    );
  }
}
