part of 'phone_number_authentication_bloc.dart';

@freezed
class PhoneAuthEvent with _$PhoneAuthEvent {
  const factory PhoneAuthEvent.phoneNumberChanged(String phoneNumber) =
      PhoneNumberChangedEvent;

  const factory PhoneAuthEvent.passwordChanged(String password) =
      PasswordChangedEvent;

  const factory PhoneAuthEvent.submitted() = Submitted;

  const factory PhoneAuthEvent.otpSent({required String phoneNumber}) =
      SendOtpToPhoneEvent;

  const factory PhoneAuthEvent.verifyOtp(
      {required String otpCode,
      required String verificationId}) = VerifySentOtpEvent;

  const factory PhoneAuthEvent.confirmOtpSent(
      {required String verificationId, required int? token}) = PhoneOtpSentEvent;

  const factory PhoneAuthEvent.handleErrors({required String error}) =
      PhoneAuthErrorEvent
  ;
  const factory PhoneAuthEvent.completeOtpProcess(
      {required AuthCredential credential}) = PhoneAuthVerificationCompleteEvent;
}
