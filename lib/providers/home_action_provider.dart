import 'dart:async';

import 'package:autorola_assignment/api/auction/auction_service.dart';
import 'package:autorola_assignment/models/articlesmodel.dart';
import 'package:autorola_assignment/models/auctionmodel.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final homeAuctionNotifierProvider =
    AsyncNotifierProviderFamily<HomeAuctionNotifier, List<AuctionModel>?, bool>(
        HomeAuctionNotifier.new);

class HomeAuctionNotifier
    extends FamilyAsyncNotifier<List<AuctionModel>?, bool> {
  late AuctionService auctionService;
  @override
  FutureOr<List<AuctionModel>?> build(bool arg) {
    auctionService = AuctionService();
    return auctionService.getHomeAuctions(arg);
  }
}
