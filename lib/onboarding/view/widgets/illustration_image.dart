import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IllustrationImage extends StatelessWidget {
  const IllustrationImage({
    super.key,
    required this.illustration,
    required this.cts,
    this.color,
  });

  final String illustration;
  final BoxConstraints cts;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: cts.maxHeight / cts.maxWidth >= 1.5
          ? cts.maxHeight * 0.6
          : cts.maxHeight * 0.4,
      width: cts.maxWidth,
      child: Container(
        padding: EdgeInsets.all(cts.maxWidth * 0.1),
        color: color ?? Theme.of(context).colorScheme.secondary,
        child: SvgPicture.asset(illustration),
      ),
    );
  }
}
