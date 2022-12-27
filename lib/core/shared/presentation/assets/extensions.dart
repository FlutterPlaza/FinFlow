import 'package:flutter_svg/flutter_svg.dart';

extension SvgPictureX on SvgPicture {
  SvgPicture fpbsvg(String name) {
    return SvgPicture.asset('assets/fpb-assets/$name.svg');
  }
}
