import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:formz/formz.dart';
import 'package:fpb/authentication_with_phone_number/domain/i_phone_number_repository_facade.dart';
import 'package:fpb/core/failures/auth_failure.dart';
import 'package:fpb/sign_in/domain/otp_field.dart';
import 'package:fpb/sign_in/domain/password.dart';
import 'package:fpb/sign_in/domain/phone_number.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'phone_number_event.dart';
part 'phone_number_state.dart';
part 'phone_number_bloc.freezed.dart';

@injectable
class PhoneNumberBloc extends Bloc<PhoneNumberEvent, PhoneNumberState> {
  PhoneNumberBloc({required this.phoneNumberRepository,}) : super(const PhoneNumberState()) {
    on<_PhoneNumberChanged>(_onPhoneNumberChanged);
    on<_PhoneNumberSubmitted>(_onPhoneNumberSubmitted);

    on<_OtpChanged>(_onOtpChanged);
    on<_OtpSubmitted>(_onOtpSubmitted);

    on<_PasswordChanged>(_onPasswordChanged);
    on<_ConfirmPasswordChanged>(_onConfirmPasswordChanged);
    on<_NewPasswordSubmitted>(_onNewPasswordSubmitted);
  }

  final IPhoneNumberRepositoryFacade phoneNumberRepository;
  late String verificationId;

  void _onPhoneNumberChanged(
    _PhoneNumberChanged event,
    Emitter<PhoneNumberState> emit,
  ) {
    final phoneNumber = PhoneNumber.dirty(event.phoneNumber);
    emit(
      state.copyWith(
        phoneNumber: phoneNumber,
      ),
    );
  }

  Future<void> _onPhoneNumberSubmitted(
      _PhoneNumberSubmitted event,
      Emitter<PhoneNumberState> emit,
      ) async {
    if (state.phoneNumber.valid) {
      emit(state.copyWith(status: FormzStatus.submissionInProgress));
      try {
        await phoneNumberRepository.sendOtpCode(
          phoneNumber: state.phoneNumber.value,
          codeSent: (String _verificationId, int? resendToken) {
            verificationId = _verificationId;
            emit(state.copyWith(status: FormzStatus.submissionSuccess));
            print("SendOTP: Here's the code sent");
          },
          verificationCompleted: (PhoneAuthCredential credential) {
            print("SendOTP: Verif complete");
          },
          verificationFailed: (FirebaseAuthException e) {
            emit(state.copyWith(
                status: FormzStatus.submissionFailure,
                failure: AuthFailure.fromErrorMessage(
                    e.message ?? 'Oops!! something went wrong')));
            print("SendOTP: Verification failed");
          },
          codeAutoRetrievalTimeout: (String verificationId) {
            print("SendOTP: time out");
          },
        );
      } catch (_) {
        emit(state.copyWith(
          status: FormzStatus.submissionFailure,
          failure: AuthFailure.fromErrorMessage(
            'Oops!! something went wrong',
          ),
        ));
      }
    }else{

    }
  }


  void _onOtpChanged(
      _OtpChanged event,
      Emitter<PhoneNumberState> emit,
      ) {
    final otpCode = OtpField.dirty(event.otpCode);
    emit(
      state.copyWith(
        otpCode: otpCode,
        status: Formz.validate([otpCode]),
      ),
    );

    if(state.status.isValid && state.otpCode.value.length >= 6){
      add(PhoneNumberEvent.submitPhoneNumber());
    }
  }

  Future<void> _onOtpSubmitted(
      _OtpSubmitted event,
      Emitter<PhoneNumberState> emit,
      ) async {
    if (state.status.isValidated) {
      emit(state.copyWith(status: FormzStatus.submissionInProgress));
      try {
        final failureOrUserPhoneNumber =
        await phoneNumberRepository.verifyAndLogin(
          smsCode: state.otpCode.value, verificationId: verificationId,
        );
        failureOrUserPhoneNumber.fold(
                (failure) =>
                emit(state.copyWith(status: FormzStatus.submissionFailure, failure: failure)),
                (userPhoneNumber){
              return emit(state.copyWith(status: FormzStatus.submissionSuccess));
            });
      } catch (_) {
        emit(state.copyWith(status: FormzStatus.submissionFailure, failure: AuthFailure.fromErrorMessage('Oops!! something went wrong'),),);
      }
    }
  }


  void _onPasswordChanged(
      _PasswordChanged event,
      Emitter<PhoneNumberState> emit,
      ) {
    final password = Password.dirty(event.password);
    emit(
      state.copyWith(
        password: password,
        status: Formz.validate([password]), failure: AuthFailure.fromErrorMessage('Oops!! something went wrong'),
      ),
    );
  }

  void _onConfirmPasswordChanged(
      _ConfirmPasswordChanged event,
      Emitter<PhoneNumberState> emit,
      ) {
    final confirmPassword = Password.dirty(event.password);
    FormzStatus status = Formz.validate([confirmPassword]);;
    if(status == FormzStatus.valid){
      if(confirmPassword.value != state.password.value){
        status = FormzStatus.invalid;
      }
    }
    emit(
      state.copyWith(
        confirmPassword: confirmPassword,
        status: status , failure: AuthFailure.fromErrorMessage('Oops!! something went wrong'),
      ),
    );
  }

  Future<void> _onNewPasswordSubmitted(
      _NewPasswordSubmitted event,
      Emitter<PhoneNumberState> emit,
      ) async {
    if (state.status.isValidated) {
      emit(state.copyWith(status: FormzStatus.submissionInProgress));
      final String emailDomain = '@flutterplaza.com';
      String email = '${state.phoneNumber}$emailDomain';

      try {
        final failureOrUser =
        await phoneNumberRepository.signUpWithEmailAndPassword(email: email, password: state.password.value);
        failureOrUser.fold(
                (failure) =>
                emit(state.copyWith(status: FormzStatus.submissionFailure, failure: failure)),
                (user) {
              return emit(state.copyWith(status: FormzStatus.submissionSuccess));
            }
        );
      } catch (_) {
        emit(state.copyWith(status: FormzStatus.submissionFailure, failure: AuthFailure.fromErrorMessage('Oops!! something went wrong'),),);
      }
    }
  }
}
