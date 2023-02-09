import 'package:bloc/bloc.dart';
import 'package:fpb/sign_in_with_google/bloc/google_sign_in_event.dart';
import 'package:fpb/sign_in_with_google/bloc/google_sign_in_state.dart';
import 'package:fpb/sign_in_with_google/repository/google_authentication_repository.dart';

class GoogleSignInBloc extends Bloc<GoogleSignInEvent, GoogleSignInState> {
  GoogleSignInBloc({required this.authenticationRepository})
      : super(UnAuthenticated()) {
    on<GoogleSignInRequested>(_onGoogleSignInPressed);
    on<GoogleSignOutRequested>(_onGoogleSignOutPressed);
  }

  final GoogleAuthenticationRepository authenticationRepository;

  Future<void> _onGoogleSignInPressed(
    GoogleSignInRequested event,
    Emitter<GoogleSignInState> emit,
  ) async {
    emit(Loading());
    try {
      final response = await authenticationRepository.signInWithGoogle();
      if (response) {
        emit(Authenticated());
      }
    } catch (e) {
      emit(AuthError(e.toString()));
      emit(UnAuthenticated());
    }
  }

  void _onGoogleSignOutPressed(
    GoogleSignOutRequested event,
    Emitter<GoogleSignInState> emit,
  ) {
    emit(Loading());
    authenticationRepository.handleSignOut();
    emit(UnAuthenticated());
  }
}
