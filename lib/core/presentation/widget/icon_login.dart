import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconLogin extends StatelessWidget {
  const IconLogin({
    super.key,
    required this.svg,
    this.onTap,
    required this.box,
  });

  final String svg;
  final void Function()? onTap;
  final BoxConstraints box;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: box.maxWidth * 0.13,
      width: box.maxWidth * 0.2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(box.maxWidth * 0.03),
        border: Border.all(
          color: Theme.of(context).colorScheme.onSurface,
        ),
      ),
      child: IconButton(
        onPressed: onTap,
        icon: SvgPicture.asset(svg),
      ),
    );
  }
}
