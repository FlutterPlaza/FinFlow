import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpb/authentication_with_google/application/google_auth_bloc/google_sign_in_bloc.dart';
import 'package:fpb/core/domain/user.dart';
import 'package:fpb/core/failures/auth_failure.dart';
import 'package:mocktail/mocktail.dart';

import '../../helpers/helpers.dart';

void main() {
  late GoogleSignInBloc bloc;
  late MockIGoogleRepositoryFacade googleRepositoryFacade;

  setUp(() {
    googleRepositoryFacade = MockIGoogleRepositoryFacade();

    bloc = GoogleSignInBloc(
      authenticationRepository: googleRepositoryFacade,
    );
  });

  test("Google Auth Bloc initial state should be GoogleSignInState.initial",
      () {
    //assert
    expect(bloc.state, equals(GoogleSignInState.initial()));
  });

  group("Sign in with google", () {
    blocTest<GoogleSignInBloc, GoogleSignInState>(
      "should emit [loading, failed] with proper message for the error when google auth fails",
      build: () {
        when(
          () => googleRepositoryFacade.signInWithGoogle(),
        ).thenAnswer(
          (invocation) async => left(
            AuthFailure.cancelledByUser(),
          ),
        );
        return bloc;
      },
      act: (_) {
        _.add(GoogleSignInEvent.signIn());
      },
      expect: () => containsAllInOrder([
        GoogleSignInState.initial().copyWith(
          isLoading: true,
        ),
        GoogleSignInState(
          failureOrUser: left(
            AuthFailure.cancelledByUser(),
          ),
          isLoading: false,
        ),
      ]),
      verify: (bloc) {
        verify(
          () => googleRepositoryFacade.signInWithGoogle(),
        ).called(1);
      },
    );

    blocTest<GoogleSignInBloc, GoogleSignInState>(
      "should sign in the user with his google account",
      build: () {
        when(
          () => googleRepositoryFacade.signInWithGoogle(),
        ).thenAnswer(
          (invocation) async => right(
            testUser,
          ),
        );
        return bloc;
      },
      act: (_) {
        _.add(GoogleSignInEvent.signIn());
      },
      expect: () => containsAllInOrder([
        GoogleSignInState.initial().copyWith(
          isLoading: true,
        ),
        GoogleSignInState(
          failureOrUser: right(
            testUser,
          ),
          isLoading: false,
        ),
      ]),
      verify: (bloc) {
        verify(
          () => googleRepositoryFacade.signInWithGoogle(),
        ).called(1);
      },
    );
  });

  group("Sign out with google", () {
    blocTest<GoogleSignInBloc, GoogleSignInState>(
      "should emit [loading, failed] with proper message for the error when google logout fails",
      build: () {
        when(
          () => googleRepositoryFacade.signOut(),
        ).thenAnswer(
          (invocation) async => left(
            AuthFailure.logoutFailed(),
          ),
        );
        return bloc;
      },
      act: (_) {
        _.add(GoogleSignInEvent.signOut());
      },
      expect: () => containsAllInOrder([
        GoogleSignInState.initial().copyWith(
          isLoading: true,
        ),
        GoogleSignInState(
          failureOrUser: left(
            AuthFailure.logoutFailed(),
          ),
          isLoading: false,
        ),
      ]),
      verify: (bloc) {
        verify(
          () => googleRepositoryFacade.signOut(),
        ).called(1);
      },
    );

    blocTest<GoogleSignInBloc, GoogleSignInState>(
      "should sign out the user with google",
      build: () {
        when(
          () => googleRepositoryFacade.signOut(),
        ).thenAnswer(
          (invocation) async => right(
            unit,
          ),
        );
        return bloc;
      },
      act: (_) {
        _.add(GoogleSignInEvent.signOut());
      },
      expect: () => containsAllInOrder([
        GoogleSignInState.initial().copyWith(
          isLoading: true,
        ),
        GoogleSignInState(
          failureOrUser: right(
            User.empty,
          ),
          isLoading: false,
        ),
      ]),
      verify: (bloc) {
        verify(
          () => googleRepositoryFacade.signOut(),
        ).called(1);
      },
    );
  });
}
