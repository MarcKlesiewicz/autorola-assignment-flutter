import 'dart:convert';

class JwtPayload {
  final String token;
  final String userId;
  final DateTime issuedAt;
  final DateTime expiration;
  final Map<String, dynamic> account;

  JwtPayload({
    required this.token,
    required this.userId,
    required this.issuedAt,
    required this.expiration,
    required this.account,
  });

  Duration get validFor => expiration.difference(DateTime.now());

  factory JwtPayload.of(String accessToken) {
    var payload = accessToken.split('.')[1];
    var payloadMap = json.decode(
      utf8.decode(
        base64Url.decode(
          base64Url.normalize(payload),
        ),
      ),
    );
    return JwtPayload(
      token: accessToken,
      userId: payloadMap['sub'],
      account: payloadMap['account'],
      issuedAt: DateTime.fromMillisecondsSinceEpoch(payloadMap['iat'] * 1000),
      expiration: DateTime.fromMillisecondsSinceEpoch(payloadMap['exp'] * 1000),
    );
  }
  @override
  String toString() {
    return '''
    token: $token
    userId: $userId
    issuedAt: $issuedAt
    expiration: $expiration
    employeeProfile $account    
    ''';
  }
}
