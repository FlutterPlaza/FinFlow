part of 'email_password_bloc.dart';

@freezed
abstract class EmailPasswordState with _$EmailPasswordState {
  const factory EmailPasswordState({
    @Default(FormzStatus.pure) FormzStatus status,
    @Default(Email.pure()) Email email,
    @Default(Password.pure()) Password password,
  }) = _EmailPasswordState;
}
