// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    HomePageRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const HomePage());
    },
    MyModularAppRoute.name: (routeData) {
      final args = routeData.argsAs<MyModularAppRouteArgs>(
          orElse: () => const MyModularAppRouteArgs());
      return MaterialPageX<dynamic>(
          routeData: routeData, child: MyModularApp(key: args.key));
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(HomePageRoute.name, path: '/'),
        RouteConfig(MyModularAppRoute.name, path: '/modular')
      ];
}

/// generated route for
/// [HomePage]
class HomePageRoute extends PageRouteInfo<void> {
  const HomePageRoute() : super(HomePageRoute.name, path: '/');

  static const String name = 'HomePageRoute';
}

/// generated route for
/// [MyModularApp]
class MyModularAppRoute extends PageRouteInfo<MyModularAppRouteArgs> {
  MyModularAppRoute({Key? key})
      : super(MyModularAppRoute.name,
            path: '/modular', args: MyModularAppRouteArgs(key: key));

  static const String name = 'MyModularAppRoute';
}

class MyModularAppRouteArgs {
  const MyModularAppRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'MyModularAppRouteArgs{key: $key}';
  }
}
