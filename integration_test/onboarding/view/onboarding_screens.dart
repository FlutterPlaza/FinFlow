import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpb/assets/fpb_svg.dart';
import 'package:fpb/authentication_with_google/application/google_auth_bloc/google_sign_in_bloc.dart';
import 'package:fpb/injection.dart';
import 'package:fpb/l10n/l10n.dart';
import 'package:fpb/onboarding/onboarding.dart';

import '../../../test/helpers/helpers.dart';

void onboardingFlowTest() {
  final AppLocalizations l10n = getIt<AppLocalizations>();

  group('onboarding flow', () {
    testWidgets('displays the onboarding flow', (tester) async {
      await tester.pumpApp(OnboardingScreen(),);
      await tester.pumpAndSettle();

      /// TODO: write tests for the bubble animation when it's implemented

      /// Onboarding Screen One
      expect(find.image(AssetImage(SvgNames.sendIllustration)), findsOneWidget);
      expect(find.text(l10n.onboardingSendTitle), findsOneWidget);
      expect(find.text(l10n.onboardingSendDescription), findsOneWidget);

      final Finder skipButtonLabel = find.byKey(ValueKey('skip_button'));
      final Finder nextButtonLabel = find.byKey(ValueKey('next_button'));

      expect(find.text(l10n.onboardingSkipLabel), findsOneWidget);
      expect(find.text(l10n.onboardingNextLabel), findsOneWidget);
      expect(find.byKey(ValueKey('next_icon')), findsOneWidget);

      await tester.tap(skipButtonLabel, warnIfMissed: true);
      await tester.tap(nextButtonLabel, warnIfMissed: true);

      await waitForNextScreen(tester);

      /// Onboarding Screen Two
      expect(find.image(AssetImage(SvgNames.saveIllustration,)), findsOneWidget);
      expect(find.text(l10n.onboardingSaveTitle), findsOneWidget);
      expect(find.text(l10n.onboardingSaveDescription), findsOneWidget);
      expect(find.text(l10n.onboardingSkipLabel), findsOneWidget);
      expect(find.text(l10n.onboardingNextLabel), findsOneWidget);
      await tester.tap(skipButtonLabel, warnIfMissed: true);
      await tester.tap(nextButtonLabel, warnIfMissed: true);

      await waitForNextScreen(tester);

      /// Onboarding Screen Three
      expect(find.image(AssetImage(SvgNames.transIllustration)), findsOneWidget);
      expect(find.text(l10n.onboardingTransactionTitle), findsOneWidget);
      expect(find.text(l10n.onboardingTransactionDescription), findsOneWidget);
      final Finder getStartedButtonLabel = find.byKey(ValueKey('get_started_button'));
      await tester.tap(getStartedButtonLabel, warnIfMissed: true);

      // Trigger a frame.
      await tester.pumpAndSettle();

      /// Display the Login screen at the end of the onboarding flow
      expect(find.byType(SignIn), findsOneWidget);

    });
    testWidgets('showcase the ', (tester) async {
      await tester.pumpApp(OnboardingScreen(),);
      await tester.pumpAndSettle();

      /// TODO: write tests for the bubble animation when it's implemented

      /// Onboarding Screen One
      expect(find.image(AssetImage(SvgNames.sendIllustration)), findsOneWidget);
      expect(find.text(l10n.onboardingSendTitle), findsOneWidget);
      expect(find.text(l10n.onboardingSendDescription), findsOneWidget);

      final Finder skipButtonLabel = find.byKey(ValueKey('skip_button'));
      final Finder nextButtonLabel = find.byKey(ValueKey('next_button'));

      expect(find.text(l10n.onboardingSkipLabel), findsOneWidget);
      expect(find.text(l10n.onboardingNextLabel), findsOneWidget);
      expect(find.byKey(ValueKey('next_icon')), findsOneWidget);

      await tester.tap(skipButtonLabel, warnIfMissed: true);
      await tester.tap(nextButtonLabel, warnIfMissed: true);

      await waitForNextScreen(tester);

      /// Onboarding Screen Two
      expect(find.image(AssetImage(SvgNames.saveIllustration,)), findsOneWidget);
      expect(find.text(l10n.onboardingSaveTitle), findsOneWidget);
      expect(find.text(l10n.onboardingSaveDescription), findsOneWidget);
      expect(find.text(l10n.onboardingSkipLabel), findsOneWidget);
      expect(find.text(l10n.onboardingNextLabel), findsOneWidget);
      await tester.tap(skipButtonLabel, warnIfMissed: true);
      await tester.tap(nextButtonLabel, warnIfMissed: true);

      await waitForNextScreen(tester);

      /// Onboarding Screen Three
      expect(find.image(AssetImage(SvgNames.transIllustration)), findsOneWidget);
      expect(find.text(l10n.onboardingTransactionTitle), findsOneWidget);
      expect(find.text(l10n.onboardingTransactionDescription), findsOneWidget);
      final Finder getStartedButtonLabel = find.byKey(ValueKey('get_started_button'));
      await tester.tap(getStartedButtonLabel, warnIfMissed: true);

      // Trigger a frame.
      await tester.pumpAndSettle();

      /// Display the Login screen at the end of the onboarding flow
      expect(find.byType(SignIn), findsOneWidget);

    });
  });
}

Future<void> waitForNextScreen(WidgetTester tester) async {
   await tester.pumpAndSettle();
  await tester.pump(Duration(seconds: 1));
}
