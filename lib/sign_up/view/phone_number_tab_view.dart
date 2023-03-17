import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:fpb/authentication_with_phone_number/phone_number_bloc/phone_number_bloc.dart';
import 'package:fpb/authentication_with_phone_number/views/phone_number_input_signup_flow.dart';
import 'package:fpb/core/presentation/widget/my_button.dart';
import 'package:fpb/l10n/l10n.dart';
import 'package:fpb/router/app_route.gr.dart';
import 'package:intl_phone_field/phone_number.dart';

class PhoneNumberTabView extends StatelessWidget {
  const PhoneNumberTabView({
    super.key,
    required this.l10n,
    required this.tabController,
    required this.box,
  });

  final AppLocalizations l10n;
  final TabController tabController;
  final BoxConstraints box;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = context.l10n;
    final colors = theme.colorScheme;

    return BlocBuilder<PhoneNumberBloc, PhoneNumberState>(
      builder: (context, state) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PhoneNumberInputSignupFlow(
              l10n: l10n,
              cts: box,
              validator: (phoneNumber) {
                if (state.phoneNumber.valid) {
                  return null;
                } else {
                  return 'Please enter valid phone number';
                }
              },
              onChanged: (PhoneNumber phoneNumber) {
                context.read<PhoneNumberBloc>().add(PhoneNumberEvent.phoneNumberChanged(phoneNumber.completeNumber),);
                print("Your phone number here $phoneNumber");
              },
            ),
            BlocConsumer<PhoneNumberBloc, PhoneNumberState>(
              listener: (context, state) {
                if (state.phoneNumber.invalid) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      backgroundColor: theme.colorScheme.error,
                      elevation: 0,
                      content: Text(state.failure?.message ?? ""),
                    ),
                  );
                } else if (state.status.isSubmissionSuccess) {
                  context.router.push(PhoneNumberConfirmationRoute());
                }
              },
              builder: (context, state) {
                return FpbButton(
                  label: l10n.signInSignUpLabel,
                  onTap: () {
                    context.read<PhoneNumberBloc>().add(PhoneNumberEvent.submitPhoneNumber());
                  },
                  heading: state.status.isSubmissionInProgress
                      ? CircularProgressIndicator(color: colors.onPrimary,)
                      : null,
                );
              },
            ),
          ],
        );
      },
    );
  }
}
