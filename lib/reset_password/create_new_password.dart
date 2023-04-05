import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fpb/assets/fpb_svg.dart';
import 'package:fpb/core/presentation/extension/extensions.dart';
import 'package:fpb/core/presentation/widget/fpb_button.dart';
import 'package:fpb/core/presentation/widget/fpb_text_form_field_v2.dart';
import 'package:fpb/core/shared/helpers/is_keyboard_visible.dart';
import 'package:fpb/l10n/l10n.dart';
import 'package:fpb/router/app_route.gr.dart';

class CreateNewPasswordScreen extends StatefulWidget {
  const CreateNewPasswordScreen({Key? key}) : super(key: key);

  @override
  State<CreateNewPasswordScreen> createState() =>
      _CreateNewPasswordScreenState();
}

class _CreateNewPasswordScreenState extends State<CreateNewPasswordScreen> {
  final FocusNode? node = FocusNode();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final theme = Theme.of(context);
    // final style = theme.textTheme;
    // final colors = theme.colorScheme;

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
                      hintText: l10n.signInPasswordFieldHintText,
                      focusNode: node,
                      textController: passwordController,
                      onChanged: (value) {
                        passwordController.text = value;
                      },
                      // errorText: state.email.invalid ? 'Invalid Email' : null,
                    ),
                    SizedBox(height:  0.025 * cts.maxHeight,),
                    FpbTextFormField(
                      key: const Key(
                          'confirm_password_textField_create_new_password'),
                      box: cts,
                      label: l10n.createNewPasswordConfirmPasswordLabel,
                      hintText: l10n.signInPasswordFieldHintText,
                      focusNode: node,
                      textController: confirmPasswordController,
                      onChanged: (value) {
                        setState(() {
                          confirmPasswordController.text = value;
                        });
                      },
                      // errorText: state.email.invalid ? 'Invalid Email' : null,
                    ),
                    SizedBox(
                      height: 0.03 * cts.maxHeight,
                    ),
                    _isLoading
                        ? CircularProgressIndicator()
                        : FpbButton(
                            label: l10n.createNewPasswordResetButtonLabel,
                            onTap: () {
                              setState(() {
                                _isLoading = true;
                              }); // passwordController.text == confirmPasswordController.text
                              //     ? _submit(passwordController.text)
                              //     : print("failed");

                              setState(() {
                                _isLoading = false;
                              });
                              Navigator.of(context).pop();
                              context.router.push(NewPasswordSuccessRoute());
                            },
                            fontWeight: FontWeight.w600
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

class PageTitle extends StatelessWidget {
  const PageTitle({
    super.key,
    required this.title,
    required this.box,
  });
  final String title;
  final BoxConstraints box;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.titleLarge?.copyWith(
            fontSize: box.maxWidth * 0.085,
            fontWeight: FontWeight.w700,
          ),
    );
  }
}

class BubblesTopBackGround extends StatelessWidget {
  const BubblesTopBackGround({
    super.key,
    required this.cts,
    required this.svgName,
  });
  final BoxConstraints cts;
  final String svgName;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: -.035 * cts.maxHeight,
      child: SvgPicture.asset(
        svgName,
        width: cts.maxWidth,
        height: 0.4 * cts.maxHeight,
      ),
    );
  }
}
