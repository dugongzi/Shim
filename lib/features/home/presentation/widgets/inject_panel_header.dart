import 'package:shim/core/constants/app_sizes.dart';
import 'package:shim/core/extensions/context_extensions.dart';
import 'package:flutter/material.dart';

class InjectPanelHeader extends StatelessWidget {
  const InjectPanelHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 48.cr(min: 42, max: 54),
          height: 48.cr(min: 42, max: 54),
          decoration: BoxDecoration(
            color: colorScheme.primary.withValues(alpha: 0.14),
            borderRadius: BorderRadius.circular(AppSizes.cardRadius + 4),
          ),
          child: Icon(
            Icons.input_rounded,
            color: colorScheme.primary,
            size: 26.cr(min: 22, max: 30),
          ),
        ),
        SizedBox(width: AppSizes.sectionGap),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                context.l10n.injectPanelTitle,
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.w900,
                ),
              ),
              SizedBox(height: 4.ch(min: 3, max: 6)),
              Text(
                context.l10n.homeTitle,
                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                  color: colorScheme.onSurfaceVariant,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
