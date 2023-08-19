// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auto_size_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AutoSizeSettings {
  double? get maxFontSize => throw _privateConstructorUsedError;
  double? get minFontSize => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AutoSizeSettingsCopyWith<AutoSizeSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AutoSizeSettingsCopyWith<$Res> {
  factory $AutoSizeSettingsCopyWith(
          AutoSizeSettings value, $Res Function(AutoSizeSettings) then) =
      _$AutoSizeSettingsCopyWithImpl<$Res, AutoSizeSettings>;
  @useResult
  $Res call({double? maxFontSize, double? minFontSize});
}

/// @nodoc
class _$AutoSizeSettingsCopyWithImpl<$Res, $Val extends AutoSizeSettings>
    implements $AutoSizeSettingsCopyWith<$Res> {
  _$AutoSizeSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxFontSize = freezed,
    Object? minFontSize = freezed,
  }) {
    return _then(_value.copyWith(
      maxFontSize: freezed == maxFontSize
          ? _value.maxFontSize
          : maxFontSize // ignore: cast_nullable_to_non_nullable
              as double?,
      minFontSize: freezed == minFontSize
          ? _value.minFontSize
          : minFontSize // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AutoSizeSettingsCopyWith<$Res>
    implements $AutoSizeSettingsCopyWith<$Res> {
  factory _$$_AutoSizeSettingsCopyWith(
          _$_AutoSizeSettings value, $Res Function(_$_AutoSizeSettings) then) =
      __$$_AutoSizeSettingsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double? maxFontSize, double? minFontSize});
}

/// @nodoc
class __$$_AutoSizeSettingsCopyWithImpl<$Res>
    extends _$AutoSizeSettingsCopyWithImpl<$Res, _$_AutoSizeSettings>
    implements _$$_AutoSizeSettingsCopyWith<$Res> {
  __$$_AutoSizeSettingsCopyWithImpl(
      _$_AutoSizeSettings _value, $Res Function(_$_AutoSizeSettings) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxFontSize = freezed,
    Object? minFontSize = freezed,
  }) {
    return _then(_$_AutoSizeSettings(
      maxFontSize: freezed == maxFontSize
          ? _value.maxFontSize
          : maxFontSize // ignore: cast_nullable_to_non_nullable
              as double?,
      minFontSize: freezed == minFontSize
          ? _value.minFontSize
          : minFontSize // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$_AutoSizeSettings implements _AutoSizeSettings {
  _$_AutoSizeSettings({this.maxFontSize, this.minFontSize});

  @override
  final double? maxFontSize;
  @override
  final double? minFontSize;

  @override
  String toString() {
    return 'AutoSizeSettings(maxFontSize: $maxFontSize, minFontSize: $minFontSize)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AutoSizeSettings &&
            (identical(other.maxFontSize, maxFontSize) ||
                other.maxFontSize == maxFontSize) &&
            (identical(other.minFontSize, minFontSize) ||
                other.minFontSize == minFontSize));
  }

  @override
  int get hashCode => Object.hash(runtimeType, maxFontSize, minFontSize);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AutoSizeSettingsCopyWith<_$_AutoSizeSettings> get copyWith =>
      __$$_AutoSizeSettingsCopyWithImpl<_$_AutoSizeSettings>(this, _$identity);
}

abstract class _AutoSizeSettings implements AutoSizeSettings {
  factory _AutoSizeSettings(
      {final double? maxFontSize,
      final double? minFontSize}) = _$_AutoSizeSettings;

  @override
  double? get maxFontSize;
  @override
  double? get minFontSize;
  @override
  @JsonKey(ignore: true)
  _$$_AutoSizeSettingsCopyWith<_$_AutoSizeSettings> get copyWith =>
      throw _privateConstructorUsedError;
}
