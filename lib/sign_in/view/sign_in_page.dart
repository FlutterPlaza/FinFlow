import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fpb/assets/fpb_icons/fpb_icons_icons.dart';
import 'package:fpb/assets/fpb_svg.dart';
import 'package:fpb/authentication_with_google/application/google_auth_bloc/google_sign_in_bloc.dart';
import 'package:fpb/core/application/email_password_bloc/email_password_bloc.dart';
import 'package:fpb/core/shared/presentation/theming/colors/colors.dart';
import 'package:fpb/injection.dart';
import 'package:fpb/l10n/l10n.dart';
import 'package:fpb/router/app_route.gr.dart';
import 'package:fpb/sign_in/view/widgets/email_input.dart';
import 'package:fpb/sign_in/view/widgets/login_button.dart';
import 'package:fpb/sign_in/view/widgets/password_input.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});
  static const routeName = '/login';

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
      child: SignInBody(),
    );
  }
}

class SignInBody extends StatefulWidget {
  const SignInBody({super.key});

  @override
  State<SignInBody> createState() => _SignInBodyState();
}

class _SignInBodyState extends State<SignInBody>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  final user = FirebaseAuth.instance.currentUser;

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
    final l10n = context.l10n;

    return BlocConsumer<GoogleSignInBloc, GoogleSignInState>(
      listener: (context, state) {
        state.failureOrUser.fold(
            (l) => ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(l.message)),
                ),
            (r) {});
      },
      builder: (context, state) {
        return LayoutBuilder(
          builder: (context, cts) {
            return Scaffold(
              body: Stack(
                children: [
                  Positioned(
                    top: -.035 * cts.maxHeight,
                    child: SvgPicture.asset(
                      SvgNames.authBackground,
                      width: cts.maxWidth,
                      height: 0.4 * cts.maxHeight,
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: .8 * cts.maxHeight,
                      padding: EdgeInsets.all(cts.maxHeight * 0.025),
                      decoration: BoxDecoration(
                        color: Theme.of(context).backgroundColor,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                l10n.signInLogInTitle,
                                style: Theme.of(context).textTheme.titleLarge,
                              ),
                              Card(
                                color: AppColors.getShade(
                                  AppColors.accentColorW,
                                ),
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    FpbIcons.face_id,
                                    color: Colors.white,
                                    size: cts.maxHeight * 0.028,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 0.001 * cts.maxHeight,
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(
                              vertical: cts.maxHeight * 0.008,
                            ),
                            height: 0.06 * cts.maxHeight,
                            decoration: BoxDecoration(
                              color: Theme.of(context).cardColor,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: TabBar(
                              padding: EdgeInsets.all(cts.maxHeight * 0.008),
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
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                Tab(
                                  child: Text(
                                    l10n.signInPhoneNumberLogInLabel,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 0.011 * cts.maxHeight,
                          ),
                          Flexible(
                            child: Form(
                              child: SizedBox(
                                height: 0.4 * cts.maxHeight,
                                child: TabBarView(
                                  physics: const BouncingScrollPhysics(),
                                  controller: tabController,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        const EmailInput(),
                                        const PasswordInput(),
                                        Text(l10n.signInForgotPasswordText),
                                      ],
                                    ),
                                    Container(),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const LoginButton(),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: cts.maxHeight * 0.012,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Expanded(child: Divider()),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: cts.maxWidth * 0.015,
                                  ),
                                  child: Text(l10n.signInorLogInWithText),
                                ),
                                const Expanded(child: Divider())
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              IconLogin(
                                svg: SvgNames.google,
                                onTap: () =>
                                    context.read<GoogleSignInBloc>().add(
                                          GoogleSignInEvent.signIn(),
                                        ),
                              ),
                              IconLogin(
                                svg: SvgNames.facebook,
                                onTap: () {},
                              ),
                              IconLogin(
                                svg: SvgNames.twitter,
                                onTap: () {},
                              ),
                              IconLogin(svg: SvgNames.apple, onTap: () {}),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: cts.maxHeight * 0.001,
                              bottom: cts.maxHeight * 0.0001,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  l10n.signInNotAMemberYetText,
                                  style:
                                      Theme.of(context).textTheme.titleMedium,
                                ),
                                TextButton(
                                  onPressed: () {
                                    context.router.push(SignUpRoute());
                                  },
                                  child: Text(
                                    l10n.signInSignUpLabel,
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleMedium
                                        ?.copyWith(
                                          color: Theme.of(context).primaryColor,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                l10n.signInPolicyText,
                                style: Theme.of(context).textTheme.labelMedium,
                              ),
                              SizedBox(
                                width: cts.maxWidth * 0.003,
                              ),
                              Text(
                                l10n.signInTermsOfUseLabel,
                                style: Theme.of(context).textTheme.labelMedium,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            );
          },
        );
      },
    );
  }
}

class IconLogin extends StatelessWidget {
  const IconLogin({
    super.key,
    required this.svg,
    this.onTap,
  });

  final String svg;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 75,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Theme.of(context).cardColor,
        ),
      ),
      child: IconButton(
        onPressed: onTap,
        icon: SvgPicture.asset(svg),
      ),
    );
  }
}
