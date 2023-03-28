import 'package:dartz/dartz.dart';
import 'package:fpb/core/failures/auth_failure.dart';
import 'package:mocktail/mocktail.dart';

import 'mocks.dart';
import 'test_data.dart';

void arrangeFacebookRepositoryReturnsFailureOnSignin(
    MockIFacebookRepositoryFacade facebookRepositoryFacade) {
  when(
    () => facebookRepositoryFacade.signInWithFacebook(),
  ).thenAnswer(
    (invocation) async => left(
      AuthFailure.cancelledByUser(),
    ),
  );
}

void arrangeFacebookRepositoryReturnsSuccessOnSignin(
    MockIFacebookRepositoryFacade facebookRepositoryFacade) {
  when(
    () => facebookRepositoryFacade.signInWithFacebook(),
  ).thenAnswer(
    (invocation) async => right(
      testUser,
    ),
  );
}

void arrangeFacebookRepositoryReturnsFailureOnSignout(
    MockIFacebookRepositoryFacade facebookRepositoryFacade) {
  when(
    () => facebookRepositoryFacade.signOut(),
  ).thenAnswer(
    (invocation) async => left(
      AuthFailure.logoutFailed(),
    ),
  );
}

void arrangeFacebookRepositoryReturnsSuccessOnSignout(
    MockIFacebookRepositoryFacade facebookRepositoryFacade) {
  when(
    () => facebookRepositoryFacade.signOut(),
  ).thenAnswer(
    (invocation) async => right(
      unit,
    ),
  );
}
