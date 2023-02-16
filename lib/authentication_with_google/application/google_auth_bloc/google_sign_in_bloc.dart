import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:fpb/authentication_with_google/domain/i_google_repository_facade.dart';
import 'package:fpb/core/domain/user.dart';
import 'package:fpb/core/failures/auth_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'google_sign_in_bloc.freezed.dart';
part 'google_sign_in_event.dart';
part 'google_sign_in_state.dart';

@injectable
class GoogleSignInBloc extends Bloc<GoogleSignInEvent, GoogleSignInState> {
  GoogleSignInBloc({required this.authenticationRepository})
      : super(GoogleSignInState.initial()) {
    on<SignIn>(_onGoogleSignInPressed);
    on<SignOut>(_onGoogleSignOutPressed);
  }

  final IGoogleRepositoryFacade authenticationRepository;

  Future<void> _onGoogleSignInPressed(
    SignIn event,
    Emitter<GoogleSignInState> emit,
  ) async {
    emit(GoogleSignInState(isLoading: true));
    final failureOrUser = await authenticationRepository.signInWithGoogle();
    failureOrUser.fold(
      (failure) => emit(
          GoogleSignInState(failureOrUser: left(failure), isLoading: false)),
      (user) =>
          emit(GoogleSignInState(isLoading: false, failureOrUser: right(user))),
    );
  }

  Future<void> _onGoogleSignOutPressed(
    SignOut event,
    Emitter<GoogleSignInState> emit,
  ) async {
    emit(GoogleSignInState(isLoading: true));
    final failureOrUnit = await authenticationRepository.signOut();
    failureOrUnit.fold(
      (failure) => emit(
          GoogleSignInState(failureOrUser: left(failure), isLoading: false)),
      (unit) => emit(GoogleSignInState(
          isLoading: false, failureOrUser: right(User.empty))),
    );
  }
}
