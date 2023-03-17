import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgIconButton extends StatelessWidget {
  const SvgIconButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50,
      height: 50,
      child: SvgPicture.asset(
        'assets/fpb-assets/orange-home-icon.svg',
      ),
    );
  }
}
