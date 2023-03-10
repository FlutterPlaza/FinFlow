// ignore_for_file: inference_failure_on_instance_creation

part of 'facebook_auth_bloc.dart';

@freezed
abstract class FacebookAuthState with _$FacebookAuthState {
  const factory FacebookAuthState({
    @Default(false) bool isLoading,
    @Default(Right(User.empty)) Either<AuthFailure, User> failureOrUser,
  }) = _FacebookAuthState;

  factory FacebookAuthState.initial() => FacebookAuthState();
}
