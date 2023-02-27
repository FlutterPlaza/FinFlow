import 'package:flutter/material.dart';

class VerticalSpacingWidget extends StatelessWidget {
  const VerticalSpacingWidget(
      {super.key, required this.box, required this.height});

  final BoxConstraints box;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
    );
  }
}
