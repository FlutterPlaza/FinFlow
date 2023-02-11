part of 'authentication_bloc.dart';

@freezed
abstract class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState.unknown({
    @Default(AuthenticationStatus.unknown) AuthenticationStatus status,
    @Default(User.empty) User user,
  }) = _Unknown;

  factory AuthenticationState.authenticated({
    @Default(AuthenticationStatus.authenticated) AuthenticationStatus status,
    required User user,
  }) = _Authenticated;

  factory AuthenticationState.unAuthenticated({
    @Default(AuthenticationStatus.unauthenticated) AuthenticationStatus status,
    @Default(User.empty) User user,
  }) = _UnAuthenticated;
}
