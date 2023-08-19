import 'package:flutter/material.dart';
import 'package:template/theme/color_extension.dart';

ThemeData defaultTheme() => ThemeData(
      colorScheme: ColorScheme(
        brightness: Brightness.light,
        primary: const Color(0xff006C47),
        onPrimary: Colors.white,
        secondary: const Color(0xff000000),
        onSecondary: Colors.white,
        tertiary: const Color.fromARGB(255, 46, 74, 151),
        onTertiary: Colors.white,
        error: const Color(0xffBA1A1A),
        onError: Colors.white,
        background: const Color(0xffFBFDF8),
        onBackground: const Color(0xff191C1A),
        surface: const Color(0xffFBFDF8),
        onSurface: const Color(0xff191C1A),
        shadow: const Color(0xffae8df8).withAlpha(24),
      ),
      scaffoldBackgroundColor: const Color.fromARGB(255, 255, 255, 255),
      snackBarTheme:
          const SnackBarThemeData(behavior: SnackBarBehavior.floating),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20)),
      ),
      extensions: const [
        ColorExtension(
          info: Color.fromARGB(255, 74, 73, 75),
          onInfo: Colors.white,
          warning: Color.fromARGB(255, 247, 217, 47),
          onWarning: Colors.white,
          success: Color.fromARGB(255, 26, 160, 82),
          onSuccess: Colors.white,
          disabled: Color.fromARGB(255, 128, 126, 126),
          onDisabled: Colors.white,
        )
      ],
    );

class DomainColors {
  final ColorScheme colorScheme;
  final ColorExtension colorExtension;

  DomainColors(this.colorScheme, this.colorExtension);

  Color get primary => colorScheme.primary;
  Color get onPrimary => colorScheme.onPrimary;
  Color get secondary => colorScheme.secondary;
  Color get onSecondary => colorScheme.onSecondary;
  Color get tertiary => colorScheme.tertiary;
  Color get onTertiary => colorScheme.onTertiary;
  Color get error => colorScheme.error;
  Color get onError => colorScheme.onError;
  Color get background => colorScheme.background;
  Color get onBackground => colorScheme.onBackground;
  Color get surface => colorScheme.surface;
  Color get onSurface => colorScheme.onSurface;
  Color get shadow => colorScheme.shadow;

  Color get info => colorExtension.info;
  Color get onInfo => colorExtension.onInfo;
  Color get warning => colorExtension.warning;
  Color get onWarning => colorExtension.onWarning;
  Color get success => colorExtension.success;
  Color get onSuccess => colorExtension.onSuccess;
  Color get disabled => colorExtension.disabled;
  Color get onDisabled => colorExtension.onDisabled;
}

extension DomainColor on BuildContext {
  DomainColors get colors {
    return DomainColors(
      Theme.of(this).colorScheme,
      Theme.of(this).extension<ColorExtension>()!,
    );
  }
}
