import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:template/theme/color_utils.dart';

import 'text_settings.dart';

enum TextTheme {
  displayLarge,
  displayMedium,
  displaySmall,
  headlineLarge,
  headlineMedium,
  headlineSmall,
  titleLarge,
  titleMedium,
  titleSmall,
  labelLarge,
  labelMedium,
  labelSmall,
  bodyLarge,
  bodyMedium,
  bodySmall,
}

class _StyledText extends StatelessWidget {
  final String data;
  final ColorTheme? theme;
  final TextTheme textTheme;
  final TextSettings? settings;
  final int? shade;

  const _StyledText(
    this.data, {
    Key? key,
    this.textTheme = TextTheme.bodyMedium,
    this.theme,
    this.settings,
    // this is used to set shade on text, linter is confused
    // ignore: unused_element
    this.shade,
  }) : super(key: key);

  TextStyle? _fromTextTheme(TextTheme textTheme, ThemeData themeData) {
    switch (textTheme) {
      case TextTheme.displayLarge:
        return themeData.textTheme.displayLarge;
      case TextTheme.displayMedium:
        return themeData.textTheme.displayMedium;
      case TextTheme.displaySmall:
        return themeData.textTheme.displaySmall;
      case TextTheme.headlineLarge:
        return themeData.textTheme.headlineLarge;
      case TextTheme.headlineMedium:
        return themeData.textTheme.headlineMedium;
      case TextTheme.headlineSmall:
        return themeData.textTheme.headlineSmall;
      case TextTheme.titleLarge:
        return themeData.textTheme.titleLarge;
      case TextTheme.titleMedium:
        return themeData.textTheme.titleMedium;
      case TextTheme.titleSmall:
        return themeData.textTheme.titleSmall;
      case TextTheme.labelLarge:
        return themeData.textTheme.labelLarge;
      case TextTheme.labelMedium:
        return themeData.textTheme.labelMedium;
      case TextTheme.labelSmall:
        return themeData.textTheme.labelSmall;
      case TextTheme.bodyLarge:
        return themeData.textTheme.bodyLarge;
      case TextTheme.bodyMedium:
        return themeData.textTheme.bodyMedium;
      case TextTheme.bodySmall:
        return themeData.textTheme.bodySmall;
    }
  }

  @override
  Widget build(BuildContext context) {
    var textStyle =
        _fromTextTheme(textTheme, Theme.of(context)) ?? const TextStyle();

    if (settings?.color != null) {
      textStyle = textStyle.copyWith(color: settings?.color);
    } else if (theme != null) {
      var themeColor = colorFromColorTheme(context, theme!);
      if (themeColor is MaterialColor && shade != null) {
        textStyle = textStyle.copyWith(
          color: themeColor[shade ?? 500],
        );
      } else {
        textStyle = textStyle.copyWith(
          color: themeColor,
        );
      }
    }

    textStyle = textStyle.copyWith(
      fontStyle: settings?.fontStyle,
      fontWeight: settings?.fontWeight,
    );

    if (settings?.autoSize != null) {
      return AutoSizeText(
        data,
        textAlign: settings?.textAlign,
        overflow: settings?.overflow,
        style: textStyle,
        maxLines: settings?.maxLines,
        maxFontSize: settings!.autoSize!.maxFontSize ?? double.infinity,
        minFontSize: settings!.autoSize!.minFontSize ?? 12,
      );
    } else {
      return Text(
        data,
        textAlign: settings?.textAlign,
        overflow: settings?.overflow,
        style: textStyle,
        maxLines: settings?.maxLines,
      );
    }
  }
}

class DisplayLarge extends _StyledText {
  const DisplayLarge(String data,
      {Key? key, ColorTheme? theme, TextSettings? settings})
      : super(data,
            key: key,
            textTheme: TextTheme.displayLarge,
            theme: theme,
            settings: settings);

