import 'package:auto_route/auto_route.dart';
import 'package:autorola_assignment/utils/utils.dart';
import 'package:autorola_assignment/widgets/common/default_scaffold.dart';
import 'package:autorola_assignment/widgets/home/home_auction_section.dart';
import 'package:autorola_assignment/widgets/home/quick_search_filter.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const DefaultScaffold(
      body: Column(children: [
        QuickSearchFilter(),
        Gaps.lgV,
        HomeAuctionSection(),
      ]),
    );
  }
}
