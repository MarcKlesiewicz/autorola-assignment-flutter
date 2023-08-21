// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:autorola_assignment/pages/auctions.page.dart' as _i1;
import 'package:autorola_assignment/pages/home.page.dart' as _i2;

abstract class $AppRouter extends _i3.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    AuctionsRoute.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AuctionsPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.HomePage(),
      );
    },
  };
}

/// generated route for
/// [_i1.AuctionsPage]
class AuctionsRoute extends _i3.PageRouteInfo<void> {
  const AuctionsRoute({List<_i3.PageRouteInfo>? children})
      : super(
          AuctionsRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuctionsRoute';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}

/// generated route for
/// [_i2.HomePage]
class HomeRoute extends _i3.PageRouteInfo<void> {
  const HomeRoute({List<_i3.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}
