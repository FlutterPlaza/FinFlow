part of 'facebook_auth_bloc.dart';

@freezed
class FacebookAuthEvent with _$FacebookAuthEvent {
  const factory FacebookAuthEvent.started() = _Started;
  factory FacebookAuthEvent.signIn() = FacebookSignIn;
  factory FacebookAuthEvent.signOut() = FacebookSignOut;
}
