import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpb/assets/fpb_svg.dart';
import 'package:fpb/authentication_with_facebook/application/facebook_auth_bloc.dart';
import 'package:fpb/authentication_with_google/application/google_auth_bloc/google_sign_in_bloc.dart';
import 'package:fpb/authentication_with_google/view/loading_indicator.dart';
import 'package:fpb/core/application/email_password_bloc/email_password_bloc.dart';
import 'package:fpb/core/presentation/extension/extensions.dart';
import 'package:fpb/core/presentation/widget/fpb_button.dart';
import 'package:fpb/core/presentation/widget/fpb_text_form_field_v2.dart';
import 'package:fpb/core/shared/helpers/is_keyboard_visible.dart';
import 'package:fpb/injection.dart';
import 'package:fpb/l10n/l10n.dart';
import 'package:fpb/onboarding/view/widgets/alternative_auth.dart';
import 'package:fpb/sign_in/view/widgets/phone_number_input.dart';

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
                  return GestureDetector(
                    onTap: () => FocusScope.of(context).unfocus(),
                    child: Scaffold(
                      resizeToAvoidBottomInset: false,
                      body: Stack(
                        children: [
                          Align(
                            alignment: Alignment.topCenter,
                            child: Image.asset(
                              SvgNames.authSignupBackground,
                              width: box.maxWidth,
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              // height: box.maxHeight * .85,
                              // padding: const EdgeInsets.all(18),
                              // decoration: BoxDecoration(
                              //   color: theme.colorScheme.background,
                              //   // color: Colors.red,
                              //   borderRadius: const BorderRadius.only(
                              //     topLeft: Radius.circular(20),
                              //     topRight: Radius.circular(20),
                              //   ),
                              // ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    l10n.signUpRegisterTitle,
                                    style: textTheme.titleLarge,
                                  ),
                                  SizedBox(
                                    height: box.maxHeight * 0.015,
                                  ),
                                  TabBar(
                                    padding: EdgeInsets.all(
                                      box.maxHeight * .01,
                                    ),
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
                                      fontWeight: FontWeight.bold,
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
                                  ).card(
                                    color: theme.colorScheme.outline,
                                    margin: EdgeInsets.symmetric(
                                      vertical: box.maxHeight * 0.008,
                                    ),
                                    radius: box.maxWidth * 0.02,
                                    height: box.maxHeight * 0.07,
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
                                                  height: box.maxHeight * 0.02,
                                                ),
                                                FpbTextFormField(
                                                  key: Key('FullnameField'),
                                                  label: l10n
                                                      .signUpFullNameTextFieldLabel,
                                                  hintText: l10n
                                                      .signUpFullNameTextFieldHintText,
                                                  box: box,
                                                ),
                                                SizedBox(
                                                  height: box.maxHeight * 0.02,
                                                ),
                                                FpbTextFormField(
                                                  key: Key('EmailField'),
                                                  label: l10n
                                                      .signInEmailTextFieldLabel,
                                                  hintText: l10n
                                                      .signInEmailTextFieldHintText,
                                                  keyboardType: TextInputType
                                                      .emailAddress,
                                                  box: box,
                                                ),
                                                SizedBox(
                                                  height: box.maxHeight * 0.02,
                                                ),
                                                FpbTextFormField(
                                                  key: Key('PasswordField'),
                                                  label: l10n
                                                      .signInPasswordFieldLabel,
                                                  hintText: l10n
                                                      .signInPasswordFieldHintText,
                                                  keyboardType: TextInputType
                                                      .visiblePassword,
                                                  box: box,
                                                ),
                                              ],
                                            ),
                                          ),
                                          SingleChildScrollView(
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                SizedBox(
                                                  height: box.maxHeight * .12,
                                                ),
                                                PhoneNumberInput(
                                                  key: Key('IntlPhoneInput'),
                                                  l10n: l10n,
                                                  cts: box,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
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
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Expanded(
                                            child: Divider(
                                          key: Key('Divider'),
                                          color:
                                              theme.colorScheme.outlineVariant,
                                        )),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                            horizontal: box.maxHeight * .015,
                                          ),
                                          child: Text(
                                            key: Key('OrSignUpWith'),
                                            l10n.signUpOrSignupWithText,
                                          ),
                                        ),
                                        Expanded(
                                            child: Divider(
                                          key: Key('Divider'),
                                          color:
                                              theme.colorScheme.outlineVariant,
                                        ))
                                      ],
                                    ),
                                  ),
                                  AlternativeAuth(box: box),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: box.maxHeight * 0.001,
                                      bottom: box.maxHeight * 0.0001,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          l10n.signUpAlreadyAMemberText,
                                          key: Key('AlreadyAMember'),
                                          style: style.titleSmall?.copyWith(
                                            color: theme.colorScheme.secondary,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        TextButton(
                                          onPressed: () {
                                            context.router.pop();
                                          },
                                          child: Text(
                                            l10n.signInLogInTitle,
                                            style: style.titleMedium?.copyWith(
                                              color: theme.colorScheme.primary,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ).card(
                                height:
                                    (isKeyboardVisible(context) ? .95 : .85) *
                                        box.maxHeight,
                                radiusTop: box.maxWidth * 0.05,
                                color: theme.colorScheme.onSurface,
                                padding: EdgeInsets.all(box.maxHeight * 0.025),
                              ),
                            ),
                          )
                        ],
                      ).card(
                        // height: (isKeyboardVisible(context) ? .95 : .8) *
                        //     cts.maxHeight,
                        radiusTop: box.maxWidth * 0.05,
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
