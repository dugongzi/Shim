import 'package:codex_z/common/pages/error_page.dart';
import 'package:codex_z/core/routes/routes/home_route.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final appRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: HomeRoute.home,
    debugLogDiagnostics: true,
    routes: [
      ...homeRoutes,
      GoRoute(
        path: '/:notFound(.*)',
        builder: (context, state) {
          return ErrorPage(error: state.matchedLocation);
        },
      ),
    ],
    errorBuilder: (context, state) {
      return ErrorPage(error: state.error ?? state.uri.toString());
    },
  );
});
