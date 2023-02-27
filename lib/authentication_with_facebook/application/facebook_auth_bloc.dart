import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:fpb/authentication_with_facebook/domain/i_facebook_repository_facade.dart';
import 'package:fpb/core/domain/user.dart';
import 'package:fpb/core/failures/auth_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'facebook_auth_event.dart';
part 'facebook_auth_state.dart';
part 'facebook_auth_bloc.freezed.dart';

@injectable
class FacebookAuthBloc extends Bloc<FacebookAuthEvent, FacebookAuthState> {
  FacebookAuthBloc({required this.authenticationRepository})
      : super(FacebookAuthState.initial()) {
    on<FacebookSignIn>(_onFacebookSignInPressed);
    on<FacebookSignOut>(_onFacebookSignOutPressed);
  }

  final IFacebookRepositoryFacade authenticationRepository;

  Future<void> _onFacebookSignInPressed(
    FacebookSignIn event,
    Emitter<FacebookAuthState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    final failureOrUser = await authenticationRepository.signInWithFacebook();
    failureOrUser.fold(
      (failure) => emit(
          FacebookAuthState(failureOrUser: left(failure), isLoading: false)),
      (user) =>
          emit(FacebookAuthState(isLoading: false, failureOrUser: right(user))),
    );
  }

  Future<void> _onFacebookSignOutPressed(
    FacebookSignOut event,
    Emitter<FacebookAuthState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));
    final failureOrUnit = await authenticationRepository.signOut();
    failureOrUnit.fold(
      (failure) => emit(
          FacebookAuthState(failureOrUser: left(failure), isLoading: false)),
      (unit) => emit(FacebookAuthState(
          isLoading: false, failureOrUser: right(User.empty))),
    );
  }
}
