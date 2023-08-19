import 'package:flutter/material.dart';
import 'package:autorola_assignment/utils/utils.dart';

import '../../theme/theme_definition.dart';

class DigitCodeField extends StatefulWidget {
  final int digits;
  final TextEditingController controller;

  final void Function(String?)? onFieldSubmitted;
  final TextInputAction? textInputAction;

  const DigitCodeField({
    Key? key,
    this.digits = 6,
    this.textInputAction,
    this.onFieldSubmitted,
    required this.controller,
  }) : super(key: key);

  @override
  State<DigitCodeField> createState() => _DigitCodeFieldState();
}

class _DigitCodeFieldState extends State<DigitCodeField> {
  var focusNode = FocusNode();

  @override
  void initState() {
    focusNode.requestFocus();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Visibility(
          maintainState: true,
          visible: false,
          child: TextField(
            maxLength: widget.digits,
            autofillHints: const [AutofillHints.oneTimeCode],
            maxLines: 1,
            buildCounter: _hideCounter,
            controller: widget.controller,
            textInputAction: widget.textInputAction,
            onSubmitted: widget.onFieldSubmitted,
            focusNode: focusNode,
            keyboardType: TextInputType.number,
            onChanged: (value) {
              setState(() {});
              if (widget.controller.text.length !=
                  widget.controller.selection.start) {
                widget.controller.selection = TextSelection(
                  baseOffset: widget.controller.selection.start,
                  extentOffset: widget.controller.selection.start + 1,
                );
              }
            },
          ),
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            for (var i = 0; i < widget.digits; i++)
              _DigitCard(
                i,
                controller: widget.controller,
                focusNode: focusNode,
              )
          ],
        )
      ],
    );
  }

  Widget _hideCounter(context,
          {int? currentLength, bool? isFocused, maxLength}) =>
      const SizedBox();
}

class _DigitCard extends StatelessWidget {
  final int i;
  final FocusNode focusNode;
  final TextEditingController controller;

  const _DigitCard(
    this.i, {
    Key? key,
    required this.controller,
    required this.focusNode,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: AspectRatio(
        aspectRatio: 1,
        child: Padding(
          padding: Insets.a05,
          child: InkWell(
            borderRadius: BorderRadiuses.r05,
            onTap: () => _openTextInputAndSelectText(i, context),
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadiuses.r05,
                border: Border.all(color: context.colors.primary),
              ),
              child: Text(
                controller.text.length > i ? controller.text[i] : '',
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _openTextInputAndSelectText(int i, BuildContext context) {
    FocusScope.of(context).unfocus();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      focusNode.requestFocus();
      if (controller.text.length > i) {
        controller.selection =
            TextSelection(baseOffset: i, extentOffset: i + 1);
      } else {
        controller.selection = TextSelection.fromPosition(
          TextPosition(offset: controller.selection.end),
        );
      }
    });
  }
}
