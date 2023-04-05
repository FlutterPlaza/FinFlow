import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fpb/assets/fpb_icons/fpb_icons_icons.dart';
import 'package:fpb/assets/fpb_svg.dart';
import 'package:fpb/authenticate_with_biometrics/application/bloc/biometric_auth_bloc.dart';
import 'package:fpb/authentication_with_facebook/application/facebook_auth_bloc.dart';
import 'package:fpb/authentication_with_google/application/google_auth_bloc/google_sign_in_bloc.dart';
import 'package:fpb/authentication_with_google/view/loading_indicator.dart';
import 'package:fpb/core/application/email_password_bloc/email_password_bloc.dart';
import 'package:fpb/core/presentation/extension/extensions.dart';
import 'package:fpb/core/shared/helpers/is_keyboard_visible.dart';
import 'package:fpb/injection.dart';
import 'package:fpb/l10n/l10n.dart';
import 'package:fpb/onboarding/view/widgets/alternative_auth.dart';
import 'package:fpb/router/app_route.gr.dart';
import 'package:fpb/sign_in/view/widgets/email_input.dart';
import 'package:fpb/sign_in/view/widgets/login_button.dart';
import 'package:fpb/sign_in/view/widgets/password_input.dart';
import 'package:fpb/sign_in/view/widgets/phone_number_input.dart';
import 'package:local_auth/local_auth.dart';

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
          create: (context) => getIt<FacebookAuthBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<EmailPasswordBloc>(),
        ),
        BlocProvider(
          create: (context) => BiometricAuthBloc(
              authenticationRepository: LocalAuthentication()),
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
    // final colors = theme.colorScheme;

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
            return state.isLoading
                ? LoadingIndicator()
                : GestureDetector(
                    onTap: () => FocusScope.of(context).unfocus(),
                    child: Scaffold(
                      resizeToAvoidBottomInset: false,
                      body: Stack(
                        children: [
                          BubblesTopBackGround(
                            cts: cts,
                            svgName: SvgNames.authBackground,
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    PageTitle(
                                      title: l10n.signInLogInTitle,
                                      box: cts,
                                    ),
                                    FaceIDIcon(
                                      cts: cts,
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 0.015 * cts.maxHeight,
                                ),
                                TabBar(
                                  key: Key('EmailLogIn'),
                                  padding: EdgeInsets.all(cts.maxHeight * 0.01),
                                  controller: tabController,
                                  unselectedLabelColor:
                                      theme.colorScheme.secondary,
                                  unselectedLabelStyle:
                                      theme.textTheme.titleSmall?.copyWith(
                                    color: theme.colorScheme.surface,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  labelStyle:
                                      theme.textTheme.titleSmall?.copyWith(
                                    color: theme.colorScheme.surface,
                                    fontWeight: FontWeight.w500,
                                  ),
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
                                ).card(
                                  color: theme.colorScheme.background,
                                  margin: EdgeInsets.symmetric(
                                      vertical: cts.maxHeight * 0.008),
                                  radius: cts.maxWidth * 0.02,
                                  height: cts.maxHeight * 0.07,
                                ),
                                Flexible(
                                  child: Form(
                                    child: TabBarView(
                                      physics: const BouncingScrollPhysics(),
                                      controller: tabController,
                                      children: [
                                        SingleChildScrollView(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              SizedBox(
                                                height: cts.maxHeight * 0.02,
                                              ),
                                              EmailInput(box: cts),
                                              SizedBox(
                                                height: cts.maxHeight * 0.02,
                                              ),
                                              PasswordInput(box: cts),
                                              SizedBox(
                                                height: cts.maxHeight * 0.01,
                                              ),
                                              GestureDetector(
                                                onTap: () =>
                                                    context.router.push(ResetPasswordRoute()),
                                                child: Text(
                                                  l10n.signInForgotPasswordText,
                                                  style: theme
                                                      .textTheme.bodyMedium
                                                      ?.copyWith(
                                                    color: theme
                                                        .colorScheme.secondary,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SingleChildScrollView(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              SizedBox(
                                                height: cts.maxHeight * 0.02,
                                              ),
                                              PhoneNumberInput(
                                                  l10n: l10n, cts: cts),
                                              SizedBox(
                                                height: cts.maxHeight * 0.02,
                                              ),
                                              PasswordInput(
                                                  key: Key('PhoneNumberInput'),
                                                  box: cts),
                                              SizedBox(
                                                height: cts.maxHeight * 0.01,
                                              ),
                                              GestureDetector(
                                                onTap: () =>
                                                    context.router.push(ResetPasswordRoute()),
                                                child: Text(
                                                  l10n.signInForgotPasswordText,
                                                  style: theme
                                                      .textTheme.bodyMedium
                                                      ?.copyWith(
                                                    color: theme
                                                        .colorScheme.secondary,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const LoginButton(),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    vertical: cts.maxHeight * 0.02,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Expanded(
                                          child: Divider(
                                        key: Key('Divider'),
                                        color: theme.colorScheme.outlineVariant,
                                      )),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: cts.maxWidth * 0.015,
                                        ),
                                        child: Text(
                                          l10n.signInOrLogInWithText,
                                          key: Key('OrLogInWith'),
                                        ),
                                      ),
                                      Expanded(
                                          child: Divider(
                                        color: theme.colorScheme.outlineVariant,
                                      ))
                                    ],
                                  ),
                                ),
                                AlternativeAuth(box: cts),
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: cts.maxHeight * 0.025,
                                    bottom: cts.maxHeight * 0.01,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        l10n.signInNotAMemberYetText,
                                        style: style.titleSmall?.copyWith(
                                          color: theme.colorScheme.secondary,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          context.router.push(SignUpRoute());
                                        },
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 4.0),
                                          child: Text(
                                            l10n.signInSignUpLabel,
                                            style: style.titleSmall?.copyWith(
                                              color: theme.colorScheme.primary,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                TermsOfUse(box: cts),
                                if (isKeyboardVisible(context))
                                  SizedBox(height: 0.1 * cts.maxHeight),
                              ],
                            ).card(
                              height: (isKeyboardVisible(context) ? .95 : .8) *
                                  cts.maxHeight,
                              radiusTop: cts.maxWidth * 0.05,
                              color: theme.colorScheme.onSurface,
                              padding: EdgeInsets.all(cts.maxHeight * 0.025),
                            ),
                          )
                        ],
                      ).card(
                        // height: (isKeyboardVisible(context) ? .95 : .8) *
                        //     cts.maxHeight,
                        radiusTop: cts.maxWidth * 0.05,
                        color: theme.colorScheme.background,
                      ),
                    ),
                  );
          },
        );
      },
    );
  }
}

class FaceIDIcon extends StatelessWidget {
  const FaceIDIcon({
    super.key,
    required this.cts,
  });

  final BoxConstraints cts;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Icon(
        FpbIcons.face_id,
        color: Colors.white,
        size: 0.074 * cts.maxWidth,
      ).card(
        color: Theme.of(context).colorScheme.tertiary,
        radius: cts.maxWidth * 0.02,
        height: cts.maxHeight * 0.06,
        width: cts.maxHeight * 0.06,
      ),
    );
  }
}

class PageTitle extends StatelessWidget {
  const PageTitle({
    super.key,
    required this.title,
    required this.box,
  });
  final String title;
  final BoxConstraints box;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.titleLarge?.copyWith(
          fontSize: box.maxWidth * 0.085, fontWeight: FontWeight.w700),
    );
  }
}

class BubblesTopBackGround extends StatelessWidget {
  const BubblesTopBackGround({
    super.key,
    required this.cts,
    required this.svgName,
  });
  final BoxConstraints cts;
  final String svgName;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: SvgPicture.asset(
        svgName,
        width: cts.maxWidth,
      ),
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
        InkWell(
          onTap: () {
            context.router.push(TermsOfUseRoute());
          },
          child: Text(
            l10n.signInTermsOfUseLabel,
            style: style.bodySmall?.copyWith(fontWeight: FontWeight.w600),
          ),
        )
      ],
    );
  }
}
