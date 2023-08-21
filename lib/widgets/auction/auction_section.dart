import 'package:autorola_assignment/models/auctionmodel.dart';
import 'package:autorola_assignment/providers/home_action_provider.dart';
import 'package:autorola_assignment/utils/list_extensions.dart';
import 'package:autorola_assignment/utils/utils.dart';
import 'package:autorola_assignment/widgets/text/styled_text.dart';
import 'package:autorola_assignment/widgets/text/text_settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AuctionSection extends ConsumerWidget {
  const AuctionSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final domesticAuctions = ref.watch(homeAuctionNotifierProvider(true));
    final internationalAuctions = ref.watch(homeAuctionNotifierProvider(false));
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 992),
      child: Column(
        children: [
          domesticAuctions.when(
            data: (data) {
              if (data!.isNotEmpty) {
                return Column(
                  children: [
                    TitleLarge.secondary(
                      'Domestic auctions',
                      settings: TextSettings(
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                    Gaps.xsV,
                    LabelLarge.secondary(
                      'Below you will find current auctions with vehicles from various suppliers.',
                      settings: TextSettings(
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                    Gaps.mdV,
                    _AuctionList(auctions: data),
                  ],
                );
              } else {
                return const SizedBox();
              }
            },
            error: (error, stackTrace) =>
                const LabelSmall.onPrimary('Could not load domestic auction'),
            loading: () => const Center(child: CircularProgressIndicator()),
          ),
          Gaps.lgV,
          internationalAuctions.when(
            data: (data) {
              if (data!.isNotEmpty) {
                return Column(
                  children: [
                    TitleLarge.secondary(
                      'Internaltional auctions',
                      settings: TextSettings(
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                    Gaps.xsV,
                    LabelLarge.secondary(
                      'Other current auctions running throughout Autorola worldwide.',
                      settings: TextSettings(
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                    Gaps.mdV,
                    _AuctionList(auctions: data),
                  ],
                );
              } else {
                return const SizedBox();
              }
            },
            error: (error, stackTrace) => const LabelSmall.onPrimary(
                'Could not load internaltional auction'),
            loading: () => const Center(child: CircularProgressIndicator()),
          )
        ],
      ),
    );
  }
}

class _AuctionList extends StatelessWidget {
  final List<AuctionModel> auctions;
  const _AuctionList({
    Key? key,
    required this.auctions,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: auctions.map((e) => _AuctionCard(auction: e)).toList(),
    );
  }
}

class _AuctionCard extends StatelessWidget {
  final AuctionModel auction;
  const _AuctionCard({
    Key? key,
    required this.auction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {},
        child: Card(
          child: Padding(
            padding: Insets.a05,
            child: Row(
              children: [
                Image.network(
                  'assets/images/logo_responsive_autorola.png',
                  height: 30,
                ),
                SizedBox(
                  width: 300,
                  child: TitleMedium(
                    auction.title,
                    settings: TextSettings(
                      color: Colors.lightBlue,
                    ),
                  ),
                ),
                const Spacer(),
                Row(
                  children: [
                    Image.asset('assets/flags/${auction.countryCode}.gif'),
                    Gaps.xsH,
                    TitleMedium.secondary(auction.countryCode)
                  ],
                ),
                Row(
                  children: [
                    TitleMedium.secondary(auction.numberOfCars),
                    Gaps.xsH,
                    const Icon(
                      Icons.drive_eta,
                      size: 20,
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.timer_rounded,
                      size: 20,
                    ),
                    Gaps.xsH,
                    TitleMedium.secondary(auction.timeFormatted),
                  ],
                ),
              ].gap(Gaps.lgH),
            ),
          ),
        ),
      ),
    );
  }
}
