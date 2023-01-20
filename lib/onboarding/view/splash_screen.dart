// a stateless widget that shows the splash screen with a logo and a text
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpb/authentication/application/bloc/authentication_bloc.dart';
import 'package:fpb/home_screen/view/home_screen.dart';
import 'package:fpb/sign_in/view/sign_in_page.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  static const routeName = '/';
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthenticationBloc, AuthenticationState>(
      listener: (context, state) {
        state.map(
          unknown: (_) {},
          authenticated: (_) {},
          unAuthenticated: (_) {},
        );
      },
      builder: (context, state) {
        return state.map(
          unknown: (_) {
            return const Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
          },
          authenticated: (_) {
            return const MyHomePage();
          },
          unAuthenticated: (_) {
            return const SignInPage();
          },
        );
      },
    );
  }
}
