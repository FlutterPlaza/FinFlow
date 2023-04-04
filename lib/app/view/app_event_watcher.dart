import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpb/app/view/app.dart';
import 'package:fpb/authentication_with_firebase/application/bloc/auth_bloc.dart';
import 'package:fpb/core/application/internet_and_time_bloc/internet_and_time_bloc.dart';
import 'package:fpb/core/settings/cached.dart';
import 'package:fpb/injection.dart';
import 'package:fpb/router/app_route.gr.dart';

class AppEventWatcher extends StatelessWidget {
  final Widget child;
  const AppEventWatcher({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<InternetAndTimeBloc, InternetAndTimeState>(
          listenWhen: (p, c) => !c.isConnected || !c.isTimeSynced,
          listener: (context, state) {
            if (!state.isConnected) {
              // _alertNoInternetDetected(context);
            }
            if (!state.isTimeSynced) {
              // _alertTimeNotSyncedDetected(context);
            }
          },
        ),
        BlocListener<AuthBloc, AuthState>(
          listener: (context, state) {
            state.map(
              splash: (_) {},
              authenticated: (_) {
                appRouter.replace(HomeRouter(user: _.user));
              },
              unauthenticated: (_) {
                final cached = getIt<Cached>();
                if (cached.firstTimeUser) {
                  cached.firstTimeUser = false;
                  appRouter.replace(OnboardingRoute());
                } else {
                  appRouter.replace(SignInRoute());
                }
              },
            );
          },
        ),
      ],
      child: child,
    );
  }
}
