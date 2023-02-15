part of 'auth_bloc.dart';

enum AuthStatus { authenticated, unauthenticated }

@freezed
abstract class AuthState with _$AuthState {
  const AuthState._();
  factory AuthState.authenticated({
    required User user,
    @Default(AuthStatus.authenticated) AuthStatus status,
  }) = _Authenticated;
  factory AuthState.splash({
    @Default(User.empty) User user,
    @Default(AuthStatus.unauthenticated) AuthStatus status,
  }) = _Splash;
  factory AuthState.unauthenticated({
    @Default(User.empty) User user,
    @Default(AuthStatus.unauthenticated) AuthStatus status,
  }) = _Unauthenticated;
}
