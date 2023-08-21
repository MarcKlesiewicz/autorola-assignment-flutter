// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:autorola_assignment/pages/auction_details.page.dart' as _i1;
import 'package:autorola_assignment/pages/auctions.page.dart' as _i2;
import 'package:autorola_assignment/pages/home.page.dart' as _i3;
import 'package:autorola_assignment/pages/vehicels.page.dart' as _i4;
import 'package:flutter/widgets.dart' as _i6;

abstract class $AppRouter extends _i5.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    AuctionDetailsRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AuctionDetailsPage(),
      );
    },
    AuctionsRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.AuctionsPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.HomePage(),
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
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.VehiclesPage(
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
/// [_i1.AuctionDetailsPage]
class AuctionDetailsRoute extends _i5.PageRouteInfo<void> {
  const AuctionDetailsRoute({List<_i5.PageRouteInfo>? children})
      : super(
          AuctionDetailsRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuctionDetailsRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i2.AuctionsPage]
class AuctionsRoute extends _i5.PageRouteInfo<void> {
  const AuctionsRoute({List<_i5.PageRouteInfo>? children})
      : super(
          AuctionsRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuctionsRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i3.HomePage]
class HomeRoute extends _i5.PageRouteInfo<void> {
  const HomeRoute({List<_i5.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i4.VehiclesPage]
class VehiclesRoute extends _i5.PageRouteInfo<VehiclesRouteArgs> {
  VehiclesRoute({
    _i6.Key? key,
    required String makes,
    required String fuelTypes,
    required String countries,
    List<_i5.PageRouteInfo>? children,
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

  static const _i5.PageInfo<VehiclesRouteArgs> page =
      _i5.PageInfo<VehiclesRouteArgs>(name);
}

class VehiclesRouteArgs {
  const VehiclesRouteArgs({
    this.key,
    required this.makes,
    required this.fuelTypes,
    required this.countries,
  });

  final _i6.Key? key;

  final String makes;

  final String fuelTypes;

  final String countries;

  @override
  String toString() {
    return 'VehiclesRouteArgs{key: $key, makes: $makes, fuelTypes: $fuelTypes, countries: $countries}';
  }
}
