import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:formz/formz.dart';
import 'package:fpb/contact_us/domain/i_contact_us_repository_facade.dart';
import 'package:fpb/contact_us/domain/message.dart';
import 'package:fpb/contact_us/domain/name.dart';
import 'package:fpb/core/failures/contact_us_failure.dart';
import 'package:fpb/sign_in/domain/email.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'contact_us_bloc.freezed.dart';
part 'contact_us_event.dart';
part 'contact_us_state.dart';

@singleton
@injectable
class ContactUsBloc extends Bloc<ContactUsEvent, ContactUsState> {
  final IContactUsRepositoryFacade _iContactUsRepositoryFacade;

  ContactUsBloc(this._iContactUsRepositoryFacade) : super(ContactUsState()) {
    on<_NameChanged>(_onNameChanged);
    on<_EmailChange>(_onEmailChanged);
    on<_MessageChange>(_onMessageChange);
    on<_Submitted>(_onSubmitted);
  }

  FutureOr<void> _onNameChanged(
    _NameChanged event,
    Emitter<ContactUsState> emit,
  ) {
    final name = Name.dirty(event.name);
    emit(
      state.copyWith(
        name: name,
        status: Formz.validate([
          name,
          state.email,
          state.message,
        ]),
      ),
    );
  }

  FutureOr<void> _onEmailChanged(
    _EmailChange event,
    Emitter<ContactUsState> emit,
  ) {
    final email = Email.dirty(event.email);
    emit(
      state.copyWith(
        email: email,
        status: Formz.validate([
          email,
          state.message,
          state.name,
        ]),
      ),
    );
  }

  FutureOr<void> _onMessageChange(
    _MessageChange event,
    Emitter<ContactUsState> emit,
  ) {
    final message = Message.dirty(event.message);
    emit(
      state.copyWith(
        message: message,
        status: Formz.validate([
          message,
          state.email,
          state.name,
        ]),
      ),
    );
  }

  FutureOr<void> _onSubmitted(
    _Submitted event,
    Emitter<ContactUsState> emit,
  ) async {
    if (state.status.isValidated) {
      emit(
        state.copyWith(
          status: FormzStatus.submissionInProgress,
        ),
      );
      final result = await _iContactUsRepositoryFacade.sendMessage(
        email: state.email.value,
        name: state.name.value,
        message: state.message.value,
      );

      result.fold(
        (failure) => emit(
          state.copyWith(
            failure: failure,
            status: FormzStatus.submissionFailure,
          ),
        ),
        (unit) => emit(
          state.copyWith(
            status: FormzStatus.submissionSuccess,
          ),
        ),
      );
    } else {
      emit(
        state.copyWith(
          status: FormzStatus.invalid,
          failure: const ContactUsFailure.someFieldsAreRequired(),
        ),
      );
    }
  }
}
