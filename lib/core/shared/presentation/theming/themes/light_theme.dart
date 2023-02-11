import 'package:flutter/material.dart';
import 'package:fpb/core/shared/presentation/theming/colors/colors.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@WidgetbookTheme(name: 'Light', isDefault: true)
ThemeData whiteTheme(BuildContext context, BoxConstraints cts) {
  return ThemeData(
    primarySwatch: AppColors.getPrimaryMaterialColorWhiteTheme,
    primaryColor: AppColors.primaryColorW,
    brightness: Brightness.light,
    fontFamily: 'Open Sans',
    cardColor: AppColors.cardColorW,
    bottomAppBarColor: AppColors.getPrimaryMaterialColorWhiteTheme,
    textTheme: TextTheme(
      displayLarge: Theme.of(context).textTheme.displayLarge,
      displayMedium: Theme.of(context).textTheme.displayMedium,
      displaySmall: Theme.of(context).textTheme.displaySmall,
      headlineLarge: Theme.of(context).textTheme.headlineLarge,
      headlineMedium: Theme.of(context).textTheme.headlineMedium,
      headlineSmall: Theme.of(context).textTheme.headline5,
      titleLarge: Theme.of(context).textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.w900,
            fontSize: cts.maxWidth * 0.056,
          ),
      titleMedium: Theme.of(context).textTheme.titleMedium?.copyWith(
            fontSize: cts.maxWidth * 0.048,
          ),
      titleSmall: Theme.of(context).textTheme.titleSmall,
      bodyLarge: Theme.of(context).textTheme.bodyLarge,
      bodyMedium: Theme.of(context).textTheme.bodyMedium,
      bodySmall: Theme.of(context).textTheme.bodySmall,
      labelLarge: Theme.of(context).textTheme.labelLarge,
      labelMedium: Theme.of(context).textTheme.labelMedium?.copyWith(
            color: const Color(0xffB2B3BD),
          ),
      labelSmall: Theme.of(context).textTheme.labelSmall,
    ),
    backgroundColor: Colors.white,
    buttonTheme: ButtonThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius:
                BorderRadius.all(Radius.circular(cts.maxWidth * 0.025)),
          ),
        ),
      ),
    ),
    dividerTheme: DividerThemeData(
      color: AppColors.cardColorW,
      //color: const Color(0xff181818),
      thickness: .4,
    ),
    cardTheme: CardTheme(
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      // suffixIconColor: AppColors.cardColorW,
      // suffixIconColor: Theme.of(context).colorScheme.onSurface,
      focusColor: Colors.red,
      labelStyle: Theme.of(context).textTheme.caption,
      hintStyle: Theme.of(context).textTheme.caption,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: AppColors.cardColorW, width: 1.5),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: AppColors.cardColorW),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(
          color: Theme.of(context).errorColor,
          width: 1.5,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(
          color: Theme.of(context).colorScheme.onSurface,
          width: 1.2,
        ),
      ),
      errorMaxLines: 1,
    ),
    tabBarTheme: TabBarTheme(
      labelStyle: Theme.of(context).textTheme.caption,
      unselectedLabelStyle: Theme.of(context).textTheme.caption,
      unselectedLabelColor: Theme.of(context).colorScheme.onSurface,
      labelColor: Theme.of(context).colorScheme.onBackground,
      indicator: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(6)),
        color: Theme.of(context).shadowColor,
      ),
      indicatorSize: TabBarIndicatorSize.tab,
    ),
    iconTheme: IconThemeData(
      color: Theme.of(context).cardColor,
    ),
  );
}
