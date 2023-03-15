import 'package:bloc/bloc.dart';
import 'package:fpb/forgot_password_flow/domain/i_forgot_password_facade.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'forgot_password_event.dart';
part 'forgot_password_state.dart';
part 'forgot_password_bloc.freezed.dart';

@injectable
class ForgotPasswordBloc
    extends Bloc<ForgotPasswordEvent, ForgotPasswordState> {
  ForgotPasswordBloc(super.initialState,
      {required this.forgotPasswordRepositoryFacade}) {
    on<PasswordChanged>(_onPasswordChanged);
    // on<OtpSent>(_onOtpSent);
  }

  final IForgotPasswordRepositoryFacade forgotPasswordRepositoryFacade;

  Future<void> _onPasswordChanged(
    PasswordChanged event,
    Emitter<ForgotPasswordState> emit,
  ) async {
    await forgotPasswordRepositoryFacade.changePassword(state.newPassword);
  }
}
