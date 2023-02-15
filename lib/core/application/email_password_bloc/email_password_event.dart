part of 'email_password_bloc.dart';

@freezed
abstract class EmailPasswordEvent with _$EmailPasswordEvent {
  const factory EmailPasswordEvent.emailChanged(String userName) =
      _UserNameChange;
  const factory EmailPasswordEvent.passwordChanged(String password) =
      _PasswordChange;
  const factory EmailPasswordEvent.submitted() = _Submitted;
}
