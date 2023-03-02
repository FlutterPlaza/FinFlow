import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:fpb/authentication_with_phone_number/phone_number_bloc/phone_number_bloc.dart';
import 'package:fpb/core/presentation/widget/create_new_password.dart';
import 'package:fpb/home/home_screen.dart';

class CreateNewPasswordPhoneSignupScreen extends StatelessWidget {
  const CreateNewPasswordPhoneSignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return BlocConsumer<PhoneNumberBloc, PhoneNumberState>(
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
          context.router.pushNamed(HomeScreen.routeName,);
        }
      },
      builder: (context, state) {
        return CreateNewPassword(
          onTap: () {
            context.read<PhoneNumberBloc>().add(PhoneNumberEvent.submitNewPassword());
          },
          onPasswordChange: (String password) {
            context.read<PhoneNumberBloc>()
                .add(PhoneNumberEvent.passwordChanged(password));
          },
          onConfirmPasswordChange: (String confirmPassword) {
            context.read<PhoneNumberBloc>().add(
                PhoneNumberEvent.confirmPasswordChanged(confirmPassword));
          },
          passwordErrorText: state.password.invalid ? "Your password is wrong" : null,
          confirmPasswordErrorText: state.confirmPassword.invalid ? "The passwords don't match" : null,
        );
      },
    );
  }
}
