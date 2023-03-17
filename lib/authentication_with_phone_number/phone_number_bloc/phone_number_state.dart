part of 'phone_number_bloc.dart';


@freezed
class PhoneNumberState with _$PhoneNumberState {
  const factory PhoneNumberState({
    @Default(FormzStatus.pure) FormzStatus status,
    @Default(PhoneNumber.pure()) PhoneNumber phoneNumber,
    @Default(OtpField.pure()) OtpField otpCode,
    @Default(Password.pure()) Password password,
    @Default(Password.pure()) Password confirmPassword,
    AuthFailure? failure,
  }) = _PhoneNumberState;
}
