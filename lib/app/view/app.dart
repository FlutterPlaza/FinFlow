import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpb/authentication_with_firebase/application/bloc/auth_bloc.dart';
import 'package:fpb/core/shared/presentation/theming/themes/theme.dart';
import 'package:fpb/injection.dart';
import 'package:fpb/l10n/l10n.dart';
import 'package:fpb/router/go_routes.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<AuthBloc>()..add(const AuthEvent.triggerAuthRequest()),
      child: LayoutBuilder(
        builder: (context, cts) {
          return MaterialApp.router(
            title: 'FinFlow',
            theme: whiteTheme(context, cts),
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
            routerConfig: goRouter,
          );
        },
      ),
    );
  }
}
