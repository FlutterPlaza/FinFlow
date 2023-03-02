part of 'phone_number_bloc.dart';

@freezed
class PhoneNumberEvent with _$PhoneNumberEvent {
  const factory PhoneNumberEvent.phoneNumberChanged(String phoneNumber) = _PhoneNumberChanged;
  const factory PhoneNumberEvent.submitPhoneNumber() = _PhoneNumberSubmitted;

  const factory PhoneNumberEvent.otpChanged(String otpCode) = _OtpChanged;
  const factory PhoneNumberEvent.submitOtp() = _OtpSubmitted;

  const factory PhoneNumberEvent.passwordChanged(String password) = _PasswordChanged;
  const factory PhoneNumberEvent.confirmPasswordChanged(String password) = _ConfirmPasswordChanged;
  const factory PhoneNumberEvent.submitNewPassword() = _NewPasswordSubmitted;
}
