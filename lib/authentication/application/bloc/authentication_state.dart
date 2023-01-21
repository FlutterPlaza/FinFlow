part of 'authentication_bloc.dart';

@freezed
abstract class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState({
    required AuthenticationStatus status,
    required User user,
  }) = _AuthenticationState;

  factory AuthenticationState.unknown() => const AuthenticationState(
        status: AuthenticationStatus.unknown,
        user: User.empty,
      );

  factory AuthenticationState.authenticated(User user) => AuthenticationState(
        status: AuthenticationStatus.authenticated,
        user: user,
      );
  factory AuthenticationState.unAuthenticated() => const AuthenticationState(
        status: AuthenticationStatus.unauthenticated,
        user: User.empty,
      );
}
