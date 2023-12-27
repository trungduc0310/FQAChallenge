import 'package:flutter/material.dart';
import 'package:fqa_challenge/resource/colors.dart';
import 'package:fqa_challenge/resource/text_style.dart';
import 'package:fqa_challenge/widget/f_icon_image.dart';

class FToastErrorSign extends StatelessWidget {
  const FToastErrorSign({super.key, required this.messageError});

  final String messageError;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 16),
      decoration: const ShapeDecoration(
          color: AppColors.red30,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)))),
      child: Row(
        children: [
          const Padding(
            padding: EdgeInsets.all(12),
            child: FImageIcon(
              iconFilename: 'icon_error_sign_on_toast.png',
              size: 24,
              iconColor: Colors.white,
            ),
          ),
          Text(
            messageError,
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(color: AppColors.white),
          )
        ],
      ),
    );
  }
}
