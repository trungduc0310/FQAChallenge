import 'package:flutter/widgets.dart';
import 'package:fqa_challenge/resource/strings.dart';

class FImageIcon extends StatelessWidget {
  const FImageIcon({super.key, required this.iconFilename, this.size, this.iconColor});

  final String iconFilename;
  final double? size;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return ImageIcon(
      AssetImage("${Strings.assetIcon}$iconFilename"),
      size: size ?? 20,
      color: iconColor,
    );
  }
}
