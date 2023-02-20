import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpb/core/application/email_password_bloc/email_password_bloc.dart';
import 'package:fpb/core/presentation/widget/my_textformfield.dart';
import 'package:fpb/l10n/l10n.dart';

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
    final l10n = context.l10n;
    return BlocBuilder<EmailPasswordBloc, EmailPasswordState>(
      buildWhen: (previous, current) => previous.email != current.email,
      builder: (context, state) => FpbTextFormField(
        key: const Key('Email_password_form_emailInput_textField'),
        label: l10n.signInEmailTextFieldLabel,
        hint: l10n.signInEmailTextFieldHintText,
        node: node,
        isEmail: true,
        textController: textController,
        onChanged: (email) => context
            .read<EmailPasswordBloc>()
            .add(EmailPasswordEvent.emailChanged(email)),
        errorText: state.email.invalid ? 'Invalid Email' : null,
      ),
    );
  }
}
