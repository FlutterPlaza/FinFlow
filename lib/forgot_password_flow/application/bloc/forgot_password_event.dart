part of 'forgot_password_bloc.dart';

@freezed
class ForgotPasswordEvent with _$ForgotPasswordEvent {
  const factory ForgotPasswordEvent.started() = _Started;
  const factory ForgotPasswordEvent.passwordChanged() = PasswordChanged;
  const factory ForgotPasswordEvent.otpSent() = OtpSent;
  const factory ForgotPasswordEvent.otpVerified() = OtpVerified;
}
