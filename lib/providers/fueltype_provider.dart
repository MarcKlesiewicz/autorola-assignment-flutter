import 'dart:async';

import 'package:autorola_assignment/api/home/home_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final fueltypeNotifierProvider =
    AsyncNotifierProvider<FueltypeNotifier, List<String>?>(
        FueltypeNotifier.new);

class FueltypeNotifier extends AsyncNotifier<List<String>?> {
  late HomeService homeService;
  @override
  FutureOr<List<String>?> build() {
    homeService = HomeService();
    return homeService.getFueltypes();
  }
}
