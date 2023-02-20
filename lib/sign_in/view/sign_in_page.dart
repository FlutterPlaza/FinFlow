import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fpb/assets/fpb_icons/fpb_icons_icons.dart';
import 'package:fpb/assets/fpb_svg.dart';
import 'package:fpb/authentication_with_google/application/google_auth_bloc/google_sign_in_bloc.dart';
import 'package:fpb/core/application/email_password_bloc/email_password_bloc.dart';
import 'package:fpb/core/presentation/extension/extensions.dart';
import 'package:fpb/injection.dart';
import 'package:fpb/l10n/l10n.dart';
import 'package:fpb/onboarding/view/widgets/alternative_auth.dart';
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
    final theme = Theme.of(context);
    final style = theme.textTheme;
    final colors = theme.colorScheme;

    return BlocConsumer<GoogleSignInBloc, GoogleSignInState>(
      listener: (context, state) {
        state.failureOrUser.fold(
            (l) => ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                      backgroundColor: theme.colorScheme.error,
                      elevation: 0,
                      content: Text(l.message)),
                ),
            (r) {});
      },
      builder: (context, state) {
        return LayoutBuilder(
          builder: (context, cts) {
            return Scaffold(
              resizeToAvoidBottomInset: false,
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
                        color: theme.colorScheme.background,
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
                                style: style.titleLarge,
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Icon(
                                  FpbIcons.face_id,
                                  color: Colors.white,
                                  size: 0.075 * cts.maxWidth,
                                ).card(
                                  color: colors.secondaryContainer,
                                  radius: cts.maxWidth * 0.02,
                                  height: cts.maxHeight * 0.06,
                                  width: cts.maxHeight * 0.06,
                                ),
                              )
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
                              color: theme.cardColor,
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
                          AlternativeAuth(box: cts),
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
                                  style: style.titleMedium,
                                ),
                                TextButton(
                                  onPressed: () {
                                    context.router.push(SignUpRoute());
                                  },
                                  child: Text(
                                    l10n.signInSignUpLabel,
                                    style: style.titleMedium,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          TermsOfUse(box: cts),
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

class TermsOfUse extends StatelessWidget {
  const TermsOfUse({
    super.key,
    required this.box,
  });

  final BoxConstraints box;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final theme = Theme.of(context);
    final style = theme.textTheme;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          l10n.signInPolicyText,
          style: style.bodySmall,
        ),
        SizedBox(
          width: box.maxWidth * 0.009,
        ),
        Text(
          l10n.signInTermsOfUseLabel,
          style: style.bodySmall?.copyWith(fontWeight: FontWeight.w600),
        )
      ],
    );
  }
}
