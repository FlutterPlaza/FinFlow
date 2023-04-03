part of 'theme.dart';

const borderRaduis = 0.025;

@WidgetbookTheme(name: 'Light', isDefault: true)
ThemeData whiteTheme(BuildContext context, BoxConstraints cts) {
  final theme = Theme.of(context);
  final style = theme.textTheme;

  return ThemeData(
    brightness: Brightness.light,
    appBarTheme: AppBarTheme(
      foregroundColor: _AppColors.secondaryColorW,
      color: _AppColors.onSurfaceW,
      elevation: 0,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: _AppColors.onSurfaceW,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
      ),
    ),
    colorScheme: ColorScheme.light(
      primary: _AppColors.primaryColorW, // main blue color
      onPrimary: _AppColors.primaryColorW2,

      primaryContainer: _AppColors.primaryColorW,
      onPrimaryContainer: _AppColors.primaryColorW3,

      secondary: _AppColors.secondaryColorW, // black color (Text, btn etc)
      onSecondary: _AppColors.secondaryColorW2,

      secondaryContainer: _AppColors.secondaryColorW3,
      onSecondaryContainer: _AppColors.secondaryColorW4,

      tertiary: _AppColors.orangePrimary, // use orange
      onTertiary: _AppColors.orangePrimaryW2, // use for cards and icon - Orange

      tertiaryContainer: _AppColors.orangePrimaryW3,
      onTertiaryContainer:
          _AppColors.orangePrimaryW4, // use for cards and icon - OrangeDark

      inverseSurface: _AppColors.successColor, // success color
      inversePrimary: _AppColors.warningColor, // warning color

      outline:
          _AppColors.greyOutline, // use for input borders - container borders
      outlineVariant: _AppColors.greyMedium,
      onInverseSurface: _AppColors.greyDark,

      surface: _AppColors.bgColorW, // white bg
      onSurface: _AppColors.onSurfaceW, // darkGrey bg
      onSurfaceVariant: _AppColors.onBgColorW,

      background: _AppColors.greyWhite, // used on tabBar bgColor, some text
      onBackground: _AppColors.lightGrey,

      error: _AppColors.onErrorW, // error display
      onError: _AppColors.onErrorW,
      errorContainer: _AppColors.errorContainerW,

      brightness: Brightness.light,
    ),
    // primarySwatch: AppColors.getPrimaryMaterialColorWhiteTheme,
    textTheme: GoogleFonts.openSansTextTheme(style).copyWith(
      headlineLarge: style.headlineLarge,
      headlineMedium: style.headlineMedium,
      headlineSmall: style.headlineSmall,
      displayLarge: style.displayLarge?.copyWith(
        fontSize: cts.maxWidth * 0.064,
        fontFamily: 'Open Sans',
      ),
      displayMedium: style.displayMedium?.copyWith(
        fontSize: cts.maxWidth * 0.056,
        fontFamily: 'Open Sans',
      ),
      displaySmall: style.displaySmall?.copyWith(
        fontSize: cts.maxWidth * 0.048,
        fontFamily: 'Open Sans',
      ),
      titleLarge: style.titleLarge?.copyWith(
        fontWeight: FontWeight.w700,
        fontSize: cts.maxWidth * 0.056,
        fontFamily: 'Open Sans',
      ),
      titleMedium: style.titleMedium?.copyWith(
        fontSize: cts.maxWidth * 0.048,
        fontFamily: 'Open Sans',
      ),
      titleSmall: style.titleSmall?.copyWith(
        fontSize: cts.maxWidth * 0.04,
        color: _AppColors.lightGrey,
        fontFamily: 'Open Sans',
      ),
      bodyLarge: style.bodyLarge?.copyWith(
        fontSize: cts.maxWidth * 0.042,
        fontFamily: 'Open Sans',
      ),
      bodyMedium: style.bodyMedium?.copyWith(
        fontSize: cts.maxWidth * 0.035,
        fontFamily: 'Open Sans',
      ),
      bodySmall: style.bodySmall?.copyWith(
        fontSize: cts.maxWidth * 0.028,
        fontFamily: 'Open Sans',
      ),
      labelLarge: style.labelLarge?.copyWith(
        fontSize: cts.maxWidth * 0.028,
        fontFamily: 'Open Sans',
      ),
      labelMedium: style.labelMedium?.copyWith(
        fontSize: cts.maxWidth * 0.028,
        fontFamily: 'Open Sans',
      ),
      labelSmall: style.labelSmall?.copyWith(
        fontSize: cts.maxWidth * 0.028,
        fontFamily: 'Open Sans',
      ),
    ),
    buttonTheme: ButtonThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(cts.maxWidth * borderRaduis),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius:
                BorderRadius.all(Radius.circular(cts.maxWidth * borderRaduis)),
          ),
        ),
      ),
    ),
    dividerTheme: DividerThemeData(
      color: _AppColors.onSurfaceW,
      thickness: .4,
    ),
    cardTheme: CardTheme(
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(cts.maxWidth * borderRaduis),
      ),
    ),

    inputDecorationTheme: InputDecorationTheme(
      // focusColor: _AppColors.secondaryColorW,
      labelStyle: style.bodySmall?.copyWith(
        color: _AppColors.secondaryColorW,
      ),
      hintStyle: style.bodySmall,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(cts.maxWidth * borderRaduis),
        borderSide: BorderSide(
          color: _AppColors.greyOutline,
          width: 1.5,
        ),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(cts.maxWidth * borderRaduis),
        borderSide: BorderSide(
          // color: _AppColors.greyOutline,
          color: Colors.red,
          width: 1.5,
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(cts.maxWidth * borderRaduis),
        borderSide: BorderSide(
          color: _AppColors.onErrorW,
          width: 1.5,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(cts.maxWidth * borderRaduis),
        borderSide: BorderSide(
          color: _AppColors.secondaryColorW,
          width: 1.0,
        ),
      ),
      errorMaxLines: 1,
      contentPadding: EdgeInsets.symmetric(horizontal: cts.maxWidth * 0.04),
    ),
    scaffoldBackgroundColor: _AppColors.onSurfaceW,
    // scaffoldBackgroundColor: _AppColors.dark,
    tabBarTheme: TabBarTheme(
      indicatorColor: Colors
          .purple, // _AppColors.onSurfaceW, // theme.colorScheme.onSurface,
      labelStyle: style.bodySmall,
      unselectedLabelStyle: style.bodySmall,
      unselectedLabelColor: theme.colorScheme.background,
      labelColor: theme.colorScheme.onBackground,
      dividerColor: Colors.purple,
      indicator: BoxDecoration(
        borderRadius:
            BorderRadius.all(Radius.circular(cts.maxWidth * borderRaduis)),
        color: _AppColors.secondaryColorW,
      ),
      indicatorSize: TabBarIndicatorSize.tab,
    ),

    iconTheme: IconThemeData(
      color: _AppColors.lightGrey,
      size: cts.maxWidth * 0.07,
    ),
  );
}
