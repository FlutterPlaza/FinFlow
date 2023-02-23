import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:fpb/authentication_with_twitter/domain/i_twitter_repository_facade.dart';
import 'package:fpb/core/domain/user.dart';
import 'package:fpb/core/failures/auth_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'twitter_authentication_event.dart';
part 'twitter_authentication_state.dart';
part 'twitter_authentication_bloc.freezed.dart';

class TwitterAuthenticationBloc
    extends Bloc<TwitterAuthenticationEvent, TwitterAuthenticationState> {
  TwitterAuthenticationBloc({required this.authenticationRepository})
      : super(TwitterAuthenticationState.initial()) {
    on<TwitterSignIn>(_onTwitterSignInPressed);
    on<TwitterSignOut>(_onTwitterSignOutPressed);
  }

  final ITwitterRepositoryFacade authenticationRepository;

  Future<void> _onTwitterSignInPressed(
    TwitterSignIn event,
    Emitter<TwitterAuthenticationState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    final failureOrUser = await authenticationRepository.signInWithTwitter();
    failureOrUser.fold(
      (failure) => emit(TwitterAuthenticationState(
          failureOrUser: left(failure), isLoading: false)),
      (user) => emit(TwitterAuthenticationState(
          isLoading: false, failureOrUser: right(user))),
    );
  }

  Future<void> _onTwitterSignOutPressed(
    TwitterSignOut event,
    Emitter<TwitterAuthenticationState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    final failureOrUnit = await authenticationRepository.signOut();
    failureOrUnit.fold(
      (failure) => emit(TwitterAuthenticationState(
          failureOrUser: left(failure), isLoading: false)),
      (unit) => emit(TwitterAuthenticationState(
          isLoading: false, failureOrUser: right(User.empty))),
    );
  }
}
