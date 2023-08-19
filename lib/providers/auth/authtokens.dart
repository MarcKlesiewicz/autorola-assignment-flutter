import 'package:freezed_annotation/freezed_annotation.dart';

part 'authtokens.freezed.dart';
part 'authtokens.g.dart';

@freezed
class AuthTokens with _$AuthTokens {
  factory AuthTokens(String accessToken, String refreshToken) = _AuthTokens;

  factory AuthTokens.fromJson(Map<String, dynamic> json) =>
      _$AuthTokensFromJson(json);
}
