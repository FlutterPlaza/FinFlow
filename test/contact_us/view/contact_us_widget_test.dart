import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpb/contact_us/view/contact_us_screen.dart';

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

  group("Contact us screen widget test", () {
    testWidgets("check for contact us screen title", (widgetTester) async {
      arrangeAuthRepositoryReturnsStreamWithEmptyUser(mockIAuthFacade);
      arrangeAuthRepositoryReturnsCurrentUserAsEmpty(mockIAuthFacade);

      await widgetTester.pumpApp(
        ContactUsScreen(),
        mockIAuthFacadeFroEmailPasswordBloc: mockIAuthFacade,
        mockIFacebookRepositoryFacade: mockIFacebookRepositoryFacade,
        mockIGoogleRepositoryFacade: mockIGoogleRepositoryFacade,
      );

      await widgetTester.pump();

      //expect(find.byType(FpbButton), findsOneWidget);
      expect(find.byKey(Key('ContactusPageTitle')), findsWidgets);
    });
    testWidgets("check for contact us screen form fields",
        (widgetTester) async {
      arrangeAuthRepositoryReturnsStreamWithEmptyUser(mockIAuthFacade);
      arrangeAuthRepositoryReturnsCurrentUserAsEmpty(mockIAuthFacade);

      await widgetTester.pumpApp(
        ContactUsScreen(),
        mockIAuthFacadeFroEmailPasswordBloc: mockIAuthFacade,
        mockIFacebookRepositoryFacade: mockIFacebookRepositoryFacade,
        mockIGoogleRepositoryFacade: mockIGoogleRepositoryFacade,
      );

      await widgetTester.pump();

      expect(find.byKey(Key('NameField')), findsWidgets);
      expect(find.byKey(Key('EmailField')), findsWidgets);
      expect(find.byKey(Key('MessageField')), findsWidgets);
    });
    testWidgets("check for contact us screen submit button",
        (widgetTester) async {
      arrangeAuthRepositoryReturnsStreamWithEmptyUser(mockIAuthFacade);
      arrangeAuthRepositoryReturnsCurrentUserAsEmpty(mockIAuthFacade);

      await widgetTester.pumpApp(
        ContactUsScreen(),
        mockIAuthFacadeFroEmailPasswordBloc: mockIAuthFacade,
        mockIFacebookRepositoryFacade: mockIFacebookRepositoryFacade,
        mockIGoogleRepositoryFacade: mockIGoogleRepositoryFacade,
      );

      await widgetTester.pump();

      expect(find.byKey(Key('SubmitButton')), findsWidgets);
    });
  });
}
