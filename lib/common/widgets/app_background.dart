import 'package:codex_z/core/extensions/context_extensions.dart';
import 'package:flutter/material.dart';

class AppBackground extends StatelessWidget {
  const AppBackground({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final base = context.isDark
        ? const Color(0xFF101214)
        : const Color(0xFFF6FAFB);

    return DecoratedBox(
      decoration: BoxDecoration(
        color: base,
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            colorScheme.primary.withValues(alpha: context.isDark ? 0.12 : 0.10),
            base,
            colorScheme.secondary.withValues(
              alpha: context.isDark ? 0.10 : 0.08,
            ),
          ],
        ),
      ),
      child: child,
    );
  }
}
