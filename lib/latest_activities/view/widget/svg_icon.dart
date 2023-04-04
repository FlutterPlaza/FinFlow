import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class svg_icon extends StatelessWidget {
  const svg_icon({
    super.key,
    required this.assetName,
    required this.theme,
  });

  final String assetName;
  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      assetName,
      width: 16,
      height: 16,
      colorFilter: ColorFilter.mode(
        theme.iconTheme.color!,
        BlendMode.srcIn,
      ),
    );
  }
}
