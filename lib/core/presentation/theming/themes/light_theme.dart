part of 'parts.dart';

const borderRaduis = 0.032;

@WidgetbookTheme(name: 'Light', isDefault: true)
ThemeData whiteTheme(BuildContext context, BoxConstraints cts) {
  final theme = Theme.of(context);
  final style = theme.textTheme;
  final colors = theme.colorScheme;
  return ThemeData(
    colorScheme: ColorScheme.light(
      primary: _AppColors.primaryColorW,
      primaryContainer: _AppColors.primaryColorW,
      secondary: _AppColors.secondaryColorW,
      secondaryContainer: _AppColors.secondaryContainerW,
      surface: _AppColors.bgColorW,
      background: _AppColors.bgColorW,
      error: _AppColors.primaryColorW,
      onPrimary: _AppColors.onSurfaceW,
      onSecondary: _AppColors.primaryColorW,
      onSurface: _AppColors.onSurfaceW,
      onBackground: _AppColors.onBgColorW,
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
      labelStyle: style.bodySmall,
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
    ),
    scaffoldBackgroundColor: _AppColors.bgColorW,
    tabBarTheme: TabBarTheme(
      labelStyle: style.bodySmall,
      unselectedLabelStyle: style.bodySmall,
      unselectedLabelColor: theme.colorScheme.onSurface,
      labelColor: theme.colorScheme.onBackground,
      indicator: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(cts.maxWidth * 0.01)),
        color: theme.shadowColor,
      ),
      indicatorSize: TabBarIndicatorSize.tab,
    ),
    iconTheme: IconThemeData(
      color: theme.colorScheme.onSurface,
      size: cts.maxWidth * 0.05,
    ),
  );
}
