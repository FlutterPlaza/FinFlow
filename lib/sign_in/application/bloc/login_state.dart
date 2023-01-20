part of 'login_bloc.dart';

@freezed
abstract class LoginState with _$LoginState {
  const factory LoginState({
    @Default(FormzStatus.pure) FormzStatus status,
    @Default(Username.pure()) Username username,
    @Default(Password.pure()) Password password,
  }) = _LoginState;
}
