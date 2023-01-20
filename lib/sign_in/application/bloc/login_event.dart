part of 'login_bloc.dart';

@freezed
abstract class LoginEvent with _$LoginEvent {
  const factory LoginEvent.usernameChanged(String userName) = _UserNameChange;
  const factory LoginEvent.passwordChanged(String password) = _PasswordChange;
  const factory LoginEvent.submitted() = _Submitted;
}
