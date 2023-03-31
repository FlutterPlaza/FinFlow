import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpb/assets/fpb_icons/fpb_icons_icons.dart';
import 'package:fpb/profile/view/profile_page.dart';
import 'package:fpb/profile/view/widgets/log_out_option.dart';
import 'package:fpb/profile/view/widgets/profileInfoOptions.dart';
import 'package:fpb/profile/view/widgets/user_profile_options.dart';

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

  group("User profile screen widget test", () {
    testWidgets("check for profile screen title", (widgetTester) async {
      arrangeAuthRepositoryReturnsStreamWithEmptyUser(mockIAuthFacade);
      arrangeAuthRepositoryReturnsCurrentUserAsEmpty(mockIAuthFacade);

      await widgetTester.pumpApp(
        ProfileScreen(),
        mockIAuthFacadeFroEmailPasswordBloc: mockIAuthFacade,
        mockIFacebookRepositoryFacade: mockIFacebookRepositoryFacade,
        mockIGoogleRepositoryFacade: mockIGoogleRepositoryFacade,
      );

      await widgetTester.pump();
      expect(find.text('Profile'), findsWidgets);
    });
    testWidgets("check for user profile picture and name",
        (widgetTester) async {
      arrangeAuthRepositoryReturnsStreamWithEmptyUser(mockIAuthFacade);
      arrangeAuthRepositoryReturnsCurrentUserAsEmpty(mockIAuthFacade);

      await widgetTester.pumpApp(
         ProfileScreen(),
        mockIAuthFacadeFroEmailPasswordBloc: mockIAuthFacade,
        mockIFacebookRepositoryFacade: mockIFacebookRepositoryFacade,
        mockIGoogleRepositoryFacade: mockIGoogleRepositoryFacade,
      );

      await widgetTester.pump();
      expect(find.byKey(Key('UserPic')), findsOneWidget);
      expect(find.byKey(Key('UserName')), findsOneWidget);
      expect(find.byKey(Key('UserEmail')), findsOneWidget);
    });
    testWidgets("check for edit icon", (widgetTester) async {
      arrangeAuthRepositoryReturnsStreamWithEmptyUser(mockIAuthFacade);
      arrangeAuthRepositoryReturnsCurrentUserAsEmpty(mockIAuthFacade);

      await widgetTester.pumpApp(
        ProfileScreen(),
        mockIAuthFacadeFroEmailPasswordBloc: mockIAuthFacade,
        mockIFacebookRepositoryFacade: mockIFacebookRepositoryFacade,
        mockIGoogleRepositoryFacade: mockIGoogleRepositoryFacade,
      );

      await widgetTester.pump();
      expect(find.byIcon((FpbIcons.edit)), findsOneWidget);
    });
    testWidgets("check for user profile options", (widgetTester) async {
      arrangeAuthRepositoryReturnsStreamWithEmptyUser(mockIAuthFacade);
      arrangeAuthRepositoryReturnsCurrentUserAsEmpty(mockIAuthFacade);

      await widgetTester.pumpApp(
         ProfileScreen(),
        mockIAuthFacadeFroEmailPasswordBloc: mockIAuthFacade,
        mockIFacebookRepositoryFacade: mockIFacebookRepositoryFacade,
        mockIGoogleRepositoryFacade: mockIGoogleRepositoryFacade,
      );

      await widgetTester.pump();

      expect(find.byType((UserProfileOptions)), findsWidgets);
      expect(find.byType(ProfileInfoOptions), findsWidgets);
      expect(find.byIcon(FpbIcons.profile), findsOneWidget);
      expect(find.text('Account'), findsOneWidget);
      expect(find.byIcon(FpbIcons.setting), findsOneWidget);
      expect(find.text('Settings'), findsOneWidget);
      expect(find.byIcon(Icons.notifications), findsOneWidget);
      expect(find.text('Notifications'), findsOneWidget);
      expect(find.byIcon(FpbIcons.credit_card), findsOneWidget);
      expect(find.text('Payment methods'), findsOneWidget);
    });
    testWidgets("check for user log out option", (widgetTester) async {
      arrangeAuthRepositoryReturnsStreamWithEmptyUser(mockIAuthFacade);
      arrangeAuthRepositoryReturnsCurrentUserAsEmpty(mockIAuthFacade);

      await widgetTester.pumpApp(
        ProfileScreen(),
        mockIAuthFacadeFroEmailPasswordBloc: mockIAuthFacade,
        mockIFacebookRepositoryFacade: mockIFacebookRepositoryFacade,
        mockIGoogleRepositoryFacade: mockIGoogleRepositoryFacade,
      );

      await widgetTester.pump();

      expect(find.byType((LogOutOption)), findsWidgets);
      expect(find.byType(ProfileInfoOptions), findsWidgets);
      expect(find.byIcon(FpbIcons.logout), findsOneWidget);
      expect(find.text('Log out'), findsOneWidget);
    });
    testWidgets("check for version text and term and conditions text",
        (widgetTester) async {
      arrangeAuthRepositoryReturnsStreamWithEmptyUser(mockIAuthFacade);
      arrangeAuthRepositoryReturnsCurrentUserAsEmpty(mockIAuthFacade);

      await widgetTester.pumpApp(
        ProfileScreen(),
        mockIAuthFacadeFroEmailPasswordBloc: mockIAuthFacade,
        mockIFacebookRepositoryFacade: mockIFacebookRepositoryFacade,
        mockIGoogleRepositoryFacade: mockIGoogleRepositoryFacade,
      );

      await widgetTester.pump();

      expect(find.byKey(Key('VersionText')), findsOneWidget);
      expect(find.byKey(Key('TermsAndConditions')), findsOneWidget);
    });
  });
}
