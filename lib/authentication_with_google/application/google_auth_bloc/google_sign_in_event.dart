part of 'google_sign_in_bloc.dart';

@freezed
abstract class GoogleSignInEvent with _$GoogleSignInEvent {
  factory GoogleSignInEvent.signIn() = SignIn;
  factory GoogleSignInEvent.signOut() = SignOut;
}
