import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:fpb/authentication_with_firebase/domain/i_auth_facade.dart';
import 'package:fpb/authentication_with_firebase/domain/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
@singleton
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(this._authFacade)
      : super(
          _Splash(),
        ) {
    on<_UserChanged>(
      _authenticated,
    );
    on<_LogoutRequest>(
      _unauthenticated,
    );
    on<_TriggerAuth>(
      _triggerAuth,
    );

    _userSubscription = _authFacade.user.listen(
      (user) => add(_UserChanged(user)),
    );
  }
  late final StreamSubscription<User> _userSubscription;

  void _triggerAuth(_TriggerAuth event, Emitter<AuthState> emit) {
    _authFacade.currentUser == User.empty
        ? AuthState.unauthenticated()
        : AuthState.authenticated(user: _authFacade.currentUser);
  }

  void _authenticated(_UserChanged event, Emitter<AuthState> emit) {
    emit(
      event.user == User.empty
          ? AuthState.unauthenticated()
          : AuthState.authenticated(user: event.user),
    );
  }

  void _unauthenticated(_LogoutRequest event, Emitter<AuthState> emit) {
    unawaited(_authFacade.signOut());
  }

  final IAuthFacade _authFacade;

  @override
  Future<void> close() {
    _userSubscription.cancel();
    return super.close();
  }
}
