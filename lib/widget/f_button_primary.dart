import 'package:flutter/material.dart';

import '../resource/colors.dart';
import '../resource/text_style.dart';

class FButtonPrimary extends StatelessWidget {
  const FButtonPrimary({
    super.key,
    required this.labelButton,
    required this.onActionButton,
  });

  final String labelButton;
  final Function onActionButton;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: const ButtonStyle(
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8)))),
            minimumSize: MaterialStatePropertyAll(Size(double.infinity, 52)),
            backgroundColor:
            MaterialStatePropertyAll(AppColors.colorButtonPrimary)),
        onPressed: onActionButton(),
        child: Text(
          labelButton,
          style: TextStyles.textContentOnButtonPrimary,
        ));
  }
}
