import 'package:dartz/dartz.dart';
import 'package:fpb/core/failures/auth_failure.dart';
import 'package:mocktail/mocktail.dart';

import 'mocks.dart';
import 'test_data.dart';

void arrangeGoogleRepositoryReturnsFailureOnSignin(
    MockIGoogleRepositoryFacade googleRepositoryFacade) {
  when(
    () => googleRepositoryFacade.signInWithGoogle(),
  ).thenAnswer(
    (invocation) async => left(
      AuthFailure.cancelledByUser(),
    ),
  );
}

void arrangeGoogleRepositoryReturnsSuccessOnSignin(
    MockIGoogleRepositoryFacade googleRepositoryFacade) {
  when(
    () => googleRepositoryFacade.signInWithGoogle(),
  ).thenAnswer(
    (invocation) async => right(
      testUser,
    ),
  );
}

void arrangeGoogleRepositoryReturnsFailureOnSignout(
    MockIGoogleRepositoryFacade googleRepositoryFacade) {
  when(
    () => googleRepositoryFacade.signOut(),
  ).thenAnswer(
    (invocation) async => left(
      AuthFailure.logoutFailed(),
    ),
  );
}

void arrangeGoogleRepositoryReturnsSuccessOnSignout(
    MockIGoogleRepositoryFacade googleRepositoryFacade) {
  when(
    () => googleRepositoryFacade.signOut(),
  ).thenAnswer(
    (invocation) async => right(
      unit,
    ),
  );
}
