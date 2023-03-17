import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpb/authentication_with_phone_number/phone_number_bloc/phone_number_bloc.dart';
import 'package:fpb/core/application/email_password_bloc/email_password_bloc.dart';
import 'package:fpb/core/presentation/widget/my_textformfield.dart';
import 'package:fpb/l10n/l10n.dart';

class PasswordInput extends StatelessWidget {
  const PasswordInput({
    super.key,
    this.node,
    this.textController,
    required this.box,
    required this.tabController,
  });

  final FocusNode? node;
  final TextEditingController? textController;
  final BoxConstraints box;
  final int tabController;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return tabController == 0
        ? BlocBuilder<EmailPasswordBloc, EmailPasswordState>(
            buildWhen: (previous, current) =>
                previous.password != current.password,
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
          )
        : BlocBuilder<EmailPasswordBloc,
        EmailPasswordState>(
            buildWhen: (previous, current) =>
                previous != current.password,
            builder: (context, state) => FpbTextFormField(
              label: l10n.signInPasswordFieldLabel,
              box: box,
              hint: l10n.signInPasswordFieldHintText,
              isPassword: true,
              node: node,
              textController: textController,
              onChanged: (password) => context
                  .read<PhoneNumberBloc>()
                  .add(PhoneNumberEvent.phoneNumberChanged(
                      password)),
              errorText: state.password.invalid ? 'Invalid password' : null,
            ),
          );
  }
}
