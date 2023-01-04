import 'package:flutter/material.dart';
import 'package:fpb/core/shared/presentation/theming/colors.dart';
//import 'package:fpb/home_screen/home_screen.dart';
import 'package:fpb/l10n/l10n.dart';
import 'package:fpb/latest_activities_screen/view/latest_activities_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: whiteTheme(context),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: const LatestActivitiesPage(),
    );
  }
}

ThemeData whiteTheme(BuildContext context) {
  return ThemeData(
    primarySwatch: AppColors.getPrimaryMaterialColorWhiteTheme,
    primaryColor: AppColors.primaryColorW,
    brightness: Brightness.light,
    fontFamily: 'Open Sans',
    cardColor: AppColors.cardColorW,
    bottomAppBarColor: AppColors.getPrimaryMaterialColorWhiteTheme,
    textTheme: TextTheme(
      headline6: const TextStyle(
        color: Color(0xff808191),
        fontWeight: FontWeight.bold,
        fontSize: 13,
      ),
      headline5: Theme.of(context).textTheme.headline5?.copyWith(
            fontSize: 16,
          ),
    ),
    backgroundColor: Colors.white,
    buttonTheme: ButtonThemeData(
      // focusColor: AppColors.cardColorW,
      // height: size.height * 0.3,
      // colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primaryColorW),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
    elevatedButtonTheme: const ElevatedButtonThemeData(
      style: ButtonStyle(
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ),
      ),
    ),
    dividerTheme: DividerThemeData(
      color: AppColors.cardColorW,
      thickness: 2,
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
