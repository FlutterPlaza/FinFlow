import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:formz/formz.dart';
import 'package:fpb/core/application/email_password_bloc/email_password_bloc.dart';
import 'package:fpb/core/failures/auth_failure.dart';
import 'package:fpb/sign_in/domain/email.dart';
import 'package:fpb/sign_in/domain/password.dart';
import 'package:mocktail/mocktail.dart';

import '../../../helpers/helpers.dart';

void main() {
  late EmailPasswordBloc bloc;
  late MockIAuthFacade authFacade;

  setUp(() {
    authFacade = MockIAuthFacade();

    bloc = EmailPasswordBloc(
      authenticationRepository: authFacade,
    );
  });

  group("Update user email address", () {
    blocTest<EmailPasswordBloc, EmailPasswordState>(
      "should emit [invalid] for the state email param when the given email is wrong",
      build: () {
        return bloc;
      },
      act: (_) {
        _.add(EmailPasswordEvent.emailChanged(invalidEmail));
      },
      expect: () => contains(
        bloc.state.copyWith(
          email: Email.dirty(invalidEmail),
        ),
      ),
    );

    blocTest<EmailPasswordBloc, EmailPasswordState>(
      "should emit [valid] for the state email param when the given email is correct",
      build: () {
        return bloc;
      },
      act: (_) {
        _.add(EmailPasswordEvent.emailChanged(validEmail));
      },
      expect: () => contains(
        bloc.state.copyWith(
          email: Email.dirty(validEmail),
        ),
      ),
    );
  });

  group("Update user password", () {
    blocTest<EmailPasswordBloc, EmailPasswordState>(
      "should emit [invalid] for the state password param when the given password is wrong",
      build: () {
        return bloc;
      },
      act: (_) {
        _.add(EmailPasswordEvent.passwordChanged(invalidPassword));
      },
      expect: () => contains(
        bloc.state.copyWith(
          password: Password.dirty(invalidPassword),
        ),
      ),
    );

    blocTest<EmailPasswordBloc, EmailPasswordState>(
      "should emit [valid] for the state password param when the given password is correct",
      build: () {
        return bloc;
      },
      act: (_) {
        _.add(EmailPasswordEvent.passwordChanged(validPassword));
      },
      expect: () => contains(
        bloc.state.copyWith(
          password: Password.dirty(validPassword),
        ),
      ),
    );
  });

  group("Sign in with email and password", () {
    blocTest<EmailPasswordBloc, EmailPasswordState>(
      "should emit [] when the form state is invalid",
      build: () {
        return bloc;
      },
      act: (_) {
        _.add(EmailPasswordEvent.emailChanged(invalidEmail));
        _.add(EmailPasswordEvent.passwordChanged(invalidPassword));
        _.add(EmailPasswordEvent.submitted());
      },
      skip: 2,
      expect: () => [],
    );

    blocTest<EmailPasswordBloc, EmailPasswordState>(
      "should emit [loading, failed] with proper message for the error when Email&Password password sign in fails",
      build: () {
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
        return bloc;
      },
      act: (_) {
        _.add(EmailPasswordEvent.emailChanged(validEmail));
        _.add(EmailPasswordEvent.passwordChanged(validPassword));
        _.add(EmailPasswordEvent.submitted());
      },
      expect: () => containsAllInOrder(
        [
          bloc.state.copyWith(
            status: FormzStatus.submissionInProgress,
          ),
          bloc.state.copyWith(
            status: FormzStatus.submissionFailure,
          )
        ],
      ),
      skip: 2,
      verify: (bloc) {
        verify(
          () => authFacade.signInWithEmailAndPassword(
            email: any(named: "email"),
            password: any(named: "password"),
          ),
        ).called(1);
      },
    );

    blocTest<EmailPasswordBloc, EmailPasswordState>(
      "should sign in the user with his email and password",
      build: () {
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
        return bloc;
      },
      act: (_) {
        _.add(EmailPasswordEvent.emailChanged(validEmail));
        _.add(EmailPasswordEvent.passwordChanged(validPassword));
        _.add(EmailPasswordEvent.submitted());
      },
      skip: 2,
      expect: () => containsAllInOrder(
        [
          bloc.state.copyWith(
            status: FormzStatus.submissionInProgress,
          ),
          bloc.state.copyWith(
            status: FormzStatus.submissionSuccess,
          )
        ],
      ),
      verify: (bloc) {
        verify(
          () => authFacade.signInWithEmailAndPassword(
            email: any(named: "email"),
            password: any(named: "password"),
          ),
        ).called(1);
      },
    );
  });
}
