// ignore_for_file: inference_failure_on_instance_creation

part of 'twitter_authentication_bloc.dart';

@freezed
class TwitterAuthenticationState with _$TwitterAuthenticationState {
  const factory TwitterAuthenticationState({
    @Default(false) bool isLoading,
    @Default(Right(User.empty)) Either<AuthFailure, User> failureOrUser,
  }) = _TwitterAuthenticationState;

  factory TwitterAuthenticationState.initial() => TwitterAuthenticationState();
}
