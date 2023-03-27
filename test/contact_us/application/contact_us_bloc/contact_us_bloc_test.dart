import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:formz/formz.dart';
import 'package:fpb/contact_us/application/contact_us_bloc/contact_us_bloc.dart';
import 'package:fpb/contact_us/domain/message.dart';
import 'package:fpb/contact_us/domain/name.dart';
import 'package:fpb/core/failures/contact_us_failure.dart';
import 'package:fpb/sign_in/domain/email.dart';
import 'package:mocktail/mocktail.dart';

import '../../../helpers/arrange_contact_us_repository.dart';
import '../../../helpers/helpers.dart';

void main() {
  late ContactUsBloc bloc;
  late MockIContactUsRepositoryFacade contactUsRepositoryFacade;

  setUp(() {
    contactUsRepositoryFacade = MockIContactUsRepositoryFacade();

    bloc = ContactUsBloc(
      contactUsRepositoryFacade,
    );
  });

  group("Update user associated name", () {
    blocTest<ContactUsBloc, ContactUsState>(
      "should emit [invalid] for the state name param when the given name is not valid",
      build: () {
        return bloc;
      },
      act: (_) {
        _.add(ContactUsEvent.nameChanged(invalidName));
      },
      expect: () => contains(
        bloc.state.copyWith(
          name: Name.dirty(invalidName),
          status: FormzStatus.invalid,
        ),
      ),
    );

    blocTest<ContactUsBloc, ContactUsState>(
      "should emit [valid] for the state name param when the given name is valid",
      build: () {
        return bloc;
      },
      act: (_) {
        _.add(ContactUsEvent.nameChanged(validName));
      },
      expect: () => contains(
        bloc.state.copyWith(
          name: Name.dirty(validName),
          status: FormzStatus.invalid,
        ),
      ),
    );
  });

  group("Update user email address", () {
    blocTest<ContactUsBloc, ContactUsState>(
      "should emit [invalid] for the state email param when the given email is wrong",
      build: () {
        return bloc;
      },
      act: (_) {
        _.add(ContactUsEvent.emailChanged(invalidEmail));
      },
      expect: () => contains(
        bloc.state.copyWith(
          email: Email.dirty(invalidEmail),
          status: FormzStatus.invalid,
        ),
      ),
    );

    blocTest<ContactUsBloc, ContactUsState>(
      "should emit [valid] for the state email param when the given email is correct",
      build: () {
        return bloc;
      },
      act: (_) {
        _.add(ContactUsEvent.emailChanged(validEmail));
      },
      expect: () => contains(
        bloc.state.copyWith(
          email: Email.dirty(validEmail),
          status: FormzStatus.invalid,
        ),
      ),
    );
  });

  group("Update user associated message", () {
    blocTest<ContactUsBloc, ContactUsState>(
      "should emit [invalid] for the state message param when the given message is not valid",
      build: () {
        return bloc;
      },
      act: (_) {
        _.add(ContactUsEvent.messageChanged(invalidMessage));
      },
      expect: () => contains(
        bloc.state.copyWith(
          message: Message.dirty(invalidMessage),
          status: FormzStatus.invalid,
        ),
      ),
    );

    blocTest<ContactUsBloc, ContactUsState>(
      "should emit [valid] for the state message param when the given message is correct",
      build: () {
        return bloc;
      },
      act: (_) {
        _.add(ContactUsEvent.messageChanged(validMessage));
      },
      expect: () => contains(
        bloc.state.copyWith(
          message: Message.dirty(validMessage),
          status: FormzStatus.invalid,
        ),
      ),
    );
  });

  group("Contact us with name, email and message", () {
    blocTest<ContactUsBloc, ContactUsState>(
      "should emit [failure] when the form state is invalid",
      build: () {
        return bloc;
      },
      act: (_) {
        _.add(ContactUsEvent.nameChanged(validName));
        _.add(ContactUsEvent.emailChanged(validEmail));
        _.add(ContactUsEvent.messageChanged(invalidMessage));
        _.add(ContactUsEvent.submitted());
      },
      skip: 3,
      expect: () => containsAllInOrder([
        bloc.state.copyWith(
          status: FormzStatus.invalid,
          failure: const ContactUsFailure.someFieldsAreRequired(),
        ),
      ]),
    );

    blocTest<ContactUsBloc, ContactUsState>(
      "should emit [loading, failure] with proper message for the error when Sending the message fails",
      build: () {
        arrangeContactUsRepositoryReturnsFailureOnSendMessage(
            contactUsRepositoryFacade);
        return bloc;
      },
      act: (_) {
        _.add(ContactUsEvent.nameChanged(validName));
        _.add(ContactUsEvent.emailChanged(validEmail));
        _.add(ContactUsEvent.messageChanged(validMessage));
        _.add(ContactUsEvent.submitted());
      },
      expect: () => containsAllInOrder(
        [
          bloc.state.copyWith(
            status: FormzStatus.submissionInProgress,
            failure: ContactUsFailure.withMessage(),
          ),
          bloc.state.copyWith(
            status: FormzStatus.submissionFailure,
            failure: ContactUsFailure.unexpected(),
          )
        ],
      ),
      skip: 3,
      verify: (bloc) {
        verify(
          () => contactUsRepositoryFacade.sendMessage(
            email: any(named: "email"),
            message: any(named: "message"),
            name: any(named: "name"),
          ),
        ).called(1);
      },
    );

    blocTest<ContactUsBloc, ContactUsState>(
      "should send to us with his email, name and message",
      build: () {
        arrangeContactUsRepositoryReturnsSuccessOnSendMessage(
            contactUsRepositoryFacade);
        return bloc;
      },
      act: (_) {
        _.add(ContactUsEvent.nameChanged(validName));
        _.add(ContactUsEvent.emailChanged(validEmail));
        _.add(ContactUsEvent.messageChanged(validMessage));
        _.add(ContactUsEvent.submitted());
      },
      skip: 3,
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
          () => contactUsRepositoryFacade.sendMessage(
            email: any(named: "email"),
            message: any(named: "message"),
            name: any(named: "name"),
          ),
        ).called(1);
      },
    );
  });
}
