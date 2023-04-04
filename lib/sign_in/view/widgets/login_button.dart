import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:fpb/core/application/email_password_bloc/email_password_bloc.dart';
import 'package:fpb/core/domain/user.dart';
import 'package:fpb/core/presentation/widget/fpb_button.dart';
import 'package:fpb/l10n/l10n.dart';
import 'package:fpb/router/app_route.gr.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    /// TODO: Remove after general app UI validation
    final User user = User(id: 'BZHyLm22EUai8ISKY43RBjMyjPB3', isNewUser: false, photo: 'https://lh3.googleusercontent.com/a/AGNmyxZqAyvq47qEAmNuIlrG3kc3pAVurxcFBZ3gAdTIEf4=s96-c', providerId: '', name: 'Amanda Shafack,', email: 'shafack.likhene@gmail.com', phoneNumber: '');

    return BlocBuilder<EmailPasswordBloc, EmailPasswordState>(
      buildWhen: (previous, current) => previous.status != current.status,
      builder: (context, state) {
        // return FormzStatus.submissionInProgress == state.status
        //     ?  FpbButton(label: 'Log in', onTap: null)
        //     : FpbButton(
        //         label: l10n.signInLogInButtonLabel,
        //         onTap: () => context
        //             .read<EmailPasswordBloc>()
        //             .add(const EmailPasswordEvent.submitted()),
        //       );

        /// TODO Short circuit Login button, remove after general app UI validation
        return FpbButton(label: 'Log in', onTap: (){context.router.push(HomeRouter(user: user ));});
      },
    );
  }
}
