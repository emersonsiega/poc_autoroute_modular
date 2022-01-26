import 'package:autoroute_modular_navigation/autoroute_app/app_router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

final _appRouter = AppRouter();

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
