import 'package:bloc/bloc.dart';
import 'package:formz/formz.dart';
import 'package:fpb/authentication_with_firebase/domain/i_auth_facade.dart';
import 'package:fpb/sign_in/domain/domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

@singleton
@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc({
    required IAuthFacade authenticationRepository,
  })  : _authenticationRepository = authenticationRepository,
        super(const LoginState()) {
    on<_UserNameChange>(_onUsernameChanged);
    on<_PasswordChange>(_onPasswordChanged);
    on<_Submitted>(_onSubmitted);
  }
  final IAuthFacade _authenticationRepository;

  void _onUsernameChanged(
    _UserNameChange event,
    Emitter<LoginState> emit,
  ) {
    final email = Email.dirty(event.userName);
    emit(
      state.copyWith(
        email: email,
        status: Formz.validate([state.password, email]),
      ),
    );
  }

  void _onPasswordChanged(
    _PasswordChange event,
    Emitter<LoginState> emit,
  ) {
    final password = Password.dirty(event.password);
    emit(
      state.copyWith(
        password: password,
        status: Formz.validate([password, state.email]),
      ),
    );
  }

  Future<void> _onSubmitted(
    _Submitted event,
    Emitter<LoginState> emit,
  ) async {
    if (state.status.isValidated) {
      emit(state.copyWith(status: FormzStatus.submissionInProgress));
      try {
        final failureOrUser =
            await _authenticationRepository.signInWithEmailAndPassword(
          email: state.email.value,
          password: state.password.value,
        );
        failureOrUser.fold(
          (failure) =>
              emit(state.copyWith(status: FormzStatus.submissionFailure)),
          (user) => emit(state.copyWith(status: FormzStatus.submissionSuccess)),
        );
      } catch (_) {
        emit(state.copyWith(status: FormzStatus.submissionFailure));
      }
    }
  }
}
