// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:template/pages/flutter_splash_screen.dart' as _i1;
import 'package:template/pages/root.page.dart' as _i5;
import 'package:template/pages/root/nested1.page.dart' as _i2;
import 'package:template/pages/root/nested2.page.dart' as _i3;
import 'package:template/pages/root/nested3.page.dart' as _i4;

abstract class $AppRouter extends _i6.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    FlutterSplashRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.FlutterSplashScreen(),
      );
    },
    NestedRoute1.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.NestedPage1(),
      );
    },
    NestedRoute2.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.NestedPage2(),
      );
    },
    NestedRoute3.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.NestedPage3(),
      );
    },
    RootRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.RootPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.FlutterSplashScreen]
class FlutterSplashRoute extends _i6.PageRouteInfo<void> {
  const FlutterSplashRoute({List<_i6.PageRouteInfo>? children})
      : super(
          FlutterSplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'FlutterSplashRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i2.NestedPage1]
class NestedRoute1 extends _i6.PageRouteInfo<void> {
  const NestedRoute1({List<_i6.PageRouteInfo>? children})
      : super(
          NestedRoute1.name,
          initialChildren: children,
        );

  static const String name = 'NestedRoute1';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i3.NestedPage2]
class NestedRoute2 extends _i6.PageRouteInfo<void> {
  const NestedRoute2({List<_i6.PageRouteInfo>? children})
      : super(
          NestedRoute2.name,
          initialChildren: children,
        );

  static const String name = 'NestedRoute2';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i4.NestedPage3]
class NestedRoute3 extends _i6.PageRouteInfo<void> {
  const NestedRoute3({List<_i6.PageRouteInfo>? children})
      : super(
          NestedRoute3.name,
          initialChildren: children,
        );

  static const String name = 'NestedRoute3';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i5.RootPage]
class RootRoute extends _i6.PageRouteInfo<void> {
  const RootRoute({List<_i6.PageRouteInfo>? children})
      : super(
          RootRoute.name,
          initialChildren: children,
        );

  static const String name = 'RootRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}
