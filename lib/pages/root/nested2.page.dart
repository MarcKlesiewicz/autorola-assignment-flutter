import 'package:auto_route/auto_route.dart';
import 'package:autorola_assignment/widgets/text/styled_text.dart';
import 'package:flutter/material.dart';

@RoutePage()
class NestedPage2 extends StatelessWidget {
  const NestedPage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: const [
            DisplayLarge.primary('DisplayLarge'),
            DisplayMedium.primary('DisplayMedium'),
            DisplaySmall.primary("DisplaySmall"),
            HeadlineLarge.primary("HeadlineLarge"),
            HeadlineMedium.primary("HeadlineMedium"),
            HeadlineSmall.primary("HeadlineSmall"),
            TitleLarge.primary("TitleLarge"),
            TitleMedium.primary("TitleMedium"),
            TitleSmall.primary("TitleSmall"),
            LabelLarge.primary("LabelLarge"),
            LabelMedium.primary("LabelMedium"),
            LabelSmall.primary("LabelSmall"),
            BodyLarge.primary("BodyLarge"),
            BodyMedium.primary("BodyMedium"),
            BodySmall.primary("BodySmall"),
          ],
        ),
      ),
    );
  }
}
