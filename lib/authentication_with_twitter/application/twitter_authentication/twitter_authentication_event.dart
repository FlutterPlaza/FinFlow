part of 'twitter_authentication_bloc.dart';

@freezed
class TwitterAuthenticationEvent with _$TwitterAuthenticationEvent {
  const factory TwitterAuthenticationEvent.started() = _Started;
  factory TwitterAuthenticationEvent.signIn() = TwitterSignIn;
  factory TwitterAuthenticationEvent.signOut() = TwitterSignOut;
}
