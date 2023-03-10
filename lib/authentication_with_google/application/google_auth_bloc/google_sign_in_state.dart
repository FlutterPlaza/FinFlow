// ignore_for_file: inference_failure_on_instance_creation

part of 'google_sign_in_bloc.dart';

@freezed
abstract class GoogleSignInState with _$GoogleSignInState {
  const factory GoogleSignInState({
    @Default(false) bool isLoading,
    @Default(Right(User.empty)) Either<AuthFailure, User> failureOrUser,
  }) = _GoogleSignInState;

  factory GoogleSignInState.initial() => GoogleSignInState();
}
