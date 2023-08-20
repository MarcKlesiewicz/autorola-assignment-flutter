// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auctionmodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuctionModel _$AuctionModelFromJson(Map<String, dynamic> json) {
  return _AuctionModel.fromJson(json);
}

/// @nodoc
mixin _$AuctionModel {
  int get id => throw _privateConstructorUsedError;
  String get countryCode => throw _privateConstructorUsedError;
  String get timeFormatted => throw _privateConstructorUsedError;
  String? get logo => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get numberOfCars => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuctionModelCopyWith<AuctionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuctionModelCopyWith<$Res> {
  factory $AuctionModelCopyWith(
          AuctionModel value, $Res Function(AuctionModel) then) =
      _$AuctionModelCopyWithImpl<$Res, AuctionModel>;
  @useResult
  $Res call(
      {int id,
      String countryCode,
      String timeFormatted,
      String? logo,
      String title,
      String numberOfCars});
}

/// @nodoc
class _$AuctionModelCopyWithImpl<$Res, $Val extends AuctionModel>
    implements $AuctionModelCopyWith<$Res> {
  _$AuctionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? countryCode = null,
    Object? timeFormatted = null,
    Object? logo = freezed,
    Object? title = null,
    Object? numberOfCars = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      countryCode: null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
      timeFormatted: null == timeFormatted
          ? _value.timeFormatted
          : timeFormatted // ignore: cast_nullable_to_non_nullable
              as String,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      numberOfCars: null == numberOfCars
          ? _value.numberOfCars
          : numberOfCars // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuctionModelCopyWith<$Res>
    implements $AuctionModelCopyWith<$Res> {
  factory _$$_AuctionModelCopyWith(
          _$_AuctionModel value, $Res Function(_$_AuctionModel) then) =
      __$$_AuctionModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String countryCode,
      String timeFormatted,
      String? logo,
      String title,
      String numberOfCars});
}

/// @nodoc
class __$$_AuctionModelCopyWithImpl<$Res>
    extends _$AuctionModelCopyWithImpl<$Res, _$_AuctionModel>
    implements _$$_AuctionModelCopyWith<$Res> {
  __$$_AuctionModelCopyWithImpl(
      _$_AuctionModel _value, $Res Function(_$_AuctionModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? countryCode = null,
    Object? timeFormatted = null,
    Object? logo = freezed,
    Object? title = null,
    Object? numberOfCars = null,
  }) {
    return _then(_$_AuctionModel(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
      null == timeFormatted
          ? _value.timeFormatted
          : timeFormatted // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
      null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      null == numberOfCars
          ? _value.numberOfCars
          : numberOfCars // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuctionModel implements _AuctionModel {
  _$_AuctionModel(this.id, this.countryCode, this.timeFormatted, this.logo,
      this.title, this.numberOfCars);

  factory _$_AuctionModel.fromJson(Map<String, dynamic> json) =>
      _$$_AuctionModelFromJson(json);

  @override
  final int id;
  @override
  final String countryCode;
  @override
  final String timeFormatted;
  @override
  final String? logo;
  @override
  final String title;
  @override
  final String numberOfCars;

  @override
  String toString() {
    return 'AuctionModel(id: $id, countryCode: $countryCode, timeFormatted: $timeFormatted, logo: $logo, title: $title, numberOfCars: $numberOfCars)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuctionModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            (identical(other.timeFormatted, timeFormatted) ||
                other.timeFormatted == timeFormatted) &&
            (identical(other.logo, logo) || other.logo == logo) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.numberOfCars, numberOfCars) ||
                other.numberOfCars == numberOfCars));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, countryCode, timeFormatted, logo, title, numberOfCars);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuctionModelCopyWith<_$_AuctionModel> get copyWith =>
      __$$_AuctionModelCopyWithImpl<_$_AuctionModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuctionModelToJson(
      this,
    );
  }
}

abstract class _AuctionModel implements AuctionModel {
  factory _AuctionModel(
      final int id,
      final String countryCode,
      final String timeFormatted,
      final String? logo,
      final String title,
      final String numberOfCars) = _$_AuctionModel;

  factory _AuctionModel.fromJson(Map<String, dynamic> json) =
      _$_AuctionModel.fromJson;

  @override
  int get id;
  @override
  String get countryCode;
  @override
  String get timeFormatted;
  @override
  String? get logo;
  @override
  String get title;
  @override
  String get numberOfCars;
  @override
  @JsonKey(ignore: true)
  _$$_AuctionModelCopyWith<_$_AuctionModel> get copyWith =>
      throw _privateConstructorUsedError;
}
