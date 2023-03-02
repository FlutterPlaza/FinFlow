import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:fpb/authentication_with_phone_number/phone_number_bloc/phone_number_bloc.dart';
import 'package:fpb/core/presentation/widget/confirmation_screen_illustration.dart';
import 'package:fpb/core/presentation/widget/otp_group_text_field.dart';
import 'package:fpb/l10n/l10n.dart';
import 'package:fpb/core/presentation/widget/confirmation_screen_actions.dart';
import 'package:fpb/router/app_route.gr.dart';

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
          body: BlocConsumer<PhoneNumberBloc, PhoneNumberState>(
            listener: (context, state) {
              if(state.status == FormzStatus.submissionFailure){
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    backgroundColor: theme.colorScheme.error,
                    elevation: 0,
                    content: Text(state.failure!.message),
                  ),
                );
              }else if(state.status == FormzStatus.submissionSuccess){
                context.router.push(CreateNewPasswordPhoneSignupRoute());
              }
            },
            buildWhen: (previous, current) {
              return current != previous && current.status == FormzStatus.submissionSuccess
                  && current.status == FormzStatus.submissionInProgress
                  && current.status == FormzStatus.submissionFailure;
            },
            builder: (context, state) {
              return Stack(
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
                      confirmButtonLabel: l10n
                          .confirmPhoneNumberResendOtpButton,
                      onTapContactUsButton: () {},
                    ),
                  )
                ],
              );
            },
          ),
        );
      },
    );
  }
}
