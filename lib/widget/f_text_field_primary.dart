import 'package:flutter/material.dart';

import '../resource/colors.dart';

class FTextFieldPrimary extends StatelessWidget {
  const FTextFieldPrimary({
    super.key,
    required this.hintText,
    this.iconStart,
    this.iconEnd,
    this.textInputAction,
    this.actionIconEnd,
    this.actionIconStart,
  });

  final String hintText;
  final Widget? iconStart;
  final Widget? iconEnd;
  final TextInputAction? textInputAction;
  final Function? actionIconEnd;
  final Function? actionIconStart;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(color: AppColors.colorHigh3Text),
          focusedBorder: const FocusedBorderInputField(),
          enabledBorder: const DefaultBorderInputField(),
          suffixIcon: iconEnd,
          prefixIcon: iconStart,
          prefixIconColor: MaterialStateColor.resolveWith((states) =>
          (states.contains(MaterialState.focused)
              ? AppColors.colorTextPrimary
              : AppColors.colorHigh3Text))),
      textInputAction: textInputAction,
      cursorColor: AppColors.colorButtonPrimary,
    );
  }
}

class FocusedBorderInputField extends OutlineInputBorder {
  const FocusedBorderInputField(
      {super.borderSide = const BorderSide(color: AppColors.colorButtonPrimary),
        super.borderRadius = const BorderRadius.all(Radius.circular(8))});
}

class DefaultBorderInputField extends OutlineInputBorder {
  const DefaultBorderInputField(
      {super.borderSide =
      const BorderSide(color: AppColors.colorBorderTextField),
        super.borderRadius = const BorderRadius.all(Radius.circular(8))});
}
