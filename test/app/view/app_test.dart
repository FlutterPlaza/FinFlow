// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:authentication_repository/authentication_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpb/app/app.dart';
import 'package:fpb/onboarding/view/onboarding_screens.dart';
import 'package:fpb/sign_in_with_google/repository/google_authentication_repository.dart';
import 'package:user_repository/user_repository.dart';

void main() {
  final authenticationRepository = AuthenticationRepository();
  final userRepository = UserRepository();
  final googleAuthenticationRepository = GoogleAuthenticationRepository();

  group('App', () {
    testWidgets('renders SignInPage', (tester) async {
      await tester.pumpWidget(
        App(
          authenticationRepository: authenticationRepository,
          userRepository: userRepository,
          googleAuthenticationRepository: googleAuthenticationRepository,
        ),
      );
      expect(find.byType(OnboardingPage), findsOneWidget);
    });
  });
}
