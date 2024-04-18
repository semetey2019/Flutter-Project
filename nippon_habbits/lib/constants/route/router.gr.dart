// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:nippon_habbits/home/home_screen.dart' as _i1;
import 'package:nippon_habbits/home/intro.dart' as _i2;

abstract class $AppRouter extends _i3.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      final args =
          routeData.argsAs<HomeRouteArgs>(orElse: () => const HomeRouteArgs());
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.HomePage(key: args.key),
      );
    },
    IntroRoute.name: (routeData) {
      final args = routeData.argsAs<IntroRouteArgs>(
          orElse: () => const IntroRouteArgs());
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.IntroScreen(key: args.key),
      );
    },
  };
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i3.PageRouteInfo<HomeRouteArgs> {
  HomeRoute({
    dynamic key,
    List<_i3.PageRouteInfo>? children,
  }) : super(
          HomeRoute.name,
          args: HomeRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i3.PageInfo<HomeRouteArgs> page =
      _i3.PageInfo<HomeRouteArgs>(name);
}

class HomeRouteArgs {
  const HomeRouteArgs({this.key});

  final dynamic key;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.IntroScreen]
class IntroRoute extends _i3.PageRouteInfo<IntroRouteArgs> {
  IntroRoute({
    dynamic key,
    List<_i3.PageRouteInfo>? children,
  }) : super(
          IntroRoute.name,
          args: IntroRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'IntroRoute';

  static const _i3.PageInfo<IntroRouteArgs> page =
      _i3.PageInfo<IntroRouteArgs>(name);
}

class IntroRouteArgs {
  const IntroRouteArgs({this.key});

  final dynamic key;

  @override
  String toString() {
    return 'IntroRouteArgs{key: $key}';
  }
}
