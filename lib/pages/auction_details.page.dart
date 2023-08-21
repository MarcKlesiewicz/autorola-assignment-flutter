import 'package:auto_route/auto_route.dart';
import 'package:autorola_assignment/models/articlesmodel.dart';
import 'package:autorola_assignment/providers/auctions_provider.dart';
import 'package:autorola_assignment/utils/list_extensions.dart';
import 'package:autorola_assignment/utils/utils.dart';
import 'package:autorola_assignment/widgets/common/default_scaffold.dart';
import 'package:autorola_assignment/widgets/dialogs/show_default_dialog.dart';
import 'package:autorola_assignment/widgets/text/styled_text.dart';
import 'package:autorola_assignment/widgets/text/text_settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class AuctionDetailsPage extends StatelessWidget {
  // final int auctionId;
  // final AuctionModel auction;
  const AuctionDetailsPage({
    Key? key,
    // @PathParam() required this.auctionId,
    // required this.auction,
  }) : super(key: key);

  //TODO: todo load articles based on the the id
  @override
  Widget build(BuildContext context) {
    return DefaultScaffold(
      body: Column(
        children: [
          Gaps.lgV,
          Image.network(
            'assets/images/logo_responsive_autorola.png',
            height: 30,
          ),
          Gaps.mdV,
          const TitleLarge('auction.title,'),
          Gaps.lgV,
          SizedBox(
              width: 992,
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.2),
                        borderRadius: BorderRadiuses.r01,
                      ),
                      child: IconButton.filled(
                        onPressed: () => showNotImplementedSnackBar(context),
                        icon: const Icon(Icons.grid_view_sharp),
                        splashRadius: 1,
                      ),
                    ),
                  ),
                  const Divider(),
                ],
              )),
          const _ArticelsSection(),
        ],
      ),
    );
  }
}

class _ArticelsSection extends ConsumerStatefulWidget {
  const _ArticelsSection({Key? key}) : super(key: key);

  @override
  ConsumerState<_ArticelsSection> createState() => _ArticelsSectionState();
}

class _ArticelsSectionState extends ConsumerState<_ArticelsSection> {
  @override
  Widget build(BuildContext context) {
    final articles = ref.watch(auctionsNotifierProvider);
    return articles.when(
      data: (data) {
        return ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 992),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TitleSmall('Showing ${data!.length}'),
                  Gaps.smH,
                  const Icon(Icons.drive_eta)
                ],
              ),
              ...data.map((e) => _ArticleCard(article: e)).toList()
            ],
          ),
        );
      },
      error: (error, stackTrace) {
        return const LabelMedium.secondary('Could not load articles');
      },
      loading: () {
        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}

class _ArticleCard extends StatelessWidget {
  final ArticlesModel article;
  const _ArticleCard({Key? key, required this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () => showNotImplementedSnackBar(context),
        child: Card(
          child: Padding(
            padding: Insets.a02,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _ArticleImage(
                  pictureUrl: article.pictureUrl,
                ),
                SizedBox(
                  width: 200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TitleMedium(
                        article.headline,
                        settings: TextSettings(
                          color: Colors.lightBlue,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      TitleSmall.secondary(
                        article.details,
                        settings: TextSettings(
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      TitleSmall.secondary(article.formattedMileage),
                    ].gap(Gaps.smV),
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset('assets/flags/${article.countryCode}.gif'),
                    Gaps.xsH,
                    TitleSmall.secondary(
                        '${article.formattedLocation.split('(').first} \n ${article.formattedLocation.split(' ').last} ')
                  ],
                ),
                TitleSmall.secondary(article.auctionTitle),
                Row(
                  children: [
                    const Icon(
                      Icons.timer_rounded,
                      size: 20,
                    ),
                    Gaps.xsH,
                    TitleMedium.secondary(article.formattedEndtime),
                  ],
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.gavel_sharp,
                      size: 20,
                    ),
                    Gaps.xsH,
                    TitleSmall.secondary(article.formattedCurrentPrice),
                  ],
                ),
              ].gap(Gaps.mdH),
            ),
          ),
        ),
      ),
    );
  }
}

class _ArticleImage extends StatefulWidget {
  final String? pictureUrl;
  const _ArticleImage({
    Key? key,
    this.pictureUrl,
  }) : super(key: key);

  @override
  State<_ArticleImage> createState() => _ArticleImageState();
}

class _ArticleImageState extends State<_ArticleImage> {
  bool isLiked = false;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 75,
          width: 100,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
              borderRadius: BorderRadiuses.r01,
              color: Colors.grey.withOpacity(0.5)),
          child: widget.pictureUrl != null
              ? Image.network(
                  widget.pictureUrl!,
                  fit: BoxFit.cover,
                )
              : const Icon(Icons.image_not_supported_outlined),
        ),
        Positioned(
          right: 0,
          child: IconButton(
            splashRadius: 1,
            onPressed: () {
              setState(() {
                isLiked = !isLiked;
              });
            },
            icon: Icon(
              isLiked ? Icons.star : Icons.star_border,
              color: isLiked ? Colors.amber : Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
