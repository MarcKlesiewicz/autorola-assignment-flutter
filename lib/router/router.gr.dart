// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:autorola_assignment/pages/auctions.page.dart' as _i1;
import 'package:autorola_assignment/pages/home.page.dart' as _i2;
import 'package:autorola_assignment/pages/vehicels.page.dart' as _i3;
import 'package:flutter/widgets.dart' as _i5;

abstract class $AppRouter extends _i4.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    AuctionsRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AuctionsPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.HomePage(),
      );
    },
    VehiclesRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<VehiclesRouteArgs>(
          orElse: () => VehiclesRouteArgs(
                makes: pathParams.getString('makes'),
                fuelTypes: pathParams.getString('fuelTypes'),
                countries: pathParams.getString('countries'),
              ));
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.VehiclesPage(
          key: args.key,
          makes: args.makes,
          fuelTypes: args.fuelTypes,
          countries: args.countries,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.AuctionsPage]
class AuctionsRoute extends _i4.PageRouteInfo<void> {
  const AuctionsRoute({List<_i4.PageRouteInfo>? children})
      : super(
          AuctionsRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuctionsRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i2.HomePage]
class HomeRoute extends _i4.PageRouteInfo<void> {
  const HomeRoute({List<_i4.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i3.VehiclesPage]
class VehiclesRoute extends _i4.PageRouteInfo<VehiclesRouteArgs> {
  VehiclesRoute({
    _i5.Key? key,
    required String makes,
    required String fuelTypes,
    required String countries,
    List<_i4.PageRouteInfo>? children,
  }) : super(
          VehiclesRoute.name,
          args: VehiclesRouteArgs(
            key: key,
            makes: makes,
            fuelTypes: fuelTypes,
            countries: countries,
          ),
          rawPathParams: {
            'makes': makes,
            'fuelTypes': fuelTypes,
            'countries': countries,
          },
          initialChildren: children,
        );

  static const String name = 'VehiclesRoute';

  static const _i4.PageInfo<VehiclesRouteArgs> page =
      _i4.PageInfo<VehiclesRouteArgs>(name);
}

class VehiclesRouteArgs {
  const VehiclesRouteArgs({
    this.key,
    required this.makes,
    required this.fuelTypes,
    required this.countries,
  });

  final _i5.Key? key;

  final String makes;

  final String fuelTypes;

  final String countries;

  @override
  String toString() {
    return 'VehiclesRouteArgs{key: $key, makes: $makes, fuelTypes: $fuelTypes, countries: $countries}';
  }
}
