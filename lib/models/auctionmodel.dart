import 'package:freezed_annotation/freezed_annotation.dart';

part 'auctionmodel.freezed.dart';
part 'auctionmodel.g.dart';

@freezed
class AuctionModel with _$AuctionModel {
  factory AuctionModel(
    int id,
    String countryCode,
    String timeFormatted,
    String? logo,
    String title,
    String numberOfCars,
  ) = _AuctionModel;

  factory AuctionModel.fromJson(Map<String, dynamic> json) =>
      _$AuctionModelFromJson(json);
}
