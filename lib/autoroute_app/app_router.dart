import 'package:auto_route/auto_route.dart';
import 'package:autoroute_modular_navigation/autoroute_app/pages/home_page.dart';
import 'package:autoroute_modular_navigation/modular_app/my_modular_app.dart';
import 'package:flutter/material.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(page: HomePage, initial: true),
    AutoRoute(
      page: MyModularApp, // Modular app with its own routes
      path: '/modular',
    ),
  ],
)
// extend the generated private router
class AppRouter extends _$AppRouter {}
