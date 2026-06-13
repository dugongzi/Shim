import 'package:shim/common/widgets/surface_card.dart';
import 'package:shim/common/widgets/workspace_surface.dart';
import 'package:shim/core/constants/app_sizes.dart';
import 'package:shim/core/extensions/context_extensions.dart';
import 'package:shim/features/home/presentation/widgets/inject_button.dart';
import 'package:shim/features/home/presentation/widgets/inject_panel_header.dart';
import 'package:shim/features/home/presentation/widgets/inject_status_strip.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DashboardTab extends HookConsumerWidget {
  const DashboardTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lastInjectedAt = useState<DateTime?>(null);

    return WorkspaceSurface(
      child: Padding(
        padding: EdgeInsets.all(AppSizes.pagePadding),
        child: Align(
          alignment: Alignment.topLeft,
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 560),
            child: SurfaceCard(
              padding: EdgeInsets.all(24.cw(min: 18, max: 28)),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const InjectPanelHeader(),
                  SizedBox(height: AppSizes.sectionGap),
                  Text(
                    context.l10n.injectPanelDescription,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Theme.of(context).colorScheme.onSurfaceVariant,
                    ),
                  ),
                  SizedBox(height: AppSizes.sectionGap),
                  InjectStatusStrip(lastInjectedAt: lastInjectedAt.value),
                  SizedBox(height: AppSizes.sectionGap),
                  InjectButton(
                    debugPort: 9229,
                    onInjected: (time) => lastInjectedAt.value = time,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
