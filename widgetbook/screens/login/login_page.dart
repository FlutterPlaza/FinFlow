// ignore_for_file: non_constant_identifier_names

import 'package:fpb/sign_in/view/sign_in_page.dart';
import 'package:widgetbook/widgetbook.dart';

WidgetbookUseCase get sign_in_usecase => WidgetbookUseCase(
      name: 'sign-in',
      builder: (context) {
        return const SignInBody();
      },
    );
