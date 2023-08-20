// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'articlesmodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ArticlesModel _$$_ArticlesModelFromJson(Map<String, dynamic> json) =>
    _$_ArticlesModel(
      json['enrollId'] as int,
      json['headline'] as String,
      json['pictureUrl'] as String?,
      json['details'] as String,
      json['auctionTitle'] as String,
      json['countryCode'] as String,
      json['formattedMileage'] as String,
      json['formattedEndtime'] as String,
      json['formattedLocation'] as String,
      json['formattedCurrentPrice'] as String,
    );

Map<String, dynamic> _$$_ArticlesModelToJson(_$_ArticlesModel instance) =>
    <String, dynamic>{
      'enrollId': instance.enrollId,
      'headline': instance.headline,
      'pictureUrl': instance.pictureUrl,
      'details': instance.details,
      'auctionTitle': instance.auctionTitle,
      'countryCode': instance.countryCode,
      'formattedMileage': instance.formattedMileage,
      'formattedEndtime': instance.formattedEndtime,
      'formattedLocation': instance.formattedLocation,
      'formattedCurrentPrice': instance.formattedCurrentPrice,
    };
