import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpb/assets/fpb_icons/fpb_icons_icons.dart';
import 'package:fpb/core/presentation/widget/icon_login.dart';
import 'package:fpb/onboarding/view/widgets/alternative_auth.dart';
import 'package:fpb/sign_in/sign_in.dart';
import 'package:fpb/sign_in/view/widgets/login_button.dart';
import 'package:fpb/sign_in/view/widgets/password_input.dart';
import 'package:fpb/sign_in/view/widgets/email_input.dart';
import 'package:fpb/sign_in/view/widgets/phone_number_input.dart';

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
      expect(find.byKey(Key('Divider')), findsOneWidget);
      expect(find.byKey(Key('OrLogInWith')), findsOneWidget);
    });
    testWidgets("check for face ID icon", (widgetTester) async {
      arrangeAuthRepositoryReturnsStreamWithEmptyUser(mockIAuthFacade);
      arrangeAuthRepositoryReturnsCurrentUserAsEmpty(mockIAuthFacade);

      await widgetTester.pumpApp(
        SignInBody(),
        mockIAuthFacadeFroEmailPasswordBloc: mockIAuthFacade,
        mockIFacebookRepositoryFacade: mockIFacebookRepositoryFacade,
        mockIGoogleRepositoryFacade: mockIGoogleRepositoryFacade,
      );

      await widgetTester.pump();

      expect(find.byType(FaceIDIcon), findsOneWidget);
      expect(find.byIcon(FpbIcons.face_id), findsOneWidget);
    });
    testWidgets("check for Email tab background color", (widgetTester) async {
      arrangeAuthRepositoryReturnsStreamWithEmptyUser(mockIAuthFacade);
      arrangeAuthRepositoryReturnsCurrentUserAsEmpty(mockIAuthFacade);

      await widgetTester.pumpApp(
        SignInBody(),
        mockIAuthFacadeFroEmailPasswordBloc: mockIAuthFacade,
        mockIFacebookRepositoryFacade: mockIFacebookRepositoryFacade,
        mockIGoogleRepositoryFacade: mockIGoogleRepositoryFacade,
      );

      TabBar text = widgetTester.widget(find.byKey(Key('EmailLogIn')));

      await widgetTester.pump();

      //: Test for email tab's background color
      expect(find.byKey(Key('EmailLogIn')), findsOneWidget);
      expect((text.indicator as BoxDecoration).color, Color(0xff000000));
    });
    testWidgets("check for Email tab textform fields", (widgetTester) async {
      arrangeAuthRepositoryReturnsStreamWithEmptyUser(mockIAuthFacade);
      arrangeAuthRepositoryReturnsCurrentUserAsEmpty(mockIAuthFacade);

      await widgetTester.pumpApp(
        SignInBody(),
        mockIAuthFacadeFroEmailPasswordBloc: mockIAuthFacade,
        mockIFacebookRepositoryFacade: mockIFacebookRepositoryFacade,
        mockIGoogleRepositoryFacade: mockIGoogleRepositoryFacade,
      );

      await widgetTester.pump();

      expect(find.byType(EmailInput), findsOneWidget);
      expect(find.byType(PasswordInput), findsOneWidget);
    });
    testWidgets("check for passwordfield eye icon and forgot password text",
        (widgetTester) async {
      arrangeAuthRepositoryReturnsStreamWithEmptyUser(mockIAuthFacade);
      arrangeAuthRepositoryReturnsCurrentUserAsEmpty(mockIAuthFacade);

      var passwordField = find.byType(PasswordInput);

      await widgetTester.pumpApp(
        SignInBody(),
        mockIAuthFacadeFroEmailPasswordBloc: mockIAuthFacade,
        mockIFacebookRepositoryFacade: mockIFacebookRepositoryFacade,
        mockIGoogleRepositoryFacade: mockIGoogleRepositoryFacade,
      );
      await widgetTester.ensureVisible(passwordField);

      //TextFormField pswdField = widgetTester.firstState(passwordField);
      await widgetTester.pump();

      expect(find.byType(PasswordInput), findsOneWidget);
      expect(find.byIcon(FpbIcons.eye_open), findsOneWidget);
      expect(find.byKey(Key('forgotPassword')), findsOneWidget);
    });
    testWidgets("check for Phone number tab textform fields",
        (widgetTester) async {
      arrangeAuthRepositoryReturnsStreamWithEmptyUser(mockIAuthFacade);
      arrangeAuthRepositoryReturnsCurrentUserAsEmpty(mockIAuthFacade);

      await widgetTester.pumpApp(
        SignInBody(),
        mockIAuthFacadeFroEmailPasswordBloc: mockIAuthFacade,
        mockIFacebookRepositoryFacade: mockIFacebookRepositoryFacade,
        mockIGoogleRepositoryFacade: mockIGoogleRepositoryFacade,
      );

      await widgetTester.pump();

      // Test for phone number input
      //expect(find.byKey(Key('PhoneNumberInput')), findsOneWidget);
      expect(find.byType(PasswordInput), findsOneWidget);
    });
    testWidgets("check for already a member text", (widgetTester) async {
      arrangeAuthRepositoryReturnsStreamWithEmptyUser(mockIAuthFacade);
      arrangeAuthRepositoryReturnsCurrentUserAsEmpty(mockIAuthFacade);

      await widgetTester.pumpApp(
        SignInBody(),
        mockIAuthFacadeFroEmailPasswordBloc: mockIAuthFacade,
        mockIFacebookRepositoryFacade: mockIFacebookRepositoryFacade,
        mockIGoogleRepositoryFacade: mockIGoogleRepositoryFacade,
      );

      await widgetTester.pump();

      expect(find.byKey(Key('alreadyAmember')), findsOneWidget);
      expect(find.byType(TextButton), findsOneWidget);
      //expect(find.byType(Divider), findsWidgets);
    });
    testWidgets("check for Google, Facebook, Twitter, Apple icons",
        (widgetTester) async {
      arrangeAuthRepositoryReturnsStreamWithEmptyUser(mockIAuthFacade);
      arrangeAuthRepositoryReturnsCurrentUserAsEmpty(mockIAuthFacade);

      await widgetTester.pumpApp(
        SignInBody(),
        mockIAuthFacadeFroEmailPasswordBloc: mockIAuthFacade,
        mockIFacebookRepositoryFacade: mockIFacebookRepositoryFacade,
        mockIGoogleRepositoryFacade: mockIGoogleRepositoryFacade,
      );

      await widgetTester.pump();

      // Test for all 4 individual assets
      expect(find.byType(AlternativeAuth), findsOneWidget);
      expect(find.byType(IconLogin), findsWidgets);
    });
    testWidgets("check for phone number input", (widgetTester) async {
      arrangeAuthRepositoryReturnsStreamWithEmptyUser(mockIAuthFacade);
      arrangeAuthRepositoryReturnsCurrentUserAsEmpty(mockIAuthFacade);

      await widgetTester.pumpApp(
        SignInBody(),
        mockIAuthFacadeFroEmailPasswordBloc: mockIAuthFacade,
        mockIFacebookRepositoryFacade: mockIFacebookRepositoryFacade,
        mockIGoogleRepositoryFacade: mockIGoogleRepositoryFacade,
      );

      await widgetTester.pump();

      // Test for phone number input present, and test for position of drop down icon.
      expect(find.byType(PhoneNumberInput), findsOneWidget);
    });
  });
}
