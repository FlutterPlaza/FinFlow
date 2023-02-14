// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:flutter_test/flutter_test.dart';
import 'package:fpb/app/app.dart';
import 'package:fpb/onboarding/view/onboarding_screens.dart';

void main() {
  group('App', () {
    testWidgets('renders SignInPage', (tester) async {
      await tester.pumpWidget(
        App(),
      );
      expect(find.byType(OnboardingScreen), findsOneWidget);
    });
  });
}
