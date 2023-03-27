import 'package:flutter_test/flutter_test.dart';
import 'package:fpb/core/application/internet_and_time_bloc/internet_and_time_bloc.dart';

import '../../../helpers/helpers.dart';

void main() {
  late InternetAndTimeBloc bloc;
  late MockAppSettingsHelper appSettings;

  setUp(() {
    appSettings = MockAppSettingsHelper();

    bloc = InternetAndTimeBloc(appSettings);
  });

  test("InternetAndTimeBloc initial state should be InternetAndTimeState.fresh",
      () {
    //assert
    expect(bloc.state, equals(InternetAndTimeState.fresh()));
  });
  group("user changed", () {});
}
