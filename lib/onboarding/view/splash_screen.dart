// a stateless widget that shows the splash screen with a logo and a text
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpb/authentication_with_firebase/application/bloc/auth_bloc.dart';
import 'package:fpb/core/settings/cached.dart';
import 'package:fpb/home_screen/view/home_screen.dart';
import 'package:fpb/injection.dart';
import 'package:fpb/onboarding/view/onboarding_screens.dart';
import 'package:fpb/sign_in/view/sign_in_page.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  static const routeName = '/';
  @override
  Widget build(BuildContext context) {
    final cached = getIt<Cached>();
    return WillPopScope(
      onWillPop: () async => false,
      child: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          state.map(
            splash: (_) {},
            authenticated: (_) {},
            unauthenticated: (_) {},
          );
        },
        builder: (context, state) {
          return state.map(
            splash: (_) {
              return const Scaffold(
                body: Center(
                  child: CircularProgressIndicator(),
                ),
              );
            },
            authenticated: (_) {
              return const MyHomePage();
            },
            unauthenticated: (_) {
              if (cached.firstTimeUser) {
                cached.firstTimeUser = false;
                return const OnboardingPage();
              }
              return const SignInPage();
            },
          );
        },
      ),
    );
  }
}
