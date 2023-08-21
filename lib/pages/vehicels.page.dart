import 'package:auto_route/auto_route.dart';
import 'package:autorola_assignment/widgets/common/default_scaffold.dart';
import 'package:flutter/widgets.dart';

@RoutePage()
class VehiclesPage extends StatelessWidget {
  final String makes;
  final String fuelTypes;
  final String countries;
  const VehiclesPage({
    Key? key,
    @PathParam() required this.makes,
    @PathParam() required this.fuelTypes,
    @PathParam() required this.countries,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const DefaultScaffold(
      body: Column(
        children: [],
      ),
    );
  }
}
