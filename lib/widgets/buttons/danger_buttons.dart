import 'package:flutter/material.dart';
import 'package:template/widgets/buttons/async_elevated_button.dart';
import 'package:template/widgets/buttons/async_filled_button.dart';

class ElevatedDangerButton extends StatelessWidget {
  final Future<void> Function()? onPressed;
  final Widget child;

  const ElevatedDangerButton({Key? key, this.onPressed, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AsyncElevatedButton(
      backgroundColor: Theme.of(context).colorScheme.error,
      onPressed: onPressed,
      child: child,
    );
  }
}

class FilledDangerButton extends StatelessWidget {
  final Future<void> Function()? onPressed;
  final Widget child;

  const FilledDangerButton({Key? key, this.onPressed, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AsyncFilledButton(
      backgroundColor: Theme.of(context).colorScheme.error,
      onPressed: onPressed,
      child: child,
    );
  }
}
