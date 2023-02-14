import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpb/authentication_with_google/application/google_auth_bloc/google_sign_in_bloc.dart';
import 'package:fpb/core/domain/user.dart';
import 'package:fpb/core/shared/helpers/value_injector.dart';
import 'package:fpb/core/shared/presentation/theming/colors/colors.dart';
import 'package:fpb/home/application/home_view_bloc/home_view_bloc.dart';
import 'package:fpb/home/view/home_container.dart';
import 'package:fpb/home/view/widgets/bottom_nav_bar.dart';
import 'package:fpb/injection.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.user});
  static const String routeName = '/home';
  final User user;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<GoogleSignInBloc>(),
        ),
        BlocProvider(
          create: (context) =>
              getIt<HomeViewBloc>()..add(HomeViewEvent.lastState()),
        ),
      ],
      child: ValueInjector<User>(
        value: user,
        child: HomeBody(
          user: user,
        ),
      ),
    );
  }
}

class HomeBody extends StatefulWidget {
  const HomeBody({super.key, required this.user});
  final User user;

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  int pageIndex = 0;
  //PageController _pageController = PageController();
  final screens = [];

  void onChanged(int index) {
    setState(() {
      pageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        SystemChannels.platform.invokeMethod('SystemNavigator.pop');
        return true;
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: AppColors.cardColorW,
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints box) {
            return Column(
              children: [
                SizedBox(
                  height: box.maxHeight * 0.93,
                  child: HomeContainer(),
                ),
                SizedBox(
                  height: box.maxHeight * 0.07,
                  child: BottomNavBar(),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
