import 'package:flutter/material.dart';
import 'package:fpb/core/shared/helpers/relative_sizing.dart';
import 'package:fpb/core/shared/presentation/theming/colors.dart';
import 'package:widgetbook/widgetbook.dart';

import 'screens/login/login_page.dart';

class WidgetbookHotReload extends StatelessWidget {
  const WidgetbookHotReload({super.key});

  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
      categories: [
        WidgetbookCategory(
          name: 'screens',
          widgets: [
            WidgetbookComponent(
              name: 'sign-in',
              useCases: [sign_in_usecase],
            ),
            WidgetbookComponent(
              name: 'sign-up',
              useCases: [sign_up_usecase],
            ),
            WidgetbookComponent(
              name: 'HomePage',
              useCases: [home_page_usecase],
            ),
            WidgetbookComponent(
              name: 'sign-up',
              useCases: [],
            ),
            WidgetbookComponent(
              name: 'sign-up',
              useCases: [],
            ),
          ],
        ),
        WidgetbookCategory(
          name: 'widgets',
          widgets: [
            WidgetbookComponent(
              name: 'Button',
              useCases: [
                WidgetbookUseCase(
                  name: 'elevated',
                  builder: (context) => ElevatedButton(
                    onPressed: () {},
                    child: const Text('Widgetbook'),
                  ),
                ),
                WidgetbookUseCase(
                  name: 'Text button',
                  builder: (context) {
                    return TextButton(
                      onPressed: () {},
                      child: const Text('Text Button'),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ],
      devices: const [
        Apple.iPhone11,
        Samsung.s21ultra,
        Samsung.s10,
        Apple.iPhone6
      ],
      appInfo: AppInfo(name: 'FP Bank'),
      themes: [
        WidgetbookTheme(
          name: 'Light',
          data: whiteTheme(context),
        ),
        WidgetbookTheme(
          name: 'Dark',
          data: ThemeData.dark(),
        ),
      ],
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
      headline6: TextStyle(
        color: const Color(0xff808191),
        fontWeight: FontWeight.bold,
        fontSize: 13.of(context),
      ),
      headline5: Theme.of(context).textTheme.headline5?.copyWith(
            fontSize: 16.of(context),
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
        borderRadius: BorderRadius.circular(10.of(context)),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      // suffixIconColor: AppColors.cardColorW,
      // suffixIconColor: Theme.of(context).colorScheme.onSurface,
      focusColor: Colors.red,
      labelStyle: Theme.of(context).textTheme.caption,
      hintStyle: Theme.of(context).textTheme.caption,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.of(context)),
        borderSide: BorderSide(color: AppColors.cardColorW, width: 1.5),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.of(context)),
        borderSide: BorderSide(color: AppColors.cardColorW),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.of(context)),
        borderSide: BorderSide(
          color: Theme.of(context).errorColor,
          width: 1.5.of(context),
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
