import 'package:equatable/equatable.dart';

abstract class GoogleSignInEvent extends Equatable {
  const GoogleSignInEvent();
  @override
  List<Object> get props => [];
}

class GoogleSignInRequested extends GoogleSignInEvent {}

class GoogleSignOutRequested extends GoogleSignInEvent {}
