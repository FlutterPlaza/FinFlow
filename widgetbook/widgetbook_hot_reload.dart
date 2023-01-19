import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';

import 'home_page/home_page.dart';
import 'screens/login/login_page.dart';
import 'screens/onboarding/send_page.dart';
import 'screens/signup/sign_up_page.dart';

class WidgetbookHotReload extends StatelessWidget {
  const WidgetbookHotReload({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, cts) {
        return Widgetbook.material(
          directories: [
            WidgetbookCategory(
              name: 'screens',
              children: [
                WidgetbookComponent(
                  name: 'sign-in',
                  useCases: [sign_in_usecase],
                ),
                WidgetbookComponent(
                  name: 'sign-up',
                  useCases: [signUpUsecase],
                ),
                WidgetbookComponent(
                  name: 'HomePage',
                  useCases: [homePageUsecase],
                ),
                WidgetbookComponent(
                  name: 'send-page',
                  useCases: [sendPageUsecase],
                ),
              ],
            ),
            WidgetbookCategory(
              name: 'widgets',
              children: [
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
          // devices: const [
          //   Apple.iPhone11,
          //   Samsung.s21ultra,
          //   Samsung.s10,
          //   Apple.iPhone6
          // ],
          appInfo: AppInfo(name: 'FP Bank'),
          // themes: [
          //   WidgetbookTheme(
          //     name: 'Light',
          //     data: whiteTheme(context, cts),
          //   ),
          //   WidgetbookTheme(
          //     name: 'Dark',
          //     data: ThemeData.dark(),
          //   ),
          // ],
          addons: [],
        );
      },
    );
  }
}
