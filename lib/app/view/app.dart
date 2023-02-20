import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpb/authentication_mock_without_backend/application/bloc/authentication_bloc.dart';
import 'package:fpb/authentication_with_firebase/application/bloc/auth_bloc.dart';
import 'package:fpb/core/application/internet_and_time_bloc/internet_and_time_bloc.dart';
import 'package:fpb/core/presentation/theming/theme.dart';
import 'package:fpb/injection.dart';
import 'package:fpb/l10n/l10n.dart';
import 'package:fpb/router/app_route.gr.dart';

final appRouter = AppRoute();

class App extends StatelessWidget {
  const App({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthenticationBloc>(
            create: (context) => getIt<AuthenticationBloc>()),
        BlocProvider(create: (context) => getIt<InternetAndTimeBloc>()),
        BlocProvider(
          create: (context) =>
              getIt<AuthBloc>()..add(const AuthEvent.triggerAuthRequest()),
        ),
      ],
      child: LayoutBuilder(
        builder: (context, cts) {
          return MaterialApp.router(
              title: 'FinFlow',
              theme: whiteTheme(context, cts),
              localizationsDelegates: AppLocalizations.localizationsDelegates,
              supportedLocales: AppLocalizations.supportedLocales,
              routeInformationParser: appRouter.defaultRouteParser(),
              routerDelegate: appRouter.delegate(
                navigatorObservers: () => [
                  HeroController(),
                ],
              ));
        },
      ),
    );
  }
}
