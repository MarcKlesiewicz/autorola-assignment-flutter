import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_translate/flutter_translate.dart';
import 'package:template/utils/app_licence.dart';
import 'package:template/utils/utils.dart';
import 'package:template/widgets/buttons/danger_buttons.dart';

@RoutePage()
class NestedPage1 extends StatelessWidget {
  const NestedPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer(builder: (context, ref, child) {
        return ListView(
          children: [
            Gaps.lgV,
            ElevatedButton(
              child: const Text('Elevated Button'),
              onPressed: () {},
            ),
            Gaps.lgV,
            ElevatedDangerButton(
              child: const Text('Danger Button'),
              onPressed: () async {
                await Future.delayed(const Duration(seconds: 1));
              },
            ),
            Gaps.lgV,
            AppLicence(
              title: Text(translate("licence")),
            )
          ],
        );
      }),
    );
  }
}