  const DisplayLarge.primary(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.primary, settings: settings);
  const DisplayLarge.onPrimary(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onPrimary, settings: settings);
  const DisplayLarge.secondary(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.secondary, settings: settings);
  const DisplayLarge.onSecondary(String data,
      {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onSecondary, settings: settings);
  const DisplayLarge.tertiary(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.tertiary, settings: settings);
  const DisplayLarge.onTertiary(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onTertiary, settings: settings);
  const DisplayLarge.info(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.info, settings: settings);
  const DisplayLarge.onInfo(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onInfo, settings: settings);
  const DisplayLarge.warning(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.warning, settings: settings);
  const DisplayLarge.onWarning(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onWarning, settings: settings);

  const DisplayLarge.success(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.success, settings: settings);
  const DisplayLarge.onSuccess(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onSuccess, settings: settings);
  const DisplayLarge.disabled(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.disabled, settings: settings);
  const DisplayLarge.onDisabled(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onDisabled, settings: settings);
  const DisplayLarge.background(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.background, settings: settings);
  const DisplayLarge.onBackground(String data,
      {Key? key, TextSettings? settings})
      : this(data,
            key: key, theme: ColorTheme.onBackground, settings: settings);
  const DisplayLarge.surface(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.surface, settings: settings);
  const DisplayLarge.onSurface(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onSurface, settings: settings);
}

class DisplayMedium extends _StyledText {
  const DisplayMedium(String data,
      {Key? key, ColorTheme? theme, TextSettings? settings})
      : super(data,
            key: key,
            textTheme: TextTheme.displayMedium,
            theme: theme,
            settings: settings);

