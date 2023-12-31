// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authtokens.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthTokens _$AuthTokensFromJson(Map<String, dynamic> json) {
  return _AuthTokens.fromJson(json);
}

/// @nodoc
mixin _$AuthTokens {
  String get accessToken => throw _privateConstructorUsedError;
  String get refreshToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthTokensCopyWith<AuthTokens> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthTokensCopyWith<$Res> {
  factory $AuthTokensCopyWith(
          AuthTokens value, $Res Function(AuthTokens) then) =
      _$AuthTokensCopyWithImpl<$Res, AuthTokens>;
  @useResult
  $Res call({String accessToken, String refreshToken});
}

/// @nodoc
class _$AuthTokensCopyWithImpl<$Res, $Val extends AuthTokens>
    implements $AuthTokensCopyWith<$Res> {
  _$AuthTokensCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
  }) {
    return _then(_value.copyWith(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthTokensCopyWith<$Res>
    implements $AuthTokensCopyWith<$Res> {
  factory _$$_AuthTokensCopyWith(
          _$_AuthTokens value, $Res Function(_$_AuthTokens) then) =
      __$$_AuthTokensCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String accessToken, String refreshToken});
}

/// @nodoc
class __$$_AuthTokensCopyWithImpl<$Res>
    extends _$AuthTokensCopyWithImpl<$Res, _$_AuthTokens>
    implements _$$_AuthTokensCopyWith<$Res> {
  __$$_AuthTokensCopyWithImpl(
      _$_AuthTokens _value, $Res Function(_$_AuthTokens) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
  }) {
    return _then(_$_AuthTokens(
      null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthTokens implements _AuthTokens {
  _$_AuthTokens(this.accessToken, this.refreshToken);

  factory _$_AuthTokens.fromJson(Map<String, dynamic> json) =>
      _$$_AuthTokensFromJson(json);

  @override
  final String accessToken;
  @override
  final String refreshToken;

  @override
  String toString() {
    return 'AuthTokens(accessToken: $accessToken, refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthTokens &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, accessToken, refreshToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthTokensCopyWith<_$_AuthTokens> get copyWith =>
      __$$_AuthTokensCopyWithImpl<_$_AuthTokens>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthTokensToJson(
      this,
    );
  }
}

abstract class _AuthTokens implements AuthTokens {
  factory _AuthTokens(final String accessToken, final String refreshToken) =
      _$_AuthTokens;

  factory _AuthTokens.fromJson(Map<String, dynamic> json) =
      _$_AuthTokens.fromJson;

  @override
  String get accessToken;
  @override
  String get refreshToken;
  @override
  @JsonKey(ignore: true)
  _$$_AuthTokensCopyWith<_$_AuthTokens> get copyWith =>
      throw _privateConstructorUsedError;
}
