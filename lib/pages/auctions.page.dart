import 'package:auto_route/auto_route.dart';
import 'package:autorola_assignment/utils/utils.dart';
import 'package:autorola_assignment/widgets/auction/auction_section.dart';
import 'package:autorola_assignment/widgets/common/default_scaffold.dart';
import 'package:flutter/material.dart';

@RoutePage()
class AuctionsPage extends StatelessWidget {
  const AuctionsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const DefaultScaffold(
      body: Column(
        children: [
          Gaps.lgV,
          AuctionSection(),
        ],
      ),
    );
  }
}
