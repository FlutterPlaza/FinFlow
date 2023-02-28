import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpb/assets/fpb_svg.dart';
import 'package:fpb/authentication_with_facebook/application/facebook_auth_bloc.dart';
import 'package:fpb/authentication_with_google/application/google_auth_bloc/google_sign_in_bloc.dart';
import 'package:fpb/authentication_with_twitter/application/twitter_authentication/twitter_authentication_bloc.dart';
import 'package:fpb/core/presentation/widget/icon_login.dart';

class AlternativeAuth extends StatelessWidget {
  const AlternativeAuth({
    super.key,
    required this.box,
  });

  final BoxConstraints box;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconLogin(
          svg: SvgNames.google,
          box: box,
          onTap: () => context.read<GoogleSignInBloc>().add(
                GoogleSignInEvent.signIn(),
              ),
        ),
        IconLogin(
          svg: SvgNames.facebook,
          box: box,
          onTap: () {
            context.read<FacebookAuthBloc>().add(FacebookAuthEvent.signIn());
          },
        ),
        IconLogin(
          svg: SvgNames.twitter,
          box: box,
          onTap: () {
            context
                .read<TwitterAuthenticationBloc>()
                .add(TwitterAuthenticationEvent.signIn());
          },
        ),
        IconLogin(
          svg: SvgNames.apple,
          box: box,
          onTap: () {},
        ),
      ],
    );
  }
}
