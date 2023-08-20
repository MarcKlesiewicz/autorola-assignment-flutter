import 'dart:async';

import 'package:autorola_assignment/api/auction/auction_service.dart';
import 'package:autorola_assignment/models/articlesmodel.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final auctionsNotifierProvider =
    AsyncNotifierProvider<AuctionsNotifier, List<ArticlesModel>?>(
        AuctionsNotifier.new);

class AuctionsNotifier extends AsyncNotifier<List<ArticlesModel>?> {
  late AuctionService auctionService;
  @override
  FutureOr<List<ArticlesModel>?> build() {
    auctionService = AuctionService();
    return auctionService.getAuctions();
  }
}
