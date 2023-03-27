part of 'package:fpb/core/presentation/theming/themes/theme.dart';

class _AppColors {
  static Color primaryColorW = const Color(0xFF5db1eb);
  static Color primaryColorW2 = const Color(0xFF4285F4);
  static Color primaryColorW3 = const Color(0xFF5eb1eb);

  static Color secondaryColorW = const Color(0xff000000);
  static Color secondaryColorW2 = const Color(0xff181818);
  static Color secondaryColorW3 = const Color(0xff414141);
  static Color secondaryColorW4 = const Color(0xff0B0B0B); 

  static Color greyWhite = Color(0xFFF0F0F0);
  static Color lightGrey = Color(0xFFABABAB);
  static Color greyMedium = Color(0xFFB2B3BD);
  static Color greyOutline = Color(0xFFE4E4E4);
  static Color greyDark = Color(0xFF808080);

  static Color warningColor = const Color(0xffFBBC04);

  static Color successColor = const Color(0xff34A853);

  static Color errorContainerW = const Color(0xffFFE5E7);
  static Color onErrorW = const Color(0xffEA4335);

  static Color orangePrimary = const Color(0xffDF602F);
  static Color orangePrimaryW2 = const Color(0xffC95528);
  static Color orangePrimaryW3 = const Color(0xffEC6936);
  static Color orangePrimaryW4 = const Color(0xffA34420); // has shades of dark

  static Color bgColorW = Color(0xffFFFFFF); // use for some screen as bgColor
  static Color onSurfaceW = Color(0xfff7f7f7); // use for some screen as bgColor
  static Color onBgColorW = Color(0xffD9D9D9);

  static Color getShade(Color color, {bool darker = false, double value = .1}) {
    assert(value >= 0 && value <= 1, 'verify domain interval');

    final hsl = HSLColor.fromColor(color);
    final hslDark = hsl.withLightness(
      (darker ? (hsl.lightness - value) : (hsl.lightness + value))
          .clamp(0.0, 1.0),
    );

    return hslDark.toColor();
  }

  static MaterialColor getMaterialColorFromColor(Color color) {
    final colorShades = <int, Color>{
      50: getShade(color, value: 0.5),
      100: getShade(color, value: 0.4),
      200: getShade(color, value: 0.3),
      300: getShade(color, value: 0.2),
      400: getShade(color),
      500: color,
      600: getShade(color, darker: true),
      700: getShade(color, value: 0.15, darker: true),
      800: getShade(color, value: 0.2, darker: true),
      900: getShade(color, value: 0.25, darker: true),
    };
    return MaterialColor(color.value, colorShades);
  }

  // static MaterialColor get getPrimaryMaterialColorWhiteTheme {
  //   final colorShades = <int, Color>{
  //     50: getShade(primaryColorW, value: 0.5),
  //     100: getShade(primaryColorW, value: 0.4),
  //     200: getShade(primaryColorW, value: 0.3),
  //     300: getShade(primaryColorW, value: 0.2),
  //     400: getShade(primaryColorW),
  //     500: primaryColorW,
  //     600: getShade(primaryColorW, darker: true),
  //     700: getShade(primaryColorW, value: 0.15, darker: true),
  //     800: getShade(primaryColorW, value: 0.2, darker: true),
  //     900: getShade(primaryColorW, value: 0.25, darker: true),
  //   };
  //   return MaterialColor(primaryColorW.value, colorShades);
  // }

  // static MaterialColor get getPrimaryMaterialColorDarkTheme {
  //   final colorShades = <int, Color>{
  //     50: getShade(primaryColorW, value: 0.5),
  //     100: getShade(primaryColorW, value: 0.4),
  //     200: getShade(primaryColorW, value: 0.3),
  //     300: getShade(primaryColorW, value: 0.2),
  //     400: getShade(primaryColorW),
  //     500: primaryColorW,
  //     600: getShade(primaryColorW, darker: true),
  //     700: getShade(primaryColorW, value: 0.15, darker: true),
  //     800: getShade(primaryColorW, value: 0.2, darker: true),
  //     900: getShade(primaryColorW, value: 0.25, darker: true),
  //   };
  //   return MaterialColor(primaryColorW.value, colorShades);
  // }

  // static MaterialColor get getMaterialColor {
  //   final colorShades = <int, Color>{
  //     50: getShade(primaryColorW, value: 0.5),
  //     100: getShade(primaryColorW, value: 0.4),
  //     200: getShade(primaryColorW, value: 0.3),
  //     300: getShade(primaryColorW, value: 0.2),
  //     400: getShade(primaryColorW),
  //     500: primaryColorW,
  //     600: getShade(primaryColorW, darker: true),
  //     700: getShade(primaryColorW, value: 0.15, darker: true),
  //     800: getShade(primaryColorW, value: 0.2, darker: true),
  //     900: getShade(primaryColorW, value: 0.25, darker: true),
  //   };
  //   return MaterialColor(primaryColorW.value, colorShades);
  // }
}

final cl = _AppColors.getMaterialColorFromColor(_AppColors.primaryColorW);
