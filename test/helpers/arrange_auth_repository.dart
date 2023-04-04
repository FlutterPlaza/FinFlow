import 'package:dartz/dartz.dart';
import 'package:fpb/core/domain/user.dart';
import 'package:fpb/core/failures/auth_failure.dart';
import 'package:mocktail/mocktail.dart';

import 'mocks.dart';
import 'test_data.dart';

void arrangeAuthRepositoryReturnsCurrentUser(MockIAuthFacade authFacade) {
  when(
    () => authFacade.currentUser,
  ).thenReturn(
    testUser,
  );
}

void arrangeAuthRepositoryReturnsCurrentUserAsEmpty(
    MockIAuthFacade authFacade) {
  when(
    () => authFacade.currentUser,
  ).thenReturn(
    User.empty,
  );
}

void arrangeAuthRepositoryReturnsStreamWithEmptyUser(
    MockIAuthFacade authFacade) {
  when(
    () => authFacade.user,
  ).thenAnswer(
    (_) async* {
      yield User.empty;
    },
  );
}

void arrangeAuthRepositoryReturnsStreamWithUser(MockIAuthFacade authFacade) {
  when(
    () => authFacade.user,
  ).thenAnswer(
    (_) async* {
      yield testUser;
    },
  );
}

void arrangeAuthRepositoryReturnsFailureOnSignin(MockIAuthFacade authFacade) {
  when(
    () => authFacade.signInWithEmailAndPassword(
      email: validEmail,
      password: validPassword,
    ),
  ).thenAnswer(
    (invocation) async {
      return left(
        AuthFailure.invalidEmailAndPasswordCombination(),
      );
    },
  );
}

void arrangeAuthRepositoryReturnsSuccessOnSignin(MockIAuthFacade authFacade) {
  when(
    () => authFacade.signInWithEmailAndPassword(
      email: validEmail,
      password: validPassword,
    ),
  ).thenAnswer(
    (invocation) async => right(
      testUser,
    ),
  );
}

void arrangeAuthRepositoryReturnsFailureOnLogoutRequest(
    MockIAuthFacade authFacade) {
  when(() => authFacade.signOut()).thenAnswer(
    (invocation) async {
      return left(AuthFailure.logoutFailed());
    },
  );
}

void arrangeAuthRepositoryReturnsSuccessOnLogoutRequest(
    MockIAuthFacade authFacade) {
  when(() => authFacade.signOut()).thenAnswer(
    (invocation) async {
      return right(unit);
    },
  );
}
