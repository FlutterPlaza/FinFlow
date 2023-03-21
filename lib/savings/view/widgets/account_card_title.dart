import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AccountsCardTitle extends StatelessWidget {
  const AccountsCardTitle(
      {super.key,
      required this.box,
      required this.containerTitle,
      required this.svgname});

  final BoxConstraints box;
  final String containerTitle;
  final String svgname;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(svgname),
        SizedBox(
          width: box.maxHeight * 0.05,
        ),
        Text(
          containerTitle,
          style: Theme.of(context)
              .textTheme
              .titleMedium
              ?.copyWith(fontWeight: FontWeight.w400),
        ),
      ],
    );
  }
}
