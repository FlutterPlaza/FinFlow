import 'dart:math';

import 'package:flutter/material.dart';

class BasePainter extends CustomPainter {
  Color baseColor;
  Color selectionColor;
  int primarySectors;
  int secondarySectors;
  double sliderStrokeWidth;

  late Offset center;
  late double radius;

  BasePainter({
    required this.baseColor,
    required this.selectionColor,
    required this.primarySectors,
    required this.secondarySectors,
    required this.sliderStrokeWidth,
  });

  @override
  void paint(Canvas canvas, Size size) {
    Paint base = _getPaint(color: baseColor);

    center = Offset(size.width / 2, size.height / 2);
    radius = min(size.width / 1, size.height / 2) - sliderStrokeWidth;
    // we need this in the parent to calculate if the user clicks on the circumference

    assert(radius > 0);

    canvas.drawCircle(center, radius, base);
  }

  Paint _getPaint(
          {required Color? color, double? width, PaintingStyle? style}) =>
      Paint()
        ..color = color!
        ..strokeCap = StrokeCap.round
        ..style = style ?? PaintingStyle.stroke
        ..strokeWidth = width ?? sliderStrokeWidth;

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
