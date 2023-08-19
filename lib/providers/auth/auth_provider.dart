// TODO:authstate provider example

// import 'dart:convert';
// import 'dart:developer';

// import 'package:dio/dio.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:flutter_secure_storage/flutter_secure_storage.dart';
// import 'package:template/providers/api/client_provider.dart';
// import 'package:template/providers/auth/api_endpoint_provider.dart';
// import 'package:template/providers/auth/authstate.dart';
// import 'package:template/providers/auth/authtokens.dart';
// import 'package:template/providers/auth/jwt_payload.dart';
// import 'package:template/providers/phoenix_provider.dart';

// const accessTokenKey = "accessToken";
// const refreshTokenKey = "refreshToken";

// final authStateProvider = AsyncNotifierProvider<AuthStateNotifier, AuthState>(
//   AuthStateNotifier.new,
// );

// final jwtPayloadProvider = FutureProvider<JwtPayload?>((ref) async {
//   final tokens = await ref.watch(_authTokensProvider.future);

//   if (tokens?.accessToken != null) {
//     return JwtPayload.of(tokens!.accessToken);
//   } else {
//     return null;
//   }
// });

// class AuthStateNotifier extends AsyncNotifier<AuthState> {
//   @override
//   Future<AuthState> build() async {
//     var tokens = await ref.watch(_authTokensProvider.future);
//     return tokens != null
//         ? AuthState.authorized(tokens)
//         : const AuthState.unauthorized();
//   }

//   Future<void> logout() async {
//     ref.read(_authTokensProvider.notifier).clear();
//     ref.read(phoenixProvider)();
//   }

//   Future<AuthTokens?> login(EmailLoginInput input, BuildContext context) async {
//     var response = await ref
//         .read(authApi)
//         .postEmailLogin(emailLoginInput: input)
//         .onError((error, stackTrace) async {
//       throw error!;
//     });
//     await ref
//         .read(_authTokensProvider.notifier)
//         .set(response.data!.accessToken, response.data!.refreshToken);
//     return response.data!;
//   }

//   static Future<AuthTokens?> tokenRefresh(ProviderRef ref) async {
//     await lock.synchronized(() async {
//       var payload = await ref.read(jwtPayloadProvider.future);

//       if (payload == null) {
//         return;
//       }

//       if (payload.validFor.inSeconds <= 5) {
//         log("Auth token about to expire, refreshing");
//         final tokens = await ref.read(_authTokensProvider.future);

//         try {
//           var res = await Dio().post(
//             "${ref.read(apiEndpointProvider)}/auth/refresh-auth-tokens",
//             data: jsonEncode({"refreshToken": tokens!.refreshToken}),
//           );

//           var newAccessToken = res.data["accessToken"];
//           var newRefreshToken = res.data["refreshToken"];

//           await ref.read(_authTokensProvider.notifier).set(
//                 newAccessToken,
//                 newRefreshToken,
//               );
//           return newAccessToken;
//         } catch (error) {
//           ref.read(authStateProvider.notifier).logout();
//         }
//       }
//     });
//     return await ref.read(_authTokensProvider.future);
//   }
// }

// final _authTokensProvider =
//     AsyncNotifierProvider<_AccessTokenNotifier, AuthTokens?>(
//         _AccessTokenNotifier.new);

// class _AccessTokenNotifier extends AsyncNotifier<AuthTokens?> {
//   final _storage = const FlutterSecureStorage();
//   @override
//   Future<AuthTokens?> build() async {
//     final accessToken = await _storage.read(key: accessTokenKey);
//     final refreshToken = await _storage.read(key: refreshTokenKey);

//     if (accessToken != null) {
//       ref.read(clientProvider).setBearerAuth("Bearer", accessToken);
//     }

//     return _createToken(accessToken, refreshToken);
//   }

//   AuthTokens? _createToken(String? accessToken, String? refreshToken) {
//     if (accessToken == null || refreshToken == null) {
//       return null;
//     }

//     var builder = AuthTokensBuilder()
//       ..accessToken = accessToken
//       ..refreshToken = refreshToken;

//     return builder.build();
//   }

//   Future<void> clear() async {
//     await _storage.delete(key: accessTokenKey);
//     await _storage.delete(key: refreshTokenKey);
//     state = const AsyncData(null);
//   }

//   Future<void> set(String accessToken, String refreshToken) async {
//     await _storage.write(key: accessTokenKey, value: accessToken);
//     await _storage.write(key: refreshTokenKey, value: refreshToken);
//     state = AsyncData(_createToken(accessToken, refreshToken));
//   }
// }
