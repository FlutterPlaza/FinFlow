import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpb/authentication_with_firebase/application/bloc/auth_bloc.dart';
import 'package:fpb/core/domain/user.dart';
import 'package:mocktail/mocktail.dart';

import '../../../helpers/helpers.dart';

void main() {
  late AuthBloc bloc;
  late MockIAuthFacade authFacade;

  setUp(() {
    authFacade = MockIAuthFacade();

    arrangeAuthRepositoryReturnsStreamWithEmptyUser(authFacade);

    bloc = AuthBloc(authFacade);
  });

  test("Auth Bloc initial state should be _Splash", () {
    //assert
    expect(bloc.state, equals(AuthState.splash()));
  });

  blocTest<AuthBloc, AuthState>(
    "Trigger auth request",
    build: () {
      arrangeAuthRepositoryReturnsCurrentUserAsEmpty(authFacade);

      return bloc;
    },
    act: (_) {
      _.add(AuthEvent.triggerAuthRequest());
    },
    expect: () => [],
    verify: (_) {
      verify(
        () => authFacade.user,
      ).called(1);

      verify(
        () => authFacade.currentUser,
      ).called(1);
    },
  );

  blocTest<AuthBloc, AuthState>(
    """emits [AuthState.authenticated(), AuthState.unauthenticated()] 
    when AuthEvent.userChanged is added
    and then AuthEvent.logoutRequest is added""",
    build: () {
      return bloc;
    },
    act: (_) async {
      when(() => authFacade.signOut()).thenAnswer(
        (invocation) async {
          _.add(AuthEvent.userChanged(User.empty));
          return right(unit);
        },
      );

      _.add(
        AuthEvent.userChanged(
          testUser,
        ),
      );
      _.add(AuthEvent.logoutRequest());
    },
    expect: () => containsAllInOrder([
      AuthState.authenticated(user: testUser),
      AuthState.unauthenticated(),
    ]),
    verify: (bloc) {
      verify(() => authFacade.signOut()).called(1);
    },
  );

  group("user changed", () {
    blocTest<AuthBloc, AuthState>(
      "emits [AuthState.authenticated()] when AuthEvent.userChanged is added",
      build: () {
        return bloc;
      },
      act: (_) {
        _.add(AuthEvent.userChanged(testUser));
      },
      expect: () => contains(
        AuthState.authenticated(user: testUser),
      ),
    );

    blocTest<AuthBloc, AuthState>(
      "emits [AuthState.unauthenticated()] when AuthEvent.userChanged is added",
      build: () {
        return bloc;
      },
      act: (_) {
        _.add(AuthEvent.userChanged(testUser));
        _.add(AuthEvent.userChanged(User.empty));
      },
      skip: 1,
      expect: () => contains(
        AuthState.unauthenticated(),
      ),
    );
  });
}
