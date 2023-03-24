import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fpb/assets/fpb_svg.dart';
import 'package:fpb/authentication_with_facebook/application/facebook_auth_bloc.dart';
import 'package:fpb/authentication_with_google/application/google_auth_bloc/google_sign_in_bloc.dart';
import 'package:fpb/authentication_with_google/view/loading_indicator.dart';
import 'package:fpb/core/application/email_password_bloc/email_password_bloc.dart';
import 'package:fpb/core/presentation/widget/fpb_button.dart';
import 'package:fpb/core/presentation/widget/fpb_text_form_field.dart';
import 'package:fpb/injection.dart';
import 'package:fpb/l10n/l10n.dart';
import 'package:fpb/onboarding/view/widgets/alternative_auth.dart';

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
          create: (context) => getIt<FacebookAuthBloc>(),
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
    final l10n = context.l10n;
    final theme = Theme.of(context);
    final style = theme.textTheme;

    final textTheme = theme.textTheme;
    return BlocConsumer<GoogleSignInBloc, GoogleSignInState>(
      listener: (context, state) {
        state.failureOrUser.fold(
            (l) => ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(l.message)),
                ),
            (r) {});
      },
      builder: (context, state) {
        return state.isLoading
            ? LoadingIndicator()
            : LayoutBuilder(
                builder: (context, box) {
                  return Scaffold(
                    body: Stack(
                      children: [
                        Positioned(
                          top: -box.maxHeight * .03,
                          child: SvgPicture.asset(
                            SvgNames.authBackground,
                            width: box.maxWidth,
                            height: box.maxHeight * 0.3,
                          ),
                        ),
                        Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              height: box.maxHeight * .94,
                              padding: const EdgeInsets.all(18),
                              decoration: BoxDecoration(
                                color: theme.colorScheme.background,
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
                                      style: textTheme.displaySmall?.copyWith(
                                        color: theme.colorScheme.onBackground,
                                        fontWeight: FontWeight.bold,
                                        fontSize: box.maxWidth * 0.037,
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
                                          color: theme.colorScheme.background,
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(20),
                                            topRight: Radius.circular(20),
                                          ),
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              l10n.signUpRegisterTitle,
                                              style: textTheme.titleLarge,
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
                                                color: theme.cardColor,
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              // color: Colors.red,
                                              child: TabBar(
                                                padding: EdgeInsets.all(
                                                    box.maxHeight * .008),
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
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                    ),
                                                  ),
                                                  Tab(
                                                    child: Text(
                                                      l10n.signInPhoneNumberLogInLabel,
                                                      maxLines: 1,
                                                      overflow:
                                                          TextOverflow.ellipsis,
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
                                                    physics:
                                                        const BouncingScrollPhysics(),
                                                    controller: tabController,
                                                    children: [
                                                      Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .end,
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          FpbTextFormField(
                                                            label: l10n
                                                                .signUpFullNameTextFieldLabel,
                                                            hint: l10n
                                                                .signUpFullNameTextFieldHintText,
                                                            box: box,
                                                          ),
                                                          FpbTextFormField(
                                                            label: l10n
                                                                .signInEmailTextFieldLabel,
                                                            hint: l10n
                                                                .signInEmailTextFieldHintText,
                                                            isEmail: true,
                                                            box: box,
                                                          ),
                                                          FpbTextFormField(
                                                            label: l10n
                                                                .signInPasswordFieldLabel,
                                                            hint: l10n
                                                                .signInPasswordFieldHintText,
                                                            isPassword: true,
                                                            box: box,
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
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  Expanded(
                                                      child: Divider(
                                                    color: theme.colorScheme
                                                        .outlineVariant,
                                                  )),
                                                  Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                      horizontal:
                                                          box.maxHeight * .015,
                                                    ),
                                                    child: Text(
                                                      l10n.signUpOrSignupWithText,
                                                    ),
                                                  ),
                                                  Expanded(
                                                      child: Divider(
                                                    color: theme.colorScheme
                                                        .outlineVariant,
                                                  ))
                                                ],
                                              ),
                                            ),
                                            AlternativeAuth(box: box),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 25, bottom: 8),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    'Already a member?',
                                                    style: style.titleSmall
                                                        ?.copyWith(
                                                      color: theme.colorScheme
                                                          .secondary,
                                                    ),
                                                  ),
                                                  TextButton(
                                                    onPressed: () {
                                                      context.router.pop();
                                                      // context.router
                                                      //     .push(SignInRoute());
                                                    },
                                                    child: Text(
                                                      'Login',
                                                      style: style.titleMedium
                                                          ?.copyWith(
                                                        color: theme.colorScheme
                                                            .primary,
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
                                  ]),
                            ))
                      ],
                    ),
                  );
                },
              );
      },
    );
  }
}
