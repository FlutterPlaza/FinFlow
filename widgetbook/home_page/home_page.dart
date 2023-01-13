import 'package:fpb/home_screen/home_screen.dart';
import 'package:widgetbook/widgetbook.dart';

WidgetbookUseCase get homePageUsecase => WidgetbookUseCase(
      name: 'home-page_usecase',
      builder: (context) {
        return const MyHomePage();
      },
    );
