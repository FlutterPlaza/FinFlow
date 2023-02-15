import 'package:fpb/sign_up/view/signup_page.dart';
import 'package:widgetbook/widgetbook.dart';

WidgetbookUseCase get signUpUsecase => WidgetbookUseCase(
      name: 'sign-up_usecase',
      builder: (context) {
        return const SignUpBody();
      },
    );
