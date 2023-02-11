import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fpb/assets/fpb_svg.dart';
import 'package:fpb/core/application/email_password_bloc/email_password_bloc.dart';
import 'package:fpb/core/shared/presentation/theming/colors/colors.dart';
import 'package:fpb/core/shared/presentation/widget/my_button.dart';
import 'package:fpb/core/shared/presentation/widget/my_textformfield.dart';
import 'package:fpb/injection.dart';
import 'package:fpb/sign_in/view/sign_in_page.dart';
import 'package:fpb/sign_in_with_google/application/google_auth_bloc/google_sign_in_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:fpb/sign_in/sign_in.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  static const routeName = '/signup';
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<GoogleSignInBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<EmailPasswordBloc>(),
        ),
      ],
      child: SignUpBody(),
    );
  }
}

class SignUpBody extends StatefulWidget {
  const SignUpBody({super.key});

  @override
  State<SignUpBody> createState() => _SignUpBodyState();
}

class _SignUpBodyState extends State<SignUpBody>
    with SingleTickerProviderStateMixin {
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
      body: Stack(children: [
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
                  style: Theme.of(context).textTheme.displaySmall?.copyWith(
                        color: AppColors.secondaryColorW,
                        fontWeight: FontWeight.bold,
                        fontSize: size.width * 0.037,
                      ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: box.maxHeight * .85,
                  padding: EdgeInsets.only(
                    top: box.maxHeight * .025,
                    left: box.maxHeight * .025,
                    right: box.maxHeight * .025,
                  ),
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
                        l10n.signUpRegisterTitle,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      SizedBox(
                        height: box.maxHeight * 0.001,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(
                          vertical: box.maxHeight * .008,
                        ),
                        height: box.maxHeight * 0.06,
                        decoration: BoxDecoration(
                          color: Theme.of(context).cardColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        // color: Colors.red,
                        child: TabBar(
                          padding: EdgeInsets.all(box.maxHeight * .008),
                          controller: tabController,
                          onTap: (_) {
                            setState(() {
                              tabController.index = _;
                            });
                          },
                          tabs: [
                            Tab(
                              child: Text(
                                l10n.signInEmailLogInLabel,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Tab(
                              child: Text(
                                l10n.signInPhoneNumberLogInLabel,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: box.maxHeight * .025,
                      ),
                      Flexible(
                        child: Form(
                          child: SizedBox(
                            height: box.maxHeight * 0.5,
                            child: TabBarView(
                              physics: const BouncingScrollPhysics(),
                              controller: tabController,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    FpbTextFormField(
                                      label: l10n.signUpFullNameTextFielLabel,
                                      hint: l10n.signUpFullNameTextFielHintText,
                                    ),
                                    FpbTextFormField(
                                      label: l10n.signInEmailTextFieldLabel,
                                      hint: l10n.signInEmailTextFieldHintText,
                                      isEmail: true,
                                    ),
                                    FpbTextFormField(
                                      label: l10n.signInPasswordFieldLabel,
                                      hint: l10n.signInPasswordFieldHintText,
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
                      FpbButton(
                        label: l10n.signInSignUpLabel,
                        onTap: () {},
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: box.maxHeight * 0.012,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Expanded(child: Divider()),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: box.maxHeight * .015,
                              ),
                              child: Text(
                                l10n.signUporSignupWithText,
                              ),
                            ),
                            const Expanded(child: Divider())
                          ],
                        ),
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
                      onTap: () => context
                          .read<GoogleSignInBloc>()
                          .add(GoogleSignInEvent.signIn()),
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
                        onPressed: () {
                          context.pushReplacement(SignInScreen.routeName);
                        },
                        child: Text(
                          'Login',
                          style:
                              Theme.of(context).textTheme.headline5?.copyWith(
                                    color: Theme.of(context).primaryColor,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        )
      ]),
    );
  }
}
