import 'package:flutter/material.dart';
import 'package:fpb/core/presentation/widget/fpb_button.dart';
import 'package:fpb/core/presentation/widget/my_textformfield.dart';
import 'package:fpb/l10n/l10n.dart';

class EmailAddressTabView extends StatelessWidget {
  const EmailAddressTabView({
    super.key,
    required this.l10n,
    required this.box,
  });

  final AppLocalizations l10n;
  final BoxConstraints box;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisSize: MainAxisSize.min,
      children: [
        FpbTextFormField(
          label: l10n.signUpFullNameTextFieldLabel,
          hint: l10n.signUpFullNameTextFieldHintText,
          box: box,
        ),
        FpbTextFormField(
          label: l10n.signInEmailTextFieldLabel,
          hint: l10n.signInEmailTextFieldHintText,
          isEmail: true,
          box: box,
        ),
        FpbTextFormField(
          label: l10n.signInPasswordFieldLabel,
          hint: l10n.signInPasswordFieldHintText,
          isPassword: true,
          box: box,
        ),
        FpbButton(
          label: l10n.signInSignUpLabel,
          onTap: () {},
          heading: CircularProgressIndicator(),
        ),
      ],
    );
  }
}
