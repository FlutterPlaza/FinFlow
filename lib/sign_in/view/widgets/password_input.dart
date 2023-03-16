import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpb/core/application/email_password_bloc/email_password_bloc.dart';
import 'package:fpb/core/presentation/widget/fpb_text_form_field.dart';
import 'package:fpb/l10n/l10n.dart';

class PasswordInput extends StatelessWidget {
  const PasswordInput({
    super.key,
    this.node,
    this.textController,
    required this.box,
  });

  final FocusNode? node;
  final TextEditingController? textController;
  final BoxConstraints box;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return BlocBuilder<EmailPasswordBloc, EmailPasswordState>(
      buildWhen: (previous, current) => previous.password != current.password,
      builder: (context, state) => FpbTextFormField(
        key: const Key('Email_password_form_passwordInput_textField'),
        label: l10n.signInPasswordFieldLabel,
        box: box,
        hint: l10n.signInPasswordFieldHintText,
        isPassword: true,
        node: node,
        textController: textController,
        onChanged: (password) => context
            .read<EmailPasswordBloc>()
            .add(EmailPasswordEvent.emailChanged(password)),
        errorText: state.password.invalid ? 'Invalid password' : null,
      ),
    );
  }
}
