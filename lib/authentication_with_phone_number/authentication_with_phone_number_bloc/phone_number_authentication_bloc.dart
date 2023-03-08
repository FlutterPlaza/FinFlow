import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:formz/formz.dart';
import 'package:fpb/authentication_with_phone_number/domain/i_phone_number_repository_facade.dart';
import 'package:fpb/sign_in/domain/domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'phone_number_authentication_event.dart';
part 'phone_number_authentication_state.dart';
part 'phone_number_authentication_bloc.freezed.dart';

@injectable
class PhoneAuthBloc extends Bloc<PhoneAuthEvent, PhoneAuthState> {
  PhoneAuthBloc(
    this._firebaseAuth,
    IPhoneRepositoryFacade phoneRepositoryFacade,
  )   : _phoneNumberRepositoryFacade = phoneRepositoryFacade,
        super(PhoneAuthState()) {
    on<PhoneNumberChangedEvent>(_onPhoneNumberChanged);
    on<PasswordChangedEvent>(_onPasswordChanged);
    on<Submitted>(_onSubmitted);
    on<SendOtpToPhoneEvent>(_onSendOtpToPhoneEvent);
    on<VerifySentOtpEvent>(_onVerifySentOtpEvent);
  }

  final IPhoneRepositoryFacade _phoneNumberRepositoryFacade;
  final FirebaseAuth _firebaseAuth;

  void _onPhoneNumberChanged(
    PhoneNumberChangedEvent event,
    Emitter<PhoneAuthState> emit,
  ) {
    final phoneNumber = PhoneNumber.dirty(event.phoneNumber);
    emit(
      state.copyWith(
        phoneNumber: phoneNumber,
        status: Formz.validate([state.password, phoneNumber]),
      ),
    );
  }

  void _onPasswordChanged(
    PasswordChangedEvent event,
    Emitter<PhoneAuthState> emit,
  ) {
    final password = Password.dirty(event.password);
    emit(
      state.copyWith(
        password: password,
        status: Formz.validate([password, state.password]),
      ),
    );
  }

  Future<void> _onSubmitted(
    Submitted event,
    Emitter<PhoneAuthState> emit,
  ) async {
    if (state.status.isValidated) {
      emit(state.copyWith(status: FormzStatus.submissionInProgress));
      try {
        final failureOrUser = await _phoneNumberRepositoryFacade.verifyAndLogin();
        failureOrUser.fold(
          (failure) =>
              emit(state.copyWith(status: FormzStatus.submissionFailure)),
          (user) => emit(state.copyWith(status: FormzStatus.submissionSuccess)),
        );
      } catch (_) {
        emit(state.copyWith(status: FormzStatus.submissionFailure));
      }
    }
  }

  FutureOr<void> _onSendOtpToPhoneEvent(
      SendOtpToPhoneEvent event, Emitter<PhoneAuthState> emit) async {
    emit(PhoneAuthLoadingState());
    try {
      await  _phoneNumberRepositoryFacade.verifyPhone(
        phoneNumber: event.phoneNumber,
        verificationCompleted: (PhoneAuthCredential credential) async {
          // On [verificationComplete], we will get the credential from the firebase  and will send it to the [OnPhoneAuthVerificationCompleteEvent] event to be handled by the bloc and then will emit the [PhoneAuthVerified] state after successful login
          add(PhoneAuthVerificationCompleteEvent(credential: credential));
        },
        codeSent: (String verificationId, int? resendToken) {
          // On [codeSent], we will get the verificationId and the resendToken from the firebase and will send it to the [OnPhoneOtpSent] event to be handled by the bloc and then will emit the [OnPhoneAuthVerificationCompleteEvent] event after receiving the code from the user's phone
          add(PhoneOtpSentEvent(verificationId: state.verificationId, token: resendToken));
        },
        verificationFailed: (FirebaseAuthException e) {
          // On [verificationFailed], we will get the exception from the firebase and will send it to the [OnPhoneAuthErrorEvent] event to be handled by the bloc and then will emit the [PhoneAuthError] state in order to display the error to the user's screen
          add(PhoneAuthErrorEvent(error: e.code));
        },
        codeAutoRetrievalTimeout: (String verificationId) {},
      );
    } catch (e) {
      emit(PhoneAuthErrorState(error: e.toString()));
    }
  }

  FutureOr<void>  _onVerifySentOtpEvent(
      VerifySentOtpEvent event, Emitter<PhoneAuthState> emit) async {
    try {
      emit(PhoneAuthLoadingState());
      // After receiving the otp, we will verify the otp and then will create a credential from the otp and verificationId and then will send it to the [OnPhoneAuthVerificationCompleteEvent] event to be handled by the bloc and then will emit the [PhoneAuthVerified] state after successful login
      PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: event.verificationId,
        smsCode: event.otpCode,
      );
      add(PhoneAuthVerificationCompleteEvent(credential: credential));
    } catch (e) {
      emit(PhoneAuthErrorState(error: e.toString()));
    }
  }

  FutureOr<void> _loginWithCredential(
      PhoneAuthVerificationCompleteEvent event,
      Emitter<PhoneAuthState> emit) async {
    // After receiving the credential from the event, we will login with the credential and then will emit the [PhoneAuthVerified] state after successful login
    try {
      await _firebaseAuth.signInWithCredential(event.credential).then((user) {
        if (user.user != null) {
          emit(PhoneAuthVerifiedState());
        }
      });
    } on FirebaseAuthException catch (e) {
      emit(PhoneAuthErrorState(error: e.code));
    } catch (e) {
      emit(PhoneAuthErrorState(error: e.toString()));
    }
  }
}
