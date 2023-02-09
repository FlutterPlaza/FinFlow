import 'package:equatable/equatable.dart';

abstract class GoogleSignInState extends Equatable {
  @override
  List<Object?> get props => [];
}

class Loading extends GoogleSignInState {}

class UnAuthenticated extends GoogleSignInState {}

class Authenticated extends GoogleSignInState {}

class AuthError extends GoogleSignInState {
  AuthError(this.error);
  final String error;
}
