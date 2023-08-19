import 'package:freezed_annotation/freezed_annotation.dart';

part 'auto_size_settings.freezed.dart';

@freezed
class AutoSizeSettings with _$AutoSizeSettings {
  factory AutoSizeSettings({
    double? maxFontSize,
    double? minFontSize,
  }) = _AutoSizeSettings;
}
