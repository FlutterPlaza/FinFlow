part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.userChanged(User user) = _UserChanged;
  const factory AuthEvent.logoutRequest() = _LogoutRequest;
  const factory AuthEvent.triggerAuthRequest() = _TriggerAuth;
}
