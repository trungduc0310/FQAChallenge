import 'package:flutter/material.dart';
import '../resource/colors.dart';

class TitleScreen extends StatelessWidget {
  const TitleScreen({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(title,
        style: Theme.of(context)
            .textTheme
            .titleLarge!
            .copyWith(color: AppColors.colorTextPrimary));
  }
}
