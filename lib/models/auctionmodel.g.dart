// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auctionmodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuctionModel _$$_AuctionModelFromJson(Map<String, dynamic> json) =>
    _$_AuctionModel(
      json['id'] as int,
      json['countryCode'] as String,
      json['timeFormatted'] as String,
      json['logo'] as String?,
      json['title'] as String,
      json['numberOfCars'] as String,
    );

Map<String, dynamic> _$$_AuctionModelToJson(_$_AuctionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'countryCode': instance.countryCode,
      'timeFormatted': instance.timeFormatted,
      'logo': instance.logo,
      'title': instance.title,
      'numberOfCars': instance.numberOfCars,
    };
