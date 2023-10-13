import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tudu/app/pages/home/home_page.dart';
import 'package:tudu/config/constants/route_paths.dart';

class AppRouter {
  // Builders
  static Widget _home(BuildContext context, GoRouterState state) => const HomePage();

  // Router
  static final GoRouter _router = GoRouter(
    routes: <GoRoute>[
      GoRoute(path: RoutePaths.root, builder: _home),
    ],
  );

  static GoRouter get router => _router;
}
