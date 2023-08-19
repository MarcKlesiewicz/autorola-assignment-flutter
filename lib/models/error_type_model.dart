import 'package:freezed_annotation/freezed_annotation.dart';

part 'error_type_model.freezed.dart';
part 'error_type_model.g.dart';

@freezed
class ErrorTypeModel with _$ErrorTypeModel {
  factory ErrorTypeModel(
    int statusCode,
    String message,
  ) = _ErrorTypeModel;

  factory ErrorTypeModel.fromJson(Map<String, dynamic> json) =>
      _$ErrorTypeModelFromJson(json);
}
