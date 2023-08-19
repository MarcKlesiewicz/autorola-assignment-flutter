import 'dart:async';
import 'package:flutter/material.dart';
import 'package:template/utils/list_extensions.dart';
import 'package:template/utils/utils.dart';

class AsyncFilledButton extends StatefulWidget {
  final FutureOr<void> Function()? onPressed;
  final Widget child;
  final Color? backgroundColor;
  final Color? foregroundColor;

  const AsyncFilledButton({
    super.key,
    required this.child,
    this.onPressed,
    this.backgroundColor,
    this.foregroundColor,
  });

  factory AsyncFilledButton.icon({
    required FutureOr<void> Function()? onPressed,
    required Icon icon,
    required Widget label,
  }) = _AsyncFilledButtonWithIcon;

  @override
  State<AsyncFilledButton> createState() => _AsyncFilledButtonState();
}

class _AsyncFilledButtonState extends State<AsyncFilledButton> {
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    var style = FilledButton.styleFrom(
      backgroundColor: widget.backgroundColor,
      foregroundColor: widget.foregroundColor,
    );

    return FilledButton(
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
              height: 45,
              width: double.infinity,
              child: Center(
                child: CircularProgressIndicator(
                  color:
                      style.foregroundColor?.resolve({MaterialState.selected}),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _AsyncFilledButtonWithIcon extends AsyncFilledButton {
  _AsyncFilledButtonWithIcon({
    required super.onPressed,
    required Widget icon,
    required Widget label,
  }) : super(
          child: Row(children: [icon, label].gap(Gaps.sm)),
        );
}
