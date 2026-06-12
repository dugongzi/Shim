import 'package:codex_z/features/home/presentation/pages/home_page.dart';
import 'package:codex_z/features/settings/presentation/pages/settings_page.dart';
import 'package:go_router/go_router.dart';

class HomeRoute {
  HomeRoute._();

  static const home = '/home';
  static const settings = '/settings';
}

List<GoRoute> homeRoutes = [
  GoRoute(path: HomeRoute.home, builder: (context, state) => const HomePage()),
  GoRoute(
    path: HomeRoute.settings,
    builder: (context, state) => const SettingsPage(),
  ),
];
