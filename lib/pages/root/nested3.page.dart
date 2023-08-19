import 'package:auto_route/auto_route.dart';
import 'package:autorola_assignment/widgets/input/digit_code_field.dart';
import 'package:flutter/material.dart';

@RoutePage()
class NestedPage3 extends StatelessWidget {
  const NestedPage3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [DigitCodeField(controller: TextEditingController())],
        ),
      ),
    );
  }
}
