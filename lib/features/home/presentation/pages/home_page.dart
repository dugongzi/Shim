import 'package:codex_z/core/extensions/context_extensions.dart';
import 'package:codex_z/core/routes/routes/home_route.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.l10n.homeTitle),
        actions: [
          IconButton(
            tooltip: context.l10n.settings,
            onPressed: () => context.go(HomeRoute.settings),
            icon: const Icon(Icons.settings_outlined),
          ),
        ],
      ),
      body: Center(child: Text(context.l10n.welcome)),
    );
  }
}
