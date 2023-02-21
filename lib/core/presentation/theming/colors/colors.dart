part of 'package:fpb/core/presentation/theming/themes/theme.dart';

class _AppColors {
  static Color primaryColorW = const Color(0xff48A2DF);
  static Color secondaryColorW = const Color(0xff000000);
  static Color secondaryContainerW = const Color(0xffDF602F);
  static Color onSurfaceW = const Color(0xffD9D9D9);
  static Color bgColorW = const Color(0xffF5F5F5); // ;
  static Color errorContainerW = const Color(0xffFFE5E7);
  static Color onErrorW = const Color(0xffFF000D);
  // static Color bgColorW = const Color(0xffF7F7F7);
  static Color onBgColorW = Color(0xffFFFFFF);

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

  static MaterialColor get getPrimaryMaterialColorWhiteTheme {
    final colorShades = <int, Color>{
      50: getShade(primaryColorW, value: 0.5),
      100: getShade(primaryColorW, value: 0.4),
      200: getShade(primaryColorW, value: 0.3),
      300: getShade(primaryColorW, value: 0.2),
      400: getShade(primaryColorW),
      500: primaryColorW,
      600: getShade(primaryColorW, darker: true),
      700: getShade(primaryColorW, value: 0.15, darker: true),
      800: getShade(primaryColorW, value: 0.2, darker: true),
      900: getShade(primaryColorW, value: 0.25, darker: true),
    };
    return MaterialColor(primaryColorW.value, colorShades);
  }

  static MaterialColor get getPrimaryMaterialColorDarkTheme {
    final colorShades = <int, Color>{
      50: getShade(primaryColorW, value: 0.5),
      100: getShade(primaryColorW, value: 0.4),
      200: getShade(primaryColorW, value: 0.3),
      300: getShade(primaryColorW, value: 0.2),
      400: getShade(primaryColorW),
      500: primaryColorW,
      600: getShade(primaryColorW, darker: true),
      700: getShade(primaryColorW, value: 0.15, darker: true),
      800: getShade(primaryColorW, value: 0.2, darker: true),
      900: getShade(primaryColorW, value: 0.25, darker: true),
    };
    return MaterialColor(primaryColorW.value, colorShades);
  }

  static MaterialColor get getMaterialColor {
    final colorShades = <int, Color>{
      50: getShade(primaryColorW, value: 0.5),
      100: getShade(primaryColorW, value: 0.4),
      200: getShade(primaryColorW, value: 0.3),
      300: getShade(primaryColorW, value: 0.2),
      400: getShade(primaryColorW),
      500: primaryColorW,
      600: getShade(primaryColorW, darker: true),
      700: getShade(primaryColorW, value: 0.15, darker: true),
      800: getShade(primaryColorW, value: 0.2, darker: true),
      900: getShade(primaryColorW, value: 0.25, darker: true),
    };
    return MaterialColor(primaryColorW.value, colorShades);
  }
}

final cl = _AppColors.getMaterialColorFromColor(_AppColors.primaryColorW);
