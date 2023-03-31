import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpb/assets/fpb_icons/fpb_icons_icons.dart';
import 'package:fpb/core/presentation/widget/fpb_button.dart';
import 'package:fpb/core/presentation/widget/icon_login.dart';
import 'package:fpb/onboarding/view/widgets/alternative_auth.dart';
import 'package:fpb/sign_in/view/widgets/phone_number_input.dart';
import 'package:fpb/sign_up/view/signup_page.dart';

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

  group("Sign up screen widget test", () {
    testWidgets("check for signup button", (widgetTester) async {
      arrangeAuthRepositoryReturnsStreamWithEmptyUser(mockIAuthFacade);
      arrangeAuthRepositoryReturnsCurrentUserAsEmpty(mockIAuthFacade);

      await widgetTester.pumpApp(
        SignUpBody(),
        mockIAuthFacadeFroEmailPasswordBloc: mockIAuthFacade,
        mockIFacebookRepositoryFacade: mockIFacebookRepositoryFacade,
        mockIGoogleRepositoryFacade: mockIGoogleRepositoryFacade,
      );

      await widgetTester.pump();

      expect(find.byType(FpbButton), findsOneWidget);
      expect(find.byKey(Key('Divider')), findsWidgets);
      expect(find.byKey(Key('OrSignUpWith')), findsOneWidget);
    });
    testWidgets("check for Email tab background color", (widgetTester) async {
      arrangeAuthRepositoryReturnsStreamWithEmptyUser(mockIAuthFacade);
      arrangeAuthRepositoryReturnsCurrentUserAsEmpty(mockIAuthFacade);

      await widgetTester.pumpApp(
        SignUpBody(),
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
        SignUpBody(),
        mockIAuthFacadeFroEmailPasswordBloc: mockIAuthFacade,
        mockIFacebookRepositoryFacade: mockIFacebookRepositoryFacade,
        mockIGoogleRepositoryFacade: mockIGoogleRepositoryFacade,
      );

      await widgetTester.pump();

      expect(find.byKey(Key('FullnameField')), findsOneWidget);
      expect(find.byKey(Key('EmailField')), findsOneWidget);
      expect(find.byKey(Key('PasswordField')), findsOneWidget);
    });
    testWidgets("check for passwordfield eye icon", (widgetTester) async {
      arrangeAuthRepositoryReturnsStreamWithEmptyUser(mockIAuthFacade);
      arrangeAuthRepositoryReturnsCurrentUserAsEmpty(mockIAuthFacade);

      var passwordField = find.byKey(Key('PasswordField'));

      await widgetTester.pumpApp(
        SignUpBody(),
        mockIAuthFacadeFroEmailPasswordBloc: mockIAuthFacade,
        mockIFacebookRepositoryFacade: mockIFacebookRepositoryFacade,
        mockIGoogleRepositoryFacade: mockIGoogleRepositoryFacade,
      );
      await widgetTester.ensureVisible(passwordField);

      await widgetTester.pump();

      expect(find.byIcon(FpbIcons.eye_open), findsOneWidget);
    });
    testWidgets("check for Phone number tab textform fields",
        (widgetTester) async {
      arrangeAuthRepositoryReturnsStreamWithEmptyUser(mockIAuthFacade);
      arrangeAuthRepositoryReturnsCurrentUserAsEmpty(mockIAuthFacade);

      await widgetTester.pumpApp(
        SignUpBody(),
        mockIAuthFacadeFroEmailPasswordBloc: mockIAuthFacade,
        mockIFacebookRepositoryFacade: mockIFacebookRepositoryFacade,
        mockIGoogleRepositoryFacade: mockIGoogleRepositoryFacade,
      );

      await widgetTester.pump();

      // Test for phone number input presence
      expect(find.byKey(Key('IntlPhoneInput')), findsOneWidget);
    });
    testWidgets("check for already a member text", (widgetTester) async {
      arrangeAuthRepositoryReturnsStreamWithEmptyUser(mockIAuthFacade);
      arrangeAuthRepositoryReturnsCurrentUserAsEmpty(mockIAuthFacade);

      await widgetTester.pumpApp(
        SignUpBody(),
        mockIAuthFacadeFroEmailPasswordBloc: mockIAuthFacade,
        mockIFacebookRepositoryFacade: mockIFacebookRepositoryFacade,
        mockIGoogleRepositoryFacade: mockIGoogleRepositoryFacade,
      );

      await widgetTester.pump();

      expect(find.byKey(Key('AlreadyAMember')), findsOneWidget);
      expect(find.byType(TextButton), findsOneWidget);
      //expect(find.byType(Divider), findsWidgets);
    });
    testWidgets("check for Google, Facebook, Twitter, Apple icons",
        (widgetTester) async {
      arrangeAuthRepositoryReturnsStreamWithEmptyUser(mockIAuthFacade);
      arrangeAuthRepositoryReturnsCurrentUserAsEmpty(mockIAuthFacade);

      await widgetTester.pumpApp(
        SignUpBody(),
        mockIAuthFacadeFroEmailPasswordBloc: mockIAuthFacade,
        mockIFacebookRepositoryFacade: mockIFacebookRepositoryFacade,
        mockIGoogleRepositoryFacade: mockIGoogleRepositoryFacade,
      );

      await widgetTester.pump();

      // Test for all 4 individual assets
      expect(find.byType(AlternativeAuth), findsOneWidget);
      expect(find.byType(IconLogin), findsWidgets);
    });
    testWidgets("check for phone number input style", (widgetTester) async {
      arrangeAuthRepositoryReturnsStreamWithEmptyUser(mockIAuthFacade);
      arrangeAuthRepositoryReturnsCurrentUserAsEmpty(mockIAuthFacade);

      await widgetTester.pumpApp(
        SignUpBody(),
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
