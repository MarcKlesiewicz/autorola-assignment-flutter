import 'dart:convert';

import 'package:autorola_assignment/models/articlesmodel.dart';
import 'package:autorola_assignment/models/auctionmodel.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final auctionServiceProvider = StateProvider<AuctionService>((ref) {
  return AuctionService();
});

class AuctionService {
  //some api client here

  AuctionService();

  Future<List<ArticlesModel>?> getAuctions() async {
    try {
      //async get request stored inb a reponse variabel

      //switch statement on response.statuscode

      final response = await rootBundle.loadString('assets/data/auction.json');

      final Map<String, dynamic> data = jsonDecode(response);
      final List<dynamic> articlesData = data['articles'];

      return articlesData.map((article) {
        return ArticlesModel.fromJson(article);
      }).toList();
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<List<AuctionModel>?> getHomeAuctions(bool isDomestic) async {
    try {
      //async get request stored inb a reponse variabel

      //switch statement on response.statuscode

      final response = await rootBundle.loadString('assets/data/auctions.json');

      final Map<String, dynamic> data = jsonDecode(response);
      final List<dynamic> auctionData =
          data[isDomestic ? 'domesticAuctions' : 'internationalAuctions'];

      return auctionData.map((auction) {
        return AuctionModel.fromJson(auction);
      }).toList();
    } catch (e) {
      throw Exception(e);
    }
  }
}
