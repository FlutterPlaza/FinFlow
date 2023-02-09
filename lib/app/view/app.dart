import 'package:authentication_repository/authentication_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpb/core/shared/presentation/theming/themes/theme.dart';
import 'package:fpb/l10n/l10n.dart';
import 'package:fpb/router/go_routes.dart';
import 'package:fpb/sign_in/application/bloc/login_bloc.dart';
import 'package:fpb/sign_in/sign_in.dart';
import 'package:fpb/sign_in_with_google/bloc/google_sign_in_bloc.dart';
import 'package:fpb/sign_in_with_google/repository/google_authentication_repository.dart';
import 'package:user_repository/user_repository.dart' as user_repository;

class App extends StatelessWidget {
  const App({
    super.key,
    required AuthenticationRepository authenticationRepository,
    required user_repository.UserRepository userRepository,
    required GoogleAuthenticationRepository googleAuthenticationRepository,
  })  : _authenticationRepository = authenticationRepository,
        _userRepository = userRepository,
        _googleAuthenticationRepository = googleAuthenticationRepository;

  final AuthenticationRepository _authenticationRepository;
  final user_repository.UserRepository _userRepository;
  final GoogleAuthenticationRepository _googleAuthenticationRepository;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider.value(value: _authenticationRepository),
        RepositoryProvider.value(value: _userRepository),
        RepositoryProvider.value(value: _googleAuthenticationRepository),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider<AuthenticationBloc>(
            create: (context) => AuthenticationBloc(
              authenticationRepository: _authenticationRepository,
              userRepository: _userRepository,
            ),
          ),
          BlocProvider<LoginBloc>(
            create: (context) => LoginBloc(
              authenticationRepository: _authenticationRepository,
            ),
          ),
          BlocProvider<AuthenticationBloc>(
            create: (context) => AuthenticationBloc(
              authenticationRepository: _authenticationRepository,
              userRepository: _userRepository,
            ),
          ),
          BlocProvider<GoogleSignInBloc>(
            create: (context) => GoogleSignInBloc(
              authenticationRepository:
                  RepositoryProvider.of<GoogleAuthenticationRepository>(
                context,
              ),
            ),
          ),
        ],
        child: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            return LayoutBuilder(
              builder: (context, cts) {
                if (snapshot.hasData) {
                  return MaterialApp.router(
                    title: 'FinFlow',
                    theme: whiteTheme(context, cts),
                    localizationsDelegates:
                        AppLocalizations.localizationsDelegates,
                    supportedLocales: AppLocalizations.supportedLocales,
                    routerConfig: goRouter,
                  );
                }
                return MaterialApp(
                  title: 'FinFlow',
                  theme: whiteTheme(context, cts),
                  localizationsDelegates:
                      AppLocalizations.localizationsDelegates,
                  supportedLocales: AppLocalizations.supportedLocales,
                  home: const SignIn(),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
