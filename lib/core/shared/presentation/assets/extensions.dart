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
