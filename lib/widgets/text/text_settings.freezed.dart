// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'text_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TextSettings {
  Color? get color => throw _privateConstructorUsedError;
  TextAlign? get textAlign => throw _privateConstructorUsedError;
  FontWeight? get fontWeight => throw _privateConstructorUsedError;
  FontStyle? get fontStyle => throw _privateConstructorUsedError;
  AutoSizeSettings? get autoSize => throw _privateConstructorUsedError;
  TextOverflow? get overflow => throw _privateConstructorUsedError;
  int? get maxLines => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TextSettingsCopyWith<TextSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextSettingsCopyWith<$Res> {
  factory $TextSettingsCopyWith(
          TextSettings value, $Res Function(TextSettings) then) =
      _$TextSettingsCopyWithImpl<$Res, TextSettings>;
  @useResult
  $Res call(
      {Color? color,
      TextAlign? textAlign,
      FontWeight? fontWeight,
      FontStyle? fontStyle,
      AutoSizeSettings? autoSize,
      TextOverflow? overflow,
      int? maxLines});

  $AutoSizeSettingsCopyWith<$Res>? get autoSize;
}

/// @nodoc
class _$TextSettingsCopyWithImpl<$Res, $Val extends TextSettings>
    implements $TextSettingsCopyWith<$Res> {
  _$TextSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = freezed,
    Object? textAlign = freezed,
    Object? fontWeight = freezed,
    Object? fontStyle = freezed,
    Object? autoSize = freezed,
    Object? overflow = freezed,
    Object? maxLines = freezed,
  }) {
    return _then(_value.copyWith(
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color?,
      textAlign: freezed == textAlign
          ? _value.textAlign
          : textAlign // ignore: cast_nullable_to_non_nullable
              as TextAlign?,
      fontWeight: freezed == fontWeight
          ? _value.fontWeight
          : fontWeight // ignore: cast_nullable_to_non_nullable
              as FontWeight?,
      fontStyle: freezed == fontStyle
          ? _value.fontStyle
          : fontStyle // ignore: cast_nullable_to_non_nullable
              as FontStyle?,
      autoSize: freezed == autoSize
          ? _value.autoSize
          : autoSize // ignore: cast_nullable_to_non_nullable
              as AutoSizeSettings?,
      overflow: freezed == overflow
          ? _value.overflow
          : overflow // ignore: cast_nullable_to_non_nullable
              as TextOverflow?,
      maxLines: freezed == maxLines
          ? _value.maxLines
          : maxLines // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AutoSizeSettingsCopyWith<$Res>? get autoSize {
    if (_value.autoSize == null) {
      return null;
    }

    return $AutoSizeSettingsCopyWith<$Res>(_value.autoSize!, (value) {
      return _then(_value.copyWith(autoSize: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TextSettingsCopyWith<$Res>
    implements $TextSettingsCopyWith<$Res> {
  factory _$$_TextSettingsCopyWith(
          _$_TextSettings value, $Res Function(_$_TextSettings) then) =
      __$$_TextSettingsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Color? color,
      TextAlign? textAlign,
      FontWeight? fontWeight,
      FontStyle? fontStyle,
      AutoSizeSettings? autoSize,
      TextOverflow? overflow,
      int? maxLines});

  @override
  $AutoSizeSettingsCopyWith<$Res>? get autoSize;
}

/// @nodoc
class __$$_TextSettingsCopyWithImpl<$Res>
    extends _$TextSettingsCopyWithImpl<$Res, _$_TextSettings>
    implements _$$_TextSettingsCopyWith<$Res> {
  __$$_TextSettingsCopyWithImpl(
      _$_TextSettings _value, $Res Function(_$_TextSettings) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = freezed,
    Object? textAlign = freezed,
    Object? fontWeight = freezed,
    Object? fontStyle = freezed,
    Object? autoSize = freezed,
    Object? overflow = freezed,
    Object? maxLines = freezed,
  }) {
    return _then(_$_TextSettings(
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color?,
      textAlign: freezed == textAlign
          ? _value.textAlign
          : textAlign // ignore: cast_nullable_to_non_nullable
              as TextAlign?,
      fontWeight: freezed == fontWeight
          ? _value.fontWeight
          : fontWeight // ignore: cast_nullable_to_non_nullable
              as FontWeight?,
      fontStyle: freezed == fontStyle
          ? _value.fontStyle
          : fontStyle // ignore: cast_nullable_to_non_nullable
              as FontStyle?,
      autoSize: freezed == autoSize
          ? _value.autoSize
          : autoSize // ignore: cast_nullable_to_non_nullable
              as AutoSizeSettings?,
      overflow: freezed == overflow
          ? _value.overflow
          : overflow // ignore: cast_nullable_to_non_nullable
              as TextOverflow?,
      maxLines: freezed == maxLines
          ? _value.maxLines
          : maxLines // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_TextSettings implements _TextSettings {
  _$_TextSettings(
      {this.color,
      this.textAlign,
      this.fontWeight,
      this.fontStyle,
      this.autoSize,
      this.overflow,
      this.maxLines});

  @override
  final Color? color;
  @override
  final TextAlign? textAlign;
  @override
  final FontWeight? fontWeight;
  @override
  final FontStyle? fontStyle;
  @override
  final AutoSizeSettings? autoSize;
  @override
  final TextOverflow? overflow;
  @override
  final int? maxLines;

  @override
  String toString() {
    return 'TextSettings(color: $color, textAlign: $textAlign, fontWeight: $fontWeight, fontStyle: $fontStyle, autoSize: $autoSize, overflow: $overflow, maxLines: $maxLines)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TextSettings &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.textAlign, textAlign) ||
                other.textAlign == textAlign) &&
            (identical(other.fontWeight, fontWeight) ||
                other.fontWeight == fontWeight) &&
            (identical(other.fontStyle, fontStyle) ||
                other.fontStyle == fontStyle) &&
            (identical(other.autoSize, autoSize) ||
                other.autoSize == autoSize) &&
            (identical(other.overflow, overflow) ||
                other.overflow == overflow) &&
            (identical(other.maxLines, maxLines) ||
                other.maxLines == maxLines));
  }

  @override
  int get hashCode => Object.hash(runtimeType, color, textAlign, fontWeight,
      fontStyle, autoSize, overflow, maxLines);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TextSettingsCopyWith<_$_TextSettings> get copyWith =>
      __$$_TextSettingsCopyWithImpl<_$_TextSettings>(this, _$identity);
}

abstract class _TextSettings implements TextSettings {
  factory _TextSettings(
      {final Color? color,
      final TextAlign? textAlign,
      final FontWeight? fontWeight,
      final FontStyle? fontStyle,
      final AutoSizeSettings? autoSize,
      final TextOverflow? overflow,
      final int? maxLines}) = _$_TextSettings;

  @override
  Color? get color;
  @override
  TextAlign? get textAlign;
  @override
  FontWeight? get fontWeight;
  @override
  FontStyle? get fontStyle;
  @override
  AutoSizeSettings? get autoSize;
  @override
  TextOverflow? get overflow;
  @override
  int? get maxLines;
  @override
  @JsonKey(ignore: true)
  _$$_TextSettingsCopyWith<_$_TextSettings> get copyWith =>
      throw _privateConstructorUsedError;
}
