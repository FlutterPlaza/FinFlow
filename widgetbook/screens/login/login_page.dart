import 'package:fpb/homePage/HomePage.dart';
import 'package:fpb/sign_in/view/sign_in_page.dart';
import 'package:fpb/sign_up/signup_page.dart';
import 'package:widgetbook/widgetbook.dart';

WidgetbookUseCase get sign_in_usecase => WidgetbookUseCase(
      name: 'sign-in',
      builder: (context) {
        return const SignInPage();
      },
    );

WidgetbookUseCase get sign_up_usecase => WidgetbookUseCase(
      name: 'sign-in',
      builder: (context) {
        return const SignUnPage();
      },
    );
WidgetbookUseCase get home_page_usecase => WidgetbookUseCase(
      name: 'sign-in',
      builder: (context) {
        return const MyHomePage();
      },
    );
