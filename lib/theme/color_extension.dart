import 'package:flutter/material.dart';

@immutable
class ColorExtension extends ThemeExtension<ColorExtension> {
  const ColorExtension({
    required this.info,
    required this.onInfo,
    required this.warning,
    required this.onWarning,
    required this.success,
    required this.onSuccess,
    required this.disabled,
    required this.onDisabled,
  });

  final Color info;
  final Color onInfo;
  final Color warning;
  final Color onWarning;
  final Color success;
  final Color onSuccess;
  final Color disabled;
  final Color onDisabled;

  @override
  ThemeExtension<ColorExtension> copyWith({
    final Color? info,
    final Color? onInfo,
    final Color? warning,
    final Color? onWarning,
    final Color? success,
    final Color? onSuccess,
    final Color? disabled,
    final Color? onDisabled,
  }) {
    return ColorExtension(
      info: info ?? this.info,
      onInfo: info ?? this.onInfo,
      warning: warning ?? this.warning,
      onWarning: onWarning ?? this.onWarning,
      success: success ?? this.success,
      onSuccess: onSuccess ?? this.onSuccess,
      disabled: disabled ?? this.disabled,
      onDisabled: onDisabled ?? this.onDisabled,
    );
  }

  @override
  ThemeExtension<ColorExtension> lerp(
      ThemeExtension<ColorExtension>? other, double t) {
    if (other is! ColorExtension) {
      return this;
    }
    return ColorExtension(
      info: Color.lerp(info, other.info, t) ?? info,
      onInfo: Color.lerp(onInfo, other.onInfo, t) ?? onInfo,
      warning: Color.lerp(warning, other.warning, t) ?? warning,
      onWarning: Color.lerp(onWarning, other.onWarning, t) ?? onWarning,
      success: Color.lerp(success, other.success, t) ?? success,
      onSuccess: Color.lerp(onSuccess, other.onSuccess, t) ?? onSuccess,
      disabled: Color.lerp(disabled, other.disabled, t) ?? disabled,
      onDisabled: Color.lerp(onSuccess, other.onSuccess, t) ?? onSuccess,
    );
  }
}
