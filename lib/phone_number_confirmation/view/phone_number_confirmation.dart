import 'package:flutter/material.dart';
import 'package:fpb/core/presentation/widget/confirmation_screen_illustration.dart';
import 'package:fpb/core/presentation/widget/otp_group_text_field.dart';
import 'package:fpb/l10n/l10n.dart';
import 'package:fpb/core/presentation/widget/confirmation_screen_actions.dart';
import 'package:fpb/core/presentation/widget/otp_input.dart';

class PhoneNumberConfirmationScreen extends StatefulWidget {
  static const routeName = '/phoneNumberConfirmation';

  const PhoneNumberConfirmationScreen({super.key});

  @override
  State<PhoneNumberConfirmationScreen> createState() =>
      _PhoneNumberConfirmationScreenState();
}

class _PhoneNumberConfirmationScreenState
    extends State<PhoneNumberConfirmationScreen> {
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final theme = Theme.of(context);
    final style = theme.textTheme;
    final colors = theme.colorScheme;

    return LayoutBuilder(
      builder: (context, box) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: colors.background,
          body: Stack(
            children: [
              SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.only(
                      left: box.maxHeight * .025,
                      right: box.maxHeight * .025),
                  child: Column(
                    children: [
                      SizedBox(
                        height: box.maxHeight * .15,
                      ),
                      Text(
                        l10n.confirmPhoneNumberTitleText,
                        style: style.titleLarge
                            ?.copyWith(fontSize: box.maxHeight * .045),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: box.maxHeight * .03,
                      ),
                      RichText(
                          maxLines: 3,
                          textAlign: TextAlign.center,
                          text: TextSpan(children: <TextSpan>[
                            TextSpan(
                              text: l10n.confirmPhoneNumberBodyContentStart,
                              style: style.titleMedium,
                            ),
                            TextSpan(
                              text: l10n.confirmPhoneNumberBodyContentMid,
                              style: style.titleMedium?.copyWith(
                                fontWeight: FontWeight.w600,
                                //color: theme.colorScheme.onSurface
                              ),
                            ),
                            TextSpan(
                                text: l10n.confirmPhoneNumberBodyContentEnd,
                                style: style.titleMedium)
                          ])),
                      SizedBox(
                        height: box.maxHeight * .05,
                      ),
                      OtpGroupTextField(
                        box: box,
                      ),
                      SizedBox(
                        height: box.maxHeight * .05,
                      ),
                      ConfirmationScreenIllustration(
                        box: box,
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: ConfirmationScreenAction(
                  onTapConfirmButton: () {},
                  confirmButtonLabel: l10n.confirmPhoneNumberResendOtpButton,
                  onTapContactUsButton: () {},
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
