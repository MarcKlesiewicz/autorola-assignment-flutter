import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:autorola_assignment/widgets/text/auto_size_settings.dart';

part 'text_settings.freezed.dart';

@freezed
class TextSettings with _$TextSettings {
  factory TextSettings({
    Color? color,
    TextAlign? textAlign,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    AutoSizeSettings? autoSize,
    TextOverflow? overflow,
    int? maxLines,
  }) = _TextSettings;
}
