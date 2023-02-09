import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fpb/assets/fpb_svg.dart';
import 'package:fpb/core/shared/presentation/theming/colors/colors.dart';
import 'package:fpb/core/shared/presentation/widget/my_button.dart';
import 'package:fpb/core/shared/presentation/widget/my_textformfield.dart';
import 'package:fpb/sign_in/view/sign_in_page.dart';
import 'package:fpb/sign_in_with_google/bloc/google_sign_in_bloc.dart';
import 'package:fpb/sign_in_with_google/bloc/google_sign_in_event.dart';
import 'package:fpb/sign_in_with_google/bloc/google_sign_in_state.dart';
import 'package:fpb/sign_in_with_google/view/loading_indicator.dart';
import 'package:go_router/go_router.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});
  static const routeName = '/signup';

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    super.initState();

    tabController = TabController(
      length: 2,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: BlocConsumer<GoogleSignInBloc, GoogleSignInState>(
        listener: (context, state) {
          if (state is Authenticated) {
            context.goNamed('home');
          }

          if (state is AuthError) {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text(state.error)));
          }
        },
        builder: (context, state) {
          if (state is Loading) {
            return const LoadingIndicator();
          }

          return Stack(
            children: [
              Positioned(
                top: -size.height * .003,
                child: SvgPicture.asset(
                  SvgNames.authBackground,
                  width: size.width,
                  height: size.height * 0.4,
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: size.height * .99,
                  padding: const EdgeInsets.all(18),
                  decoration: BoxDecoration(
                    color: Theme.of(context).backgroundColor,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Join Us!',
                        style:
                            Theme.of(context).textTheme.displaySmall?.copyWith(
                                  color: AppColors.secondaryColorW,
                                  fontWeight: FontWeight.bold,
                                  fontSize: size.width * 0.037,
                                ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 8),
                        height: size.height * 0.065,
                        decoration: BoxDecoration(
                          color: Theme.of(context).cardColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        // color: Colors.red,
                        child: TabBar(
                          padding: const EdgeInsets.all(8),
                          controller: tabController,
                          onTap: (_) {
                            setState(() {
                              tabController.index = _;
                            });
                          },
                          tabs: const [
                            Tab(
                              child: Text(
                                'Email Signup',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Tab(
                              child: Text(
                                'Phone Number Signup',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Flexible(
                        child: Form(
                          child: SizedBox(
                            height: size.height * 0.47,
                            child: TabBarView(
                              physics: const BouncingScrollPhysics(),
                              controller: tabController,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisSize: MainAxisSize.min,
                                  children: const [
                                    FpbTextFormField(
                                      label: 'Full Name',
                                      hint: 'Enter your full name',
                                    ),
                                    FpbTextFormField(
                                      label: 'Email',
                                      hint: 'example@mail.com',
                                      isEmail: true,
                                    ),
                                    FpbTextFormField(
                                      label: 'Password',
                                      hint: 'Enter your password',
                                      isPassword: true,
                                    ),
                                  ],
                                ),
                                Container(),
                                // Column(
                                //   children: [
                                //     Flexible(
                                //       child: Container(
                                //         color: Colors.green,
                                //         width: double.infinity,
                                //       ),
                                //     )
                                //   ],
                                // ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      FpbButton(label: 'Sign Up', onTap: () {}),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            Expanded(child: Divider()),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 12),
                              child: Text('Or sign up with'),
                            ),
                            Expanded(child: Divider())
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconLogin(
                            svg: SvgNames.google,
                            onTap: () {
                              context.read<GoogleSignInBloc>().add(
                                    GoogleSignInRequested(),
                                  );
                            },
                          ),
                          IconLogin(svg: SvgNames.facebook, onTap: () {}),
                          IconLogin(svg: SvgNames.twitter, onTap: () {}),
                          IconLogin(svg: SvgNames.apple, onTap: () {}),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 25, bottom: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Already a member?',
                              style: Theme.of(context).textTheme.headline5,
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                'Login',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline5
                                    ?.copyWith(
                                      color: Theme.of(context).primaryColor,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
