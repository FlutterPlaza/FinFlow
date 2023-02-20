import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

extension SvgPictureXX on SvgPicture {
  SvgPicture fpbsvg(String name) {
    return SvgPicture.asset('assets/fpb-assets/$name.svg');
  }
}

mixin SvgPictureX {
  SvgPicture fpbsvg(String name) {
    return SvgPicture.asset('assets/fpb-assets/$name.svg');
  }
}

extension ContainerX on Widget {
  Container card(
      {double? radius, Color? color, double? height, double? width}) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius ?? 0), color: color),
      child: this,
    );
  }

  Padding padding({double? top, double? bottom, double? left, double? right}) {
    return Padding(
      padding: EdgeInsets.only(
          top: top ?? 0,
          bottom: bottom ?? 0,
          left: left ?? 0,
          right: right ?? 0),
      child: this,
    );
  }
}
