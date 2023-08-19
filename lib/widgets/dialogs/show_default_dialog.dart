import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:autorola_assignment/theme/theme_definition.dart';
import 'package:autorola_assignment/utils/utils.dart';

enum SnackbarType { info, error, success, warning }

showDefaultSnackbar(
  BuildContext context,
  SnackbarType snackbarType,
  String title, {
  int duration = 5,
  Widget? icon,
}) {
  late Color backgroundColor;
  late Color foregroundColor;

  switch (snackbarType) {
    case SnackbarType.info:
      backgroundColor = context.colors.info;
      foregroundColor = context.colors.onInfo;
      break;
    case SnackbarType.error:
      backgroundColor = context.colors.error;
      foregroundColor = context.colors.onError;
      break;
    case SnackbarType.success:
      backgroundColor = context.colors.success;
      foregroundColor = context.colors.onSuccess;
      break;
    case SnackbarType.warning:
      backgroundColor = context.colors.warning;
      foregroundColor = context.colors.onWarning;
      break;
    default:
      backgroundColor = context.colors.primary;
      foregroundColor = context.colors.onPrimary;
      break;
  }

  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: backgroundColor,
      showCloseIcon: true,
      closeIconColor: foregroundColor,
      content: Row(
        children: [
          if (icon != null)
            Padding(
              padding: Insets.r04,
              child: IconTheme(
                data: IconTheme.of(context).copyWith(color: foregroundColor),
                child: icon,
              ),
            ),
          Flexible(
            child: Text(
              title,
              style: TextStyle(color: foregroundColor),
            ),
          ),
        ],
      ),
    ),
  );
}

showErrorSnackBar(
  BuildContext context,
  String? error, {
  Map<String?, String>? errorToMessageMap,
  SnackbarType snackbarType = SnackbarType.error,
  int duration = 5,
  Widget? icon = const Icon(
    Icons.warning,
  ),
}) {
  var message = "";

  if (errorToMessageMap == null) {
    message = error ?? "";
  } else if (errorToMessageMap.containsKey(error)) {
    message = errorToMessageMap[error]!;
  } else {
    log('Missing error handler for: "$error"\n Cases handled: [\n\t${errorToMessageMap.keys.join("\n\t")}\n]');
  }

  showDefaultSnackbar(
    context,
    snackbarType,
    message,
    duration: duration,
    icon: icon,
  );
}

showNotImplementedSnackBar(
  BuildContext context, {
  SnackbarType snackbarType = SnackbarType.info,
  int duration = 5,
  Widget? icon = const Icon(
    Icons.construction,
  ),
}) {
  var message = "NOT IMPLEMENTED YET";

  showDefaultSnackbar(
    context,
    snackbarType,
    message,
    duration: duration,
    icon: icon,
  );
}
