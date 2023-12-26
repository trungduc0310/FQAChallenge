import 'package:flutter/material.dart';
import 'package:fqa_challenge/resource/colors.dart';

class TextStyles {
  static const TextStyle textTitleScreenStyle = TextStyle(
      fontWeight: FontWeight.w600,
      fontFamily: 'Poppins',
      fontSize: 24);

  static const TextStyle textContent1Style = TextStyle(
      color: AppColors.colorSecondaryText,
      fontWeight: FontWeight.w300,
      fontFamily: 'Poppins',
      fontSize: 16);

  static const TextStyle textContentOnButtonPrimary = TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w600,
      fontFamily: 'Poppins',
      fontSize: 16);

  static const TextStyle textContentInputTextPrimary = TextStyle(
      fontSize: 16,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w400,
      color: AppColors.colorTextPrimary);

  static const TextStyle textContentSubFunction = TextStyle(
      fontSize: 14,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w400,
      color: AppColors.colorHigh1Text);

  static const TextStyle textActionPrimary = TextStyle(
      color: AppColors.colorButtonPrimary,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w600,
      fontSize: 16);

  static const TextStyle textDirectoryToAction = TextStyle(
      color: AppColors.colorSecondaryText,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w400,
      fontSize: 16);

  static const TextStyle textErrorSignOnToast = TextStyle(
      color: Colors.white,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w500,
      fontSize: 16);

}
