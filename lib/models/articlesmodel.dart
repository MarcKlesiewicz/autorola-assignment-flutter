import 'package:freezed_annotation/freezed_annotation.dart';

part 'articlesmodel.freezed.dart';
part 'articlesmodel.g.dart';

@freezed
class ArticlesModel with _$ArticlesModel {
  factory ArticlesModel(
    int enrollId,
    String headline,
    String? pictureUrl,
    String details,
    String auctionTitle,
    String countryCode,
    String formattedMileage,
    String formattedEndtime,
    String formattedLocation,
    String formattedCurrentPrice,
  ) = _ArticlesModel;

  factory ArticlesModel.fromJson(Map<String, dynamic> json) =>
      _$ArticlesModelFromJson(json);
}
