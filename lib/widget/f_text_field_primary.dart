import 'package:flutter/material.dart';
import 'package:fqa_challenge/resource/text_style.dart';

import '../resource/colors.dart';

class FTextFieldPrimary extends StatelessWidget {
  const FTextFieldPrimary(
      {super.key,
      required this.hintText,
      this.iconStart,
      this.iconEnd,
      this.textInputAction,
      this.usePassword,
      this.controller});

  final String hintText;
  final Widget? iconStart;
  final Widget? iconEnd;
  final TextInputAction? textInputAction;
  final bool? usePassword;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    var materialColor = MaterialStateColor.resolveWith((states) =>
        (states.contains(MaterialState.focused)
            ? AppColors.colorTextPrimary
            : AppColors.colorHigh3Text));
    return TextField(
      obscureText: usePassword ?? false,
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(color: AppColors.colorHigh3Text),
          focusedBorder: const FocusedBorderInputField(),
          enabledBorder: const DefaultBorderInputField(),
          suffixIcon: iconEnd,
          prefixIcon: Align(
            alignment: Alignment.center,
            widthFactor: 1,
            heightFactor: 1,
            child: iconStart,
          ),
          prefixIconColor: materialColor,
          suffixIconColor: materialColor),
      textInputAction: textInputAction,
      cursorColor: AppColors.colorButtonPrimary,
      style: TextStyles.textContentInputTextPrimary,
      controller: controller,
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
