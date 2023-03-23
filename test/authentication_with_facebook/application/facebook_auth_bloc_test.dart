import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpb/authentication_with_facebook/application/facebook_auth_bloc.dart';
import 'package:fpb/authentication_with_facebook/facebook_auth.dart';
import 'package:fpb/core/domain/user.dart';
import 'package:fpb/core/failures/auth_failure.dart';
import 'package:mocktail/mocktail.dart';

import '../../helpers/helpers.dart';

class MockIFacebookRepositoryFacade extends Mock
    implements IFacebookRepositoryFacade {}

void main() {
  late FacebookAuthBloc bloc;
  late MockIFacebookRepositoryFacade facebookRepositoryFacade;

  setUp(() {
    facebookRepositoryFacade = MockIFacebookRepositoryFacade();

    bloc = FacebookAuthBloc(
      authenticationRepository: facebookRepositoryFacade,
    );
  });

  test("Facebook Auth Bloc initial state should be FacebookAuthState.initial",
      () {
    //assert
    expect(bloc.state, equals(FacebookAuthState.initial()));
  });

  group("Sign in with facebook", () {
    blocTest<FacebookAuthBloc, FacebookAuthState>(
      "should emit [loading, failed] with proper message for the error when facebook auth fails",
      build: () {
        when(
          () => facebookRepositoryFacade.signInWithFacebook(),
        ).thenAnswer(
          (invocation) async => left(
            AuthFailure.cancelledByUser(),
          ),
        );
        return bloc;
      },
      act: (_) {
        _.add(FacebookAuthEvent.signIn());
      },
      expect: () => containsAllInOrder([
        FacebookAuthState.initial().copyWith(
          isLoading: true,
        ),
        FacebookAuthState(
          failureOrUser: left(
            AuthFailure.cancelledByUser(),
          ),
          isLoading: false,
        ),
      ]),
      verify: (bloc) {
        verify(
          () => facebookRepositoryFacade.signInWithFacebook(),
        ).called(1);
      },
    );

    blocTest<FacebookAuthBloc, FacebookAuthState>(
      "should sign in the user with his facebook account",
      build: () {
        when(
          () => facebookRepositoryFacade.signInWithFacebook(),
        ).thenAnswer(
          (invocation) async => right(
            testUser,
          ),
        );
        return bloc;
      },
      act: (_) {
        _.add(FacebookAuthEvent.signIn());
      },
      expect: () => containsAllInOrder([
        FacebookAuthState.initial().copyWith(
          isLoading: true,
        ),
        FacebookAuthState(
          failureOrUser: right(
            testUser,
          ),
          isLoading: false,
        ),
      ]),
      verify: (bloc) {
        verify(
          () => facebookRepositoryFacade.signInWithFacebook(),
        ).called(1);
      },
    );
  });

  group("Sign out with facebook", () {
    blocTest<FacebookAuthBloc, FacebookAuthState>(
      "should emit [loading, failed] with proper message for the error when facebook logout fails",
      build: () {
        when(
          () => facebookRepositoryFacade.signOut(),
        ).thenAnswer(
          (invocation) async => left(
            AuthFailure.logoutFailed(),
          ),
        );
        return bloc;
      },
      act: (_) {
        _.add(FacebookAuthEvent.signOut());
      },
      expect: () => containsAllInOrder([
        FacebookAuthState.initial().copyWith(
          isLoading: true,
        ),
        FacebookAuthState(
          failureOrUser: left(
            AuthFailure.logoutFailed(),
          ),
          isLoading: false,
        ),
      ]),
      verify: (bloc) {
        verify(
          () => facebookRepositoryFacade.signOut(),
        ).called(1);
      },
    );

    blocTest<FacebookAuthBloc, FacebookAuthState>(
      "should sign out the user with facebook",
      build: () {
        when(
          () => facebookRepositoryFacade.signOut(),
        ).thenAnswer(
          (invocation) async => right(
            unit,
          ),
        );
        return bloc;
      },
      act: (_) {
        _.add(FacebookAuthEvent.signOut());
      },
      expect: () => containsAllInOrder([
        FacebookAuthState.initial().copyWith(
          isLoading: true,
        ),
        FacebookAuthState(
          failureOrUser: right(
            User.empty,
          ),
          isLoading: false,
        ),
      ]),
      verify: (bloc) {
        verify(
          () => facebookRepositoryFacade.signOut(),
        ).called(1);
      },
    );
  });
}
