import 'dart:async';

import 'package:autorola_assignment/api/home/home_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final makesNotifierProvider =
    AsyncNotifierProvider<MakesNotifier, List<String>?>(MakesNotifier.new);

class MakesNotifier extends AsyncNotifier<List<String>?> {
  late HomeService homeService;
  @override
  FutureOr<List<String>?> build() {
    homeService = HomeService();
    return homeService.getMakes();
  }
}
