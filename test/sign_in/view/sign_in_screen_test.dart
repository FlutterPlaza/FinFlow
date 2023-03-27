import 'package:flutter_test/flutter_test.dart';
import 'package:fpb/sign_in/sign_in.dart';
import 'package:fpb/sign_in/view/widgets/login_button.dart';

import '../../helpers/helpers.dart';

void main() {
  late MockIFacebookRepositoryFacade mockIFacebookRepositoryFacade;
  late MockIGoogleRepositoryFacade mockIGoogleRepositoryFacade;
  late MockIAuthFacade mockIAuthFacade;

  setUp(() {
    mockIAuthFacade = MockIAuthFacade();
    mockIFacebookRepositoryFacade = MockIFacebookRepositoryFacade();
    mockIGoogleRepositoryFacade = MockIGoogleRepositoryFacade();
  });

  group("Sign in screen widget test", () {
    testWidgets("check for login button", (widgetTester) async {
      arrangeAuthRepositoryReturnsStreamWithEmptyUser(mockIAuthFacade);
      arrangeAuthRepositoryReturnsCurrentUserAsEmpty(mockIAuthFacade);

      await widgetTester.pumpApp(
        SignInBody(),
        mockIAuthFacadeFroEmailPasswordBloc: mockIAuthFacade,
        mockIFacebookRepositoryFacade: mockIFacebookRepositoryFacade,
        mockIGoogleRepositoryFacade: mockIGoogleRepositoryFacade,
      );

      await widgetTester.pump();

      expect(find.byType(LoginButton), findsOneWidget);
    });
  });
}
