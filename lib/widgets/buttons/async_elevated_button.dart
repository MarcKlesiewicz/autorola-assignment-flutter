import 'dart:async';
import 'package:flutter/material.dart';
import 'package:autorola_assignment/utils/list_extensions.dart';
import 'package:autorola_assignment/utils/utils.dart';

class AsyncElevatedButton extends StatefulWidget {
  final FutureOr<void> Function()? onPressed;
  final Widget child;
  final Color? backgroundColor;
  final Color? foregroundColor;

  const AsyncElevatedButton({
    super.key,
    required this.child,
    this.onPressed,
    this.backgroundColor,
    this.foregroundColor,
  });

  factory AsyncElevatedButton.icon({
    required FutureOr<void> Function()? onPressed,
    required Icon icon,
    required Widget label,
  }) = _AsyncElevatedButtonWithIcon;

  @override
  State<AsyncElevatedButton> createState() => _AsyncElevatedButtonState();
}

class _AsyncElevatedButtonState extends State<AsyncElevatedButton> {
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    var backgroundColor =
        widget.backgroundColor ?? Theme.of(context).colorScheme.primary;
    var luminance = ThemeData.estimateBrightnessForColor(
        Theme.of(context).colorScheme.primary);

    var foregroundColor = widget.foregroundColor ??
        (luminance == Brightness.light ? Colors.black : Colors.white);

    var style = ElevatedButton.styleFrom(
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor,
    );

    return ElevatedButton(
      onPressed: () async {
        setState(() => isLoading = true);
        await widget.onPressed?.call();
        setState(() => isLoading = false);
      },
      style: style,
      child: Stack(
        alignment: Alignment.center,
        children: [
          AnimatedOpacity(
            duration: Durations.ms300,
            opacity: isLoading ? 0 : 1,
            child: widget.child,
          ),
          AnimatedOpacity(
            duration: Durations.ms300,
            opacity: isLoading ? 1 : 0,
            child: Container(
              padding: Insets.a01,
              height: 30,
              width: 30,
              child: CircularProgressIndicator(
                color: style.foregroundColor?.resolve({MaterialState.selected}),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _AsyncElevatedButtonWithIcon extends AsyncElevatedButton {
  _AsyncElevatedButtonWithIcon({
    required super.onPressed,
    required Widget icon,
    required Widget label,
  }) : super(
          child: Row(children: [icon, label].gap(Gaps.sm)),
        );
}
