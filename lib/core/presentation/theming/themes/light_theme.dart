part of 'theme.dart';

const borderRaduis = 0.025;

@WidgetbookTheme(name: 'Light', isDefault: true)
ThemeData whiteTheme(BuildContext context, BoxConstraints cts) {
  final theme = Theme.of(context);
  final style = theme.textTheme;

  return ThemeData(
    colorScheme: ColorScheme.light(
      primary: _AppColors.primaryColorW,
      onPrimary: _AppColors.onSurfaceW,
      primaryContainer: _AppColors.primaryColorW,
      onPrimaryContainer: _AppColors.onSurfaceW,
      secondary: _AppColors.secondaryColorW,
      onSecondary: _AppColors.primaryColorW,
      secondaryContainer: _AppColors.secondaryContainerW,
      tertiary: _AppColors.onSurfaceW,
      onTertiary: Colors
          .red, // set to odd color so we can see which component in the UI is affected
      onTertiaryContainer: Colors
          .blue, // set to odd color so we can see which component in the UI is affected
      inverseSurface: Colors
          .green, // set to odd color so we can see which component in the UI is affected
      inversePrimary: Colors
          .yellow, // set to odd color so we can see which component in the UI is affected
      outline: Colors
          .purple, // set to odd color so we can see which component in the UI is affected
      surface: _AppColors.bgColorW,
      onSurface: _AppColors.onSurfaceW,
      background: _AppColors.bgColorW,
      onBackground: _AppColors.onBgColorW,
      error: _AppColors.primaryColorW,
      onError: _AppColors.onErrorW,
      errorContainer: _AppColors.errorContainerW,

      // onError: AppColors.errorColor,

      brightness: Brightness.light,
    ),
    // primarySwatch: AppColors.getPrimaryMaterialColorWhiteTheme,
    textTheme: GoogleFonts.openSansTextTheme(style).copyWith(
      headlineLarge: style.headlineLarge,
      headlineMedium: style.headlineMedium,
      headlineSmall: style.headlineSmall,
      displayLarge: style.displayLarge?.copyWith(
        fontSize: cts.maxWidth * 0.064,
      ),
      displayMedium: style.displayMedium?.copyWith(
        fontSize: cts.maxWidth * 0.056,
      ),
      displaySmall: style.displaySmall?.copyWith(
        fontSize: cts.maxWidth * 0.048,
      ),
      titleLarge: style.titleLarge?.copyWith(
        fontWeight: FontWeight.w700,
        fontSize: cts.maxWidth * 0.056,
      ),
      titleMedium: style.titleMedium?.copyWith(
        fontSize: cts.maxWidth * 0.048,
      ),
      titleSmall: style.titleSmall?.copyWith(
        fontSize: cts.maxWidth * 0.04,
        color: _AppColors.onSurfaceW,
      ),
      bodyLarge: style.bodyLarge?.copyWith(
        fontSize: cts.maxWidth * 0.042,
      ),
      bodyMedium: style.bodyMedium?.copyWith(
        fontSize: cts.maxWidth * 0.035,
      ),
      bodySmall: style.bodySmall?.copyWith(
        fontSize: cts.maxWidth * 0.028,
      ),
      labelLarge: style.labelLarge?.copyWith(
        fontSize: cts.maxWidth * 0.028,
      ),
      labelMedium: style.labelMedium?.copyWith(
        fontSize: cts.maxWidth * 0.028,
      ),
      labelSmall: style.labelSmall?.copyWith(
        fontSize: cts.maxWidth * 0.028,
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
      focusColor: Colors.red,
      labelStyle: style.bodySmall?.copyWith(
        color: _AppColors.onSurfaceW,
      ),
      hintStyle: style.bodySmall,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(cts.maxWidth * borderRaduis),
        borderSide: BorderSide(color: _AppColors.onSurfaceW, width: 1.5),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(cts.maxWidth * borderRaduis),
        borderSide: BorderSide(color: _AppColors.onSurfaceW),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(cts.maxWidth * borderRaduis),
        borderSide: BorderSide(
          color: theme.colorScheme.error,
          width: 1.5,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(cts.maxWidth * borderRaduis),
        borderSide: BorderSide(
          color: theme.colorScheme.onSurface,
          width: 1.2,
        ),
      ),
      errorMaxLines: 1,
      contentPadding: EdgeInsets.symmetric(
          horizontal: cts.maxWidth * 0.035, vertical: cts.maxWidth * 0.05),
    ),
    scaffoldBackgroundColor: _AppColors.onSurfaceW,
    tabBarTheme: TabBarTheme(
      indicatorColor: Colors
          .purple, // _AppColors.onSurfaceW, // theme.colorScheme.onSurface,
      labelStyle: style.bodySmall,
      unselectedLabelStyle: style.bodySmall,
      unselectedLabelColor: theme.colorScheme.onSurface,
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
      color: theme.colorScheme.onSurface,
      size: cts.maxWidth * 0.05,
    ),
  );
}