  const DisplayMedium.primary(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.primary, settings: settings);
  const DisplayMedium.onPrimary(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onPrimary, settings: settings);
  const DisplayMedium.secondary(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.secondary, settings: settings);
  const DisplayMedium.onSecondary(String data,
      {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onSecondary, settings: settings);
  const DisplayMedium.tertiary(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.tertiary, settings: settings);
  const DisplayMedium.onTertiary(String data,
      {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onTertiary, settings: settings);
  const DisplayMedium.info(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.info, settings: settings);
  const DisplayMedium.onInfo(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onInfo, settings: settings);
  const DisplayMedium.warning(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.warning, settings: settings);
  const DisplayMedium.onWarning(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onWarning, settings: settings);

  const DisplayMedium.success(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.success, settings: settings);
  const DisplayMedium.onSuccess(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onSuccess, settings: settings);
  const DisplayMedium.disabled(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.disabled, settings: settings);
  const DisplayMedium.onDisabled(String data,
      {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onDisabled, settings: settings);
  const DisplayMedium.background(String data,
      {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.background, settings: settings);
  const DisplayMedium.onBackground(String data,
      {Key? key, TextSettings? settings})
      : this(data,
            key: key, theme: ColorTheme.onBackground, settings: settings);
  const DisplayMedium.surface(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.surface, settings: settings);
  const DisplayMedium.onSurface(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onSurface, settings: settings);
}

class DisplaySmall extends _StyledText {
  const DisplaySmall(String data,
      {Key? key, ColorTheme? theme, TextSettings? settings})
      : super(data,
            key: key,
            textTheme: TextTheme.displaySmall,
            theme: theme,
            settings: settings);

  const DisplaySmall.primary(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.primary, settings: settings);
  const DisplaySmall.onPrimary(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onPrimary, settings: settings);
  const DisplaySmall.secondary(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.secondary, settings: settings);
  const DisplaySmall.onSecondary(String data,
      {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onSecondary, settings: settings);
  const DisplaySmall.tertiary(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.tertiary, settings: settings);
  const DisplaySmall.onTertiary(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onTertiary, settings: settings);
  const DisplaySmall.info(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.info, settings: settings);
  const DisplaySmall.onInfo(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onInfo, settings: settings);
  const DisplaySmall.warning(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.warning, settings: settings);
  const DisplaySmall.onWarning(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onWarning, settings: settings);
  const DisplaySmall.success(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.success, settings: settings);
  const DisplaySmall.onSuccess(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onSuccess, settings: settings);
  const DisplaySmall.disabled(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.disabled, settings: settings);
  const DisplaySmall.onDisabled(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onDisabled, settings: settings);
  const DisplaySmall.background(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.background, settings: settings);
  const DisplaySmall.onBackground(String data,
      {Key? key, TextSettings? settings})
      : this(data,
            key: key, theme: ColorTheme.onBackground, settings: settings);
  const DisplaySmall.surface(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.surface, settings: settings);
  const DisplaySmall.onSurface(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onSurface, settings: settings);
}

class HeadlineLarge extends _StyledText {
  const HeadlineLarge(String data,
      {Key? key, ColorTheme? theme, TextSettings? settings})
      : super(data,
            key: key,
            textTheme: TextTheme.headlineLarge,
            theme: theme,
            settings: settings);

  const HeadlineLarge.primary(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.primary, settings: settings);
  const HeadlineLarge.onPrimary(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onPrimary, settings: settings);
  const HeadlineLarge.secondary(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.secondary, settings: settings);
  const HeadlineLarge.onSecondary(String data,
      {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onSecondary, settings: settings);
  const HeadlineLarge.tertiary(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.tertiary, settings: settings);
  const HeadlineLarge.onTertiary(String data,
      {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onTertiary, settings: settings);
  const HeadlineLarge.info(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.info, settings: settings);
  const HeadlineLarge.onInfo(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onInfo, settings: settings);
  const HeadlineLarge.warning(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.warning, settings: settings);
  const HeadlineLarge.onWarning(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onWarning, settings: settings);

  const HeadlineLarge.success(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.success, settings: settings);
  const HeadlineLarge.onSuccess(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onSuccess, settings: settings);
  const HeadlineLarge.disabled(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.disabled, settings: settings);
  const HeadlineLarge.onDisabled(String data,
      {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onDisabled, settings: settings);
  const HeadlineLarge.background(String data,
      {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.background, settings: settings);
  const HeadlineLarge.onBackground(String data,
      {Key? key, TextSettings? settings})
      : this(data,
            key: key, theme: ColorTheme.onBackground, settings: settings);
  const HeadlineLarge.surface(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.surface, settings: settings);
  const HeadlineLarge.onSurface(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onSurface, settings: settings);
}

class HeadlineMedium extends _StyledText {
  const HeadlineMedium(String data,
      {Key? key, ColorTheme? theme, TextSettings? settings})
      : super(data,
            key: key,
            textTheme: TextTheme.headlineMedium,
            theme: theme,
            settings: settings);

  const HeadlineMedium.primary(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.primary, settings: settings);
  const HeadlineMedium.onPrimary(String data,
      {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onPrimary, settings: settings);
  const HeadlineMedium.secondary(String data,
      {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.secondary, settings: settings);
  const HeadlineMedium.onSecondary(String data,
      {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onSecondary, settings: settings);
  const HeadlineMedium.tertiary(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.tertiary, settings: settings);
  const HeadlineMedium.onTertiary(String data,
      {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onTertiary, settings: settings);
  const HeadlineMedium.info(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.info, settings: settings);
  const HeadlineMedium.onInfo(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onInfo, settings: settings);
  const HeadlineMedium.warning(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.warning, settings: settings);
  const HeadlineMedium.onWarning(String data,
      {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onWarning, settings: settings);

  const HeadlineMedium.success(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.success, settings: settings);
  const HeadlineMedium.onSuccess(String data,
      {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onSuccess, settings: settings);
  const HeadlineMedium.disabled(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.disabled, settings: settings);
  const HeadlineMedium.onDisabled(String data,
      {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onDisabled, settings: settings);
  const HeadlineMedium.background(String data,
      {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.background, settings: settings);
  const HeadlineMedium.onBackground(String data,
      {Key? key, TextSettings? settings})
      : this(data,
            key: key, theme: ColorTheme.onBackground, settings: settings);
  const HeadlineMedium.surface(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.surface, settings: settings);
  const HeadlineMedium.onSurface(String data,
      {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onSurface, settings: settings);
}

class HeadlineSmall extends _StyledText {
  const HeadlineSmall(String data,
      {Key? key, ColorTheme? theme, TextSettings? settings})
      : super(data,
            key: key,
            textTheme: TextTheme.headlineSmall,
            theme: theme,
            settings: settings);

  const HeadlineSmall.primary(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.primary, settings: settings);
  const HeadlineSmall.onPrimary(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onPrimary, settings: settings);
  const HeadlineSmall.secondary(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.secondary, settings: settings);
  const HeadlineSmall.onSecondary(String data,
      {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onSecondary, settings: settings);
  const HeadlineSmall.tertiary(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.tertiary, settings: settings);
  const HeadlineSmall.onTertiary(String data,
      {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onTertiary, settings: settings);
  const HeadlineSmall.info(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.info, settings: settings);
  const HeadlineSmall.onInfo(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onInfo, settings: settings);
  const HeadlineSmall.warning(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.warning, settings: settings);
  const HeadlineSmall.onWarning(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onWarning, settings: settings);

  const HeadlineSmall.success(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.success, settings: settings);
  const HeadlineSmall.onSuccess(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onSuccess, settings: settings);
  const HeadlineSmall.disabled(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.disabled, settings: settings);
  const HeadlineSmall.onDisabled(String data,
      {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onDisabled, settings: settings);
  const HeadlineSmall.background(String data,
      {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.background, settings: settings);
  const HeadlineSmall.onBackground(String data,
      {Key? key, TextSettings? settings})
      : this(data,
            key: key, theme: ColorTheme.onBackground, settings: settings);
  const HeadlineSmall.surface(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.surface, settings: settings);
  const HeadlineSmall.onSurface(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onSurface, settings: settings);
}

class TitleLarge extends _StyledText {
  const TitleLarge(String data,
      {Key? key, ColorTheme? theme, TextSettings? settings})
      : super(data,
            key: key,
            textTheme: TextTheme.titleLarge,
            theme: theme,
            settings: settings);

  const TitleLarge.primary(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.primary, settings: settings);
  const TitleLarge.onPrimary(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onPrimary, settings: settings);
  const TitleLarge.secondary(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.secondary, settings: settings);
  const TitleLarge.onSecondary(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onSecondary, settings: settings);
  const TitleLarge.tertiary(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.tertiary, settings: settings);
  const TitleLarge.onTertiary(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onTertiary, settings: settings);
  const TitleLarge.info(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.info, settings: settings);
  const TitleLarge.onInfo(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onInfo, settings: settings);
  const TitleLarge.warning(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.warning, settings: settings);
  const TitleLarge.onWarning(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onWarning, settings: settings);

  const TitleLarge.success(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.success, settings: settings);
  const TitleLarge.onSuccess(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onSuccess, settings: settings);
  const TitleLarge.disabled(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.disabled, settings: settings);
  const TitleLarge.onDisabled(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onDisabled, settings: settings);
  const TitleLarge.background(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.background, settings: settings);
  const TitleLarge.onBackground(String data, {Key? key, TextSettings? settings})
      : this(data,
            key: key, theme: ColorTheme.onBackground, settings: settings);
  const TitleLarge.surface(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.surface, settings: settings);
  const TitleLarge.onSurface(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onSurface, settings: settings);
}

class TitleMedium extends _StyledText {
  const TitleMedium(String data,
      {Key? key, ColorTheme? theme, TextSettings? settings})
      : super(data,
            key: key,
            textTheme: TextTheme.titleMedium,
            theme: theme,
            settings: settings);

  const TitleMedium.primary(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.primary, settings: settings);
  const TitleMedium.onPrimary(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onPrimary, settings: settings);
  const TitleMedium.secondary(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.secondary, settings: settings);
  const TitleMedium.onSecondary(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onSecondary, settings: settings);
  const TitleMedium.tertiary(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.tertiary, settings: settings);
  const TitleMedium.onTertiary(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onTertiary, settings: settings);
  const TitleMedium.info(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.info, settings: settings);
  const TitleMedium.onInfo(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onInfo, settings: settings);
  const TitleMedium.warning(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.warning, settings: settings);
  const TitleMedium.onWarning(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onWarning, settings: settings);

  const TitleMedium.success(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.success, settings: settings);
  const TitleMedium.onSuccess(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onSuccess, settings: settings);
  const TitleMedium.disabled(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.disabled, settings: settings);
  const TitleMedium.onDisabled(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onDisabled, settings: settings);
  const TitleMedium.background(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.background, settings: settings);
  const TitleMedium.onBackground(String data,
      {Key? key, TextSettings? settings})
      : this(data,
            key: key, theme: ColorTheme.onBackground, settings: settings);
  const TitleMedium.surface(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.surface, settings: settings);
  const TitleMedium.onSurface(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onSurface, settings: settings);
}

class TitleSmall extends _StyledText {
  const TitleSmall(String data,
      {Key? key, ColorTheme? theme, TextSettings? settings})
      : super(data,
            key: key,
            textTheme: TextTheme.titleSmall,
            theme: theme,
            settings: settings);

  const TitleSmall.primary(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.primary, settings: settings);
  const TitleSmall.onPrimary(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onPrimary, settings: settings);
  const TitleSmall.secondary(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.secondary, settings: settings);
  const TitleSmall.onSecondary(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onSecondary, settings: settings);
  const TitleSmall.tertiary(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.tertiary, settings: settings);
  const TitleSmall.onTertiary(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onTertiary, settings: settings);
  const TitleSmall.info(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.info, settings: settings);
  const TitleSmall.onInfo(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onInfo, settings: settings);
  const TitleSmall.warning(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.warning, settings: settings);
  const TitleSmall.onWarning(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onWarning, settings: settings);

  const TitleSmall.success(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.success, settings: settings);
  const TitleSmall.onSuccess(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onSuccess, settings: settings);
  const TitleSmall.disabled(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.disabled, settings: settings);
  const TitleSmall.onDisabled(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onDisabled, settings: settings);
  const TitleSmall.background(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.background, settings: settings);
  const TitleSmall.onBackground(String data, {Key? key, TextSettings? settings})
      : this(data,
            key: key, theme: ColorTheme.onBackground, settings: settings);
  const TitleSmall.surface(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.surface, settings: settings);
  const TitleSmall.onSurface(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onSurface, settings: settings);
}

class LabelLarge extends _StyledText {
  const LabelLarge(String data,
      {Key? key, ColorTheme? theme, TextSettings? settings})
      : super(data,
            key: key,
            textTheme: TextTheme.labelLarge,
            theme: theme,
            settings: settings);

  const LabelLarge.primary(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.primary, settings: settings);
  const LabelLarge.onPrimary(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onPrimary, settings: settings);
  const LabelLarge.secondary(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.secondary, settings: settings);
  const LabelLarge.onSecondary(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onSecondary, settings: settings);
  const LabelLarge.tertiary(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.tertiary, settings: settings);
  const LabelLarge.onTertiary(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onTertiary, settings: settings);
  const LabelLarge.info(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.info, settings: settings);
  const LabelLarge.onInfo(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onInfo, settings: settings);
  const LabelLarge.warning(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.warning, settings: settings);
  const LabelLarge.onWarning(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onWarning, settings: settings);

  const LabelLarge.success(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.success, settings: settings);
  const LabelLarge.onSuccess(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onSuccess, settings: settings);
  const LabelLarge.disabled(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.disabled, settings: settings);
  const LabelLarge.onDisabled(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onDisabled, settings: settings);
  const LabelLarge.background(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.background, settings: settings);
  const LabelLarge.onBackground(String data, {Key? key, TextSettings? settings})
      : this(data,
            key: key, theme: ColorTheme.onBackground, settings: settings);
  const LabelLarge.surface(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.surface, settings: settings);
  const LabelLarge.onSurface(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onSurface, settings: settings);
}

class LabelMedium extends _StyledText {
  const LabelMedium(String data,
      {Key? key, ColorTheme? theme, TextSettings? settings})
      : super(data,
            key: key,
            textTheme: TextTheme.labelMedium,
            theme: theme,
            settings: settings);

  const LabelMedium.primary(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.primary, settings: settings);
  const LabelMedium.onPrimary(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onPrimary, settings: settings);
  const LabelMedium.secondary(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.secondary, settings: settings);
  const LabelMedium.onSecondary(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onSecondary, settings: settings);
  const LabelMedium.tertiary(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.tertiary, settings: settings);
  const LabelMedium.onTertiary(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onTertiary, settings: settings);
  const LabelMedium.info(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.info, settings: settings);
  const LabelMedium.onInfo(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onInfo, settings: settings);
  const LabelMedium.warning(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.warning, settings: settings);
  const LabelMedium.onWarning(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onWarning, settings: settings);

  const LabelMedium.success(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.success, settings: settings);
  const LabelMedium.onSuccess(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onSuccess, settings: settings);
  const LabelMedium.disabled(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.disabled, settings: settings);
  const LabelMedium.onDisabled(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onDisabled, settings: settings);
  const LabelMedium.background(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.background, settings: settings);
  const LabelMedium.onBackground(String data,
      {Key? key, TextSettings? settings})
      : this(data,
            key: key, theme: ColorTheme.onBackground, settings: settings);
  const LabelMedium.surface(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.surface, settings: settings);
  const LabelMedium.onSurface(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onSurface, settings: settings);
}

class LabelSmall extends _StyledText {
  const LabelSmall(String data,
      {Key? key, ColorTheme? theme, TextSettings? settings})
      : super(data,
            key: key,
            textTheme: TextTheme.labelSmall,
            theme: theme,
            settings: settings);

  const LabelSmall.primary(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.primary, settings: settings);
  const LabelSmall.onPrimary(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onPrimary, settings: settings);
  const LabelSmall.secondary(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.secondary, settings: settings);
  const LabelSmall.onSecondary(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onSecondary, settings: settings);
  const LabelSmall.tertiary(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.tertiary, settings: settings);
  const LabelSmall.onTertiary(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onTertiary, settings: settings);
  const LabelSmall.info(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.info, settings: settings);
  const LabelSmall.onInfo(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onInfo, settings: settings);
  const LabelSmall.warning(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.warning, settings: settings);
  const LabelSmall.onWarning(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onWarning, settings: settings);

  const LabelSmall.success(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.success, settings: settings);
  const LabelSmall.onSuccess(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onSuccess, settings: settings);
  const LabelSmall.disabled(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.disabled, settings: settings);
  const LabelSmall.onDisabled(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onDisabled, settings: settings);
  const LabelSmall.background(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.background, settings: settings);
  const LabelSmall.onBackground(String data, {Key? key, TextSettings? settings})
      : this(data,
            key: key, theme: ColorTheme.onBackground, settings: settings);
  const LabelSmall.surface(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.surface, settings: settings);
  const LabelSmall.onSurface(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onSurface, settings: settings);
}

class BodyLarge extends _StyledText {
  const BodyLarge(String data,
      {Key? key, ColorTheme? theme, TextSettings? settings})
      : super(data,
            key: key,
            textTheme: TextTheme.bodyLarge,
            theme: theme,
            settings: settings);

  const BodyLarge.primary(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.primary, settings: settings);
  const BodyLarge.onPrimary(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onPrimary, settings: settings);
  const BodyLarge.secondary(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.secondary, settings: settings);
  const BodyLarge.onSecondary(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onSecondary, settings: settings);
  const BodyLarge.tertiary(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.tertiary, settings: settings);
  const BodyLarge.onTertiary(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onTertiary, settings: settings);
  const BodyLarge.info(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.info, settings: settings);
  const BodyLarge.onInfo(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onInfo, settings: settings);
  const BodyLarge.warning(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.warning, settings: settings);
  const BodyLarge.onWarning(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onWarning, settings: settings);

  const BodyLarge.success(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.success, settings: settings);
  const BodyLarge.onSuccess(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onSuccess, settings: settings);
  const BodyLarge.disabled(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.disabled, settings: settings);
  const BodyLarge.onDisabled(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onDisabled, settings: settings);
  const BodyLarge.background(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.background, settings: settings);
  const BodyLarge.onBackground(String data, {Key? key, TextSettings? settings})
      : this(data,
            key: key, theme: ColorTheme.onBackground, settings: settings);
  const BodyLarge.surface(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.surface, settings: settings);
  const BodyLarge.onSurface(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onSurface, settings: settings);
}

class BodyMedium extends _StyledText {
  const BodyMedium(String data,
      {Key? key, ColorTheme? theme, TextSettings? settings})
      : super(data,
            key: key,
            textTheme: TextTheme.bodyMedium,
            theme: theme,
            settings: settings);

  const BodyMedium.primary(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.primary, settings: settings);
  const BodyMedium.onPrimary(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onPrimary, settings: settings);
  const BodyMedium.secondary(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.secondary, settings: settings);
  const BodyMedium.onSecondary(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onSecondary, settings: settings);
  const BodyMedium.tertiary(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.tertiary, settings: settings);
  const BodyMedium.onTertiary(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onTertiary, settings: settings);
  const BodyMedium.info(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.info, settings: settings);
  const BodyMedium.onInfo(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onInfo, settings: settings);
  const BodyMedium.warning(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.warning, settings: settings);
  const BodyMedium.onWarning(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onWarning, settings: settings);

  const BodyMedium.success(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.success, settings: settings);
  const BodyMedium.onSuccess(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onSuccess, settings: settings);
  const BodyMedium.disabled(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.disabled, settings: settings);
  const BodyMedium.onDisabled(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onDisabled, settings: settings);
  const BodyMedium.background(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.background, settings: settings);
  const BodyMedium.onBackground(String data, {Key? key, TextSettings? settings})
      : this(data,
            key: key, theme: ColorTheme.onBackground, settings: settings);
  const BodyMedium.surface(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.surface, settings: settings);
  const BodyMedium.onSurface(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onSurface, settings: settings);
}

class BodySmall extends _StyledText {
  const BodySmall(String data,
      {Key? key, ColorTheme? theme, TextSettings? settings})
      : super(data,
            key: key,
            textTheme: TextTheme.bodySmall,
            theme: theme,
            settings: settings);

  const BodySmall.primary(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.primary, settings: settings);
  const BodySmall.onPrimary(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onPrimary, settings: settings);
  const BodySmall.secondary(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.secondary, settings: settings);
  const BodySmall.onSecondary(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onSecondary, settings: settings);
  const BodySmall.tertiary(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.tertiary, settings: settings);
  const BodySmall.onTertiary(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onTertiary, settings: settings);
  const BodySmall.info(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.info, settings: settings);
  const BodySmall.onInfo(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onInfo, settings: settings);
  const BodySmall.warning(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.warning, settings: settings);
  const BodySmall.onWarning(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onWarning, settings: settings);

  const BodySmall.success(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.success, settings: settings);
  const BodySmall.onSuccess(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onSuccess, settings: settings);
  const BodySmall.disabled(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.disabled, settings: settings);
  const BodySmall.onDisabled(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onDisabled, settings: settings);
  const BodySmall.background(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.background, settings: settings);
  const BodySmall.onBackground(String data, {Key? key, TextSettings? settings})
      : this(data,
            key: key, theme: ColorTheme.onBackground, settings: settings);
  const BodySmall.surface(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.surface, settings: settings);
  const BodySmall.onSurface(String data, {Key? key, TextSettings? settings})
      : this(data, key: key, theme: ColorTheme.onSurface, settings: settings);
}
