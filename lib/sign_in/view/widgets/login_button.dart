import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:fpb/core/shared/presentation/widget/my_button.dart';
import 'package:fpb/sign_in/application/bloc/login_bloc.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (previous, current) => previous.status != current.status,
      builder: (context, state) {
        return FormzStatus.submissionInProgress == state.status
            ? const FpbButton(label: 'Log in', onTap: null)
            : FpbButton(
                label: 'Log in',
                onTap: () =>
                    context.read<LoginBloc>().add(const LoginEvent.submitted()),
              );
      },
    );
  }
}
