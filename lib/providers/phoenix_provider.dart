import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final phoenixProvider =
    // Throws unimplemented to avoid "AppRestart" having to be nullabale, it is
    // overriden in the providerscope with the value.
    StateProvider<AppRestart>((ref) => throw UnimplementedError());
typedef AppRestart = Function;

/// A Phoenix wrapped ProviderScope
class LittlePhoneixProviderScope extends StatefulWidget {
  final Widget child;

  const LittlePhoneixProviderScope({Key? key, required this.child})
      : super(key: key);

  @override
  State<LittlePhoneixProviderScope> createState() =>
      _LittlePhoneixProviderScopeState();
}

class _LittlePhoneixProviderScopeState
    extends State<LittlePhoneixProviderScope> {
  final littlePhoneixState = GlobalKey<_LittlePhoenixState>();

  @override
  Widget build(BuildContext context) {
    return _Phoenix(
      key: littlePhoneixState,
      child: ProviderScope(
        overrides: [
          phoenixProvider.overrideWith(
            (ref) => littlePhoneixState.currentState!.restartApp,
          ),
        ],
        child: widget.child,
      ),
    );
  }
}

// Largly identical to https://pub.dev/packages/flutter_phoenix except having
// its state available to the LittlePhoenixProvider above (It is private in
// flutter_phoenix thus unavailable as of 1.1.1)
class _Phoenix extends StatefulWidget {
  final Widget child;

  const _Phoenix({Key? key, required this.child}) : super(key: key);

  @override
  _LittlePhoenixState createState() => _LittlePhoenixState();
}

class _LittlePhoenixState extends State<_Phoenix> {
  Key _key = UniqueKey();

  void restartApp() => setState(() => _key = UniqueKey());

  @override
  Widget build(BuildContext context) {
    return KeyedSubtree(key: _key, child: widget.child);
  }
}
