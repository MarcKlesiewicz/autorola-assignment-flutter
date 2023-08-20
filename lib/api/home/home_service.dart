import 'dart:convert';
import 'dart:js_interop';

import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final homeServiceProvider = StateProvider<HomeService>((ref) {
  return HomeService();
});

class HomeService {
  //some api client here

  HomeService();

  Future<List<String>?> getMakes() async {
    try {
      //async get request stored inb a reponse variabel

      //switch statement on response.statuscode

      final response = await rootBundle.loadString('assets/data/makes.json');
      Map<String, dynamic> jsonData = json.decode(response);

      List<dynamic> data = jsonData['data'];
      return data.map((item) => item['value'] as String).toList();
    } catch (e) {
      throw Exception(e);
    }
  }
}
