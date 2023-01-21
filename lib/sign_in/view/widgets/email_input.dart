import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpb/core/shared/presentation/widget/my_textformfield.dart';
import 'package:fpb/sign_in/application/bloc/login_bloc.dart';

class EmailInput extends StatelessWidget {
  const EmailInput({
    super.key,
    this.node,
    this.textController,
  });

  final FocusNode? node;
  final TextEditingController? textController;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (previous, current) => previous.email != current.email,
      builder: (context, state) => FpbTextFormField(
        key: const Key('loginForm_emailInput_textField'),
        label: 'Email',
        hint: 'example@mail.com',
        node: node,
        isEmail: true,
        textController: textController,
        onChanged: (email) =>
            context.read<LoginBloc>().add(LoginEvent.emailChanged(email)),
        errorText: state.email.invalid ? 'Invalid Email' : null,
      ),
    );
  }
}
