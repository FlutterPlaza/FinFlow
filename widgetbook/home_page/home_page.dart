import 'package:fpb/core/domain/user.dart';
import 'package:fpb/home/home_screen.dart';
import 'package:widgetbook/widgetbook.dart';

WidgetbookUseCase get homePageUsecase => WidgetbookUseCase(
      name: 'home-page_usecase',
      builder: (context) {
        return HomeScreen(user: User.empty);
      },
    );
