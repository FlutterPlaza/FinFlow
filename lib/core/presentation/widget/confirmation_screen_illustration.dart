import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fpb/assets/fpb_svg.dart';

class ConfirmationScreenIllustration extends StatelessWidget {
  const ConfirmationScreenIllustration({
    super.key,
    required this.box,
  });

  final BoxConstraints box;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: box.maxHeight * .23,
      width: box.maxWidth,
      child: SvgPicture.asset(
        SvgNames.emailConfirmation,
        width: box.maxWidth,
        height: 0.25 * box.maxHeight,
      ),
    );
  }
}
