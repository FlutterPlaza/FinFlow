import 'package:auto_route/auto_route.dart';
import 'package:email_auth/email_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fpb/assets/fpb_svg.dart';
import 'package:fpb/core/presentation/extension/extensions.dart';
import 'package:fpb/core/presentation/widget/fpb_button.dart';
import 'package:fpb/core/presentation/widget/fpb_text_form_field.dart';
import 'package:fpb/core/shared/helpers/is_keyboard_visible.dart';
import 'package:fpb/l10n/l10n.dart';
import 'package:fpb/router/app_route.gr.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final FocusNode node = FocusNode();
  final TextEditingController emailAddressController = TextEditingController();
  bool submitValid = false;
  EmailAuth emailAuth = EmailAuth(sessionName: '');
  bool result = false;

  Future<void> sendOtp() async {
    emailAuth.sessionName = "FlutterPlaza";
    bool? result = await emailAuth.sendOtp(
      recipientMail: emailAddressController.value.text,
    );
    if (result) {
      setState(() {
        submitValid = true;
      });
    }
  }

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
                      title: l10n.forgotPasswordTitle,
                      box: cts,
                    ),
                    SizedBox(
                      height: 0.025 * cts.maxHeight,
                    ),
                    Text(
                      l10n.forgotPasswordBodyContent,
                      style: TextStyle(
                        height: 1.5,
                      ),
                    ),
                    SizedBox(
                      height: 0.08 * cts.maxHeight,
                    ),
                    FpbTextFormField(
                      key: const Key('email_textField_forgotPassword'),
                      box: cts,
                      label: l10n.forgotPasswordEmailTextFieldLabel,
                      hint: l10n.forgotPasswordEmailTextFieldHint,
                      node: node,
                      isEmail: true,
                      textController: emailAddressController,
                      onChanged: (value) {},
                      // errorText: state.email.invalid ? 'Invalid Email' : null,
                    ),
                    SizedBox(
                      height: 0.03 * cts.maxHeight,
                    ),
                    FpbButton(
                      label: l10n.forgotPasswordSendButtonLabel,
                      onTap: () async {
                        await sendOtp();
                        context.router.push(EmailConfirmationRoute(
                          emailControllerValue:
                              emailAddressController.value.text,
                          submitValue: submitValid,
                        ));
                      },
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
