part of 'google_sign_in_bloc.dart';

@freezed
abstract class GoogleSignInState with _$GoogleSignInState {
  const factory GoogleSignInState({
    @Default(false) bool isLoading,
    @Default(User.empty) User user,
    AuthFailure? failure,
  }) = _GoogleSignInState;

  factory GoogleSignInState.initial() => GoogleSignInState(
        isLoading: false,
        user: User.empty,
        failure: null,
      );
}
