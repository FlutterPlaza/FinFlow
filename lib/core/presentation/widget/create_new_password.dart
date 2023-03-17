import 'package:flutter/material.dart';
import 'package:fpb/assets/fpb_svg.dart';
import 'package:fpb/core/presentation/extension/extensions.dart';
import 'package:fpb/core/presentation/widget/bubbles_top_background.dart';
import 'package:fpb/core/presentation/widget/fpb_button.dart';
import 'package:fpb/core/presentation/widget/fpb_text_form_field.dart';
import 'package:fpb/core/presentation/widget/medium_sized_page_title.dart';
import 'package:fpb/core/shared/helpers/is_keyboard_visible.dart';
import 'package:fpb/l10n/l10n.dart';

class CreateNewPassword extends StatefulWidget {
  const CreateNewPassword({
    Key? key,
    required this.onTap,
    required this.passwordErrorText,
    required this.confirmPasswordErrorText,
    required this.onPasswordChange,
    required this.onConfirmPasswordChange,
  }) : super(key: key);

  final void Function() onTap;
  final void Function(String password)? onPasswordChange;
  final void Function(String confirmPAssword)? onConfirmPasswordChange;
  final String? passwordErrorText;
  final String? confirmPasswordErrorText;

  @override
  State<CreateNewPassword> createState() => _CreateNewPasswordState();
}

class _CreateNewPasswordState extends State<CreateNewPassword> {
  final FocusNode? node = FocusNode();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final theme = Theme.of(context);

    return LayoutBuilder(
      builder: (context, cts) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          body: Stack(
            children: [
              BubblesTopBackGround(
                cts: cts,
                svgName: SvgNames.authBackground,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    PageTitle(
                      title: l10n.createNewPasswordTitle,
                      box: cts,
                    ),
                    SizedBox(
                      height: 0.025 * cts.maxHeight,
                    ),
                    Text(
                      l10n.createNewPasswordBodyContent,
                      style: TextStyle(
                        height: 1.5,
                      ),
                    ),
                    SizedBox(
                      height: 0.05 * cts.maxHeight,
                    ),
                    FpbTextFormField(
                      key: const Key('password_textField_create_new_password'),
                      box: cts,
                      label: l10n.signInPasswordFieldLabel,
                      hint: l10n.signInPasswordFieldHintText,
                      node: node,
                      isPassword: true,
                      textController: passwordController,
                      onChanged: widget.onPasswordChange,
                      errorText: widget.passwordErrorText,
                    ),
                    FpbTextFormField(
                      key: const Key(
                          'confirm_password_textField_create_new_password'),
                      box: cts,
                      label: l10n.createNewPasswordConfirmPasswordLabel,
                      hint: l10n.signInPasswordFieldHintText,
                      node: node,
                      isPassword: true,
                      textController: confirmPasswordController,
                      onChanged: widget.onConfirmPasswordChange,
                      errorText: widget.confirmPasswordErrorText,
                    ),
                    SizedBox(
                      height: 0.03 * cts.maxHeight,
                    ),
                    FpbButton(
                      label: l10n.createNewPasswordResetButtonLabel,
                      onTap: widget.onTap,
                    ),
                  ],
                ).card(
                  height:
                      (isKeyboardVisible(context) ? .80 : .8) * cts.maxHeight,
                  radiusTop: cts.maxWidth * 0.05,
                  color: theme.colorScheme.background,
                  padding: EdgeInsets.all(cts.maxHeight * 0.025),
                ),
              )
            ],
          ).card(
            radiusTop: cts.maxWidth * 0.05,
            color: theme.colorScheme.background,
          ),
        );
      },
    );
  }
}
