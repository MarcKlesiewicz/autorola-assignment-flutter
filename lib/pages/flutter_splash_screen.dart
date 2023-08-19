import 'package:auto_route/auto_route.dart';
import 'package:autorola_assignment/theme/theme_definition.dart';
import 'package:autorola_assignment/utils/utils.dart';
import 'package:flutter/material.dart';

import '../router/router.gr.dart';

@RoutePage()
class FlutterSplashScreen extends StatelessWidget {
  const FlutterSplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //TODO: Autorouter -> implement domain splash screen redirecting logic
    Future.delayed(const Duration(seconds: 2), () {
      AutoRouter.of(context).replace(const RootRoute());
    });

    //TODO: Autorouter -> implement domain splash screen
    return Scaffold(
      backgroundColor: context.colors.background,
      body: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Icon(
              Icons.text_fields_rounded,
              size: 120,
              color: context.colors.primary,
            ),
          ),
          const Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: Insets.y32,
              child: CircularProgressIndicator(),
            ),
          )
        ],
      ),
    );
  }
}
