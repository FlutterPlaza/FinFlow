part of 'authentication_bloc.dart';

@freezed
abstract class AuthenticationEvent with _$AuthenticationEvent {
  const factory AuthenticationEvent.statusChange({
    required AuthenticationStatus status,
  }) = _StatusChange;
  const factory AuthenticationEvent.logout() = _Logout;
}
