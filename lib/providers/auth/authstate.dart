import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:autorola_assignment/providers/auth/authtokens.dart';

part 'authstate.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.authorized(AuthTokens tokens) = Authorized;
  const factory AuthState.unauthorized() = Unauthorized;
}
