import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpb/core/shared/presentation/widget/my_textformfield.dart';
import 'package:fpb/l10n/l10n.dart';
import 'package:fpb/sign_in/application/bloc/login_bloc.dart';

class PasswordInput extends StatelessWidget {
  const PasswordInput({
    super.key,
    this.node,
    this.textController,
  });

  final FocusNode? node;
  final TextEditingController? textController;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (previous, current) => previous.password != current.password,
      builder: (context, state) => FpbTextFormField(
        key: const Key('loginForm_passwordInput_textField'),
        label: l10n.signInPasswordFieldLabel,
        hint: l10n.signInPasswordFieldHintText,
        isPassword: true,
        node: node,
        textController: textController,
        onChanged: (password) =>
            context.read<LoginBloc>().add(LoginEvent.emailChanged(password)),
        errorText: state.password.invalid ? 'Invalid password' : null,
      ),
    );
  }
}
