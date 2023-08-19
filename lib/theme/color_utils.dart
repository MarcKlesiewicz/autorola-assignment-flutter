import 'package:flutter/material.dart';
import 'package:autorola_assignment/theme/theme_definition.dart';

enum ColorTheme {
  primary,
  onPrimary,
  secondary,
  onSecondary,
  tertiary,
  onTertiary,
  error,
  onError,
  background,
  onBackground,
  surface,
  onSurface,

  info,
  onInfo,
  warning,
  onWarning,
  success,
  onSuccess,
  disabled,
  onDisabled,
}

colorFromColorTheme(BuildContext context, ColorTheme colorTheme) {
  switch (colorTheme) {
    case ColorTheme.primary:
      return context.colors.primary;
    case ColorTheme.onPrimary:
      return context.colors.onPrimary;
    case ColorTheme.secondary:
      return context.colors.secondary;
    case ColorTheme.onSecondary:
      return context.colors.onSecondary;
    case ColorTheme.tertiary:
      return context.colors.tertiary;
    case ColorTheme.onTertiary:
      return context.colors.onTertiary;
    case ColorTheme.background:
      return context.colors.background;
    case ColorTheme.onBackground:
      return context.colors.onBackground;
    case ColorTheme.surface:
      return context.colors.surface;
    case ColorTheme.onSurface:
      return context.colors.onSurface;
    case ColorTheme.info:
      return context.colors.info;
    case ColorTheme.onInfo:
      return context.colors.onInfo;
    case ColorTheme.warning:
      return context.colors.warning;
    case ColorTheme.onWarning:
      return context.colors.onWarning;
    case ColorTheme.success:
      return context.colors.success;
    case ColorTheme.onSuccess:
      return context.colors.onSuccess;
    case ColorTheme.disabled:
      return context.colors.disabled;
    case ColorTheme.onDisabled:
      return context.colors.onDisabled;

    default:
      throw Exception('$colorTheme is not handled');
  }
}
