import 'package:fpb/onboarding/view/onboarding_screens.dart';
import 'package:widgetbook/widgetbook.dart';

WidgetbookUseCase get sendPageUsecase => WidgetbookUseCase(
      name: 'send-page_usecase',
      builder: (context) {
        return const OnboardingScreen();
      },
    );
