// TODO: api client swagger gen example

// import 'dart:io';

// import 'package:api/api.dart';
// import 'package:dio/dio.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:synchronized/synchronized.dart' as synchronized;
// import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
// import 'package:autorola_assignment/providers/auth/api_endpoint_provider.dart';
// import 'package:autorola_assignment/providers/auth/auth_provider.dart';

// final synchronized.Lock lock = synchronized.Lock();

// final clientProvider = Provider<Api>((ref) {
//   final client = Api(
//     basePathOverride: ref.watch(apiEndpointProvider),
//     interceptors: [
//       InterceptorsWrapper(
//         onRequest: (options, handler) async {
//           final hasInternet =
//               await InternetConnectionCheckerPlus().hasConnection;
//           if (hasInternet) {
//             handler.next(options);
//           } else {
//             handler.reject(DioException(
//               requestOptions: options,
//               error: const SocketException("no internet"),
//             ));
//           }
//         },
//       ),
//       InterceptorsWrapper(
//         onRequest: (options, handler) async {
//           var authTokens = await AuthStateNotifier.tokenRefresh(ref);
//           options.headers["Authorization"] =
//               "Bearer ${authTokens?.accessToken}";
//           return handler.next(options);
//         },
//       ),
//     ],
//   );
//   return client;
// });

// final userProvider = Provider<UserApi>((ref) {
//   return ref.read(clientProvider).getUserApi();
// });
