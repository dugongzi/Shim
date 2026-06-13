import 'package:shim/core/constants/app_sizes.dart';
import 'package:shim/core/extensions/context_extensions.dart';
import 'package:flutter/material.dart';

class InjectStatusStrip extends StatelessWidget {
  const InjectStatusStrip({super.key, this.lastInjectedAt});

  final DateTime? lastInjectedAt;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final at = lastInjectedAt;
    final text = at == null
        ? context.l10n.injectReadyStatus
        : context.l10n.injectedAtStatus(_formatClock(at));

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12.cw(min: 10, max: 14),
        vertical: 10.ch(min: 8, max: 12),
      ),
      decoration: BoxDecoration(
        color: colorScheme.primary.withValues(alpha: 0.08),
        borderRadius: BorderRadius.circular(AppSizes.cardRadius),
        border: Border.all(color: colorScheme.primary.withValues(alpha: 0.18)),
      ),
      child: Row(
        children: [
          Icon(
            Icons.radio_button_checked_rounded,
            color: colorScheme.primary,
            size: 16,
          ),
          SizedBox(width: AppSizes.itemGap),
          Expanded(
            child: Text(
              text,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.labelLarge?.copyWith(
                color: colorScheme.onSurface,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

String _formatClock(DateTime at) {
  final hh = at.hour.toString().padLeft(2, '0');
  final mm = at.minute.toString().padLeft(2, '0');
  final ss = at.second.toString().padLeft(2, '0');
  return '$hh:$mm:$ss';
}
