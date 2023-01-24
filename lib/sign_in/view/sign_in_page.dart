import 'package:authentication_repository/authentication_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:formz/formz.dart';
import 'package:fpb/assets/fpb_icons/fpb_icons_icons.dart';
import 'package:fpb/assets/fpb_svg.dart';
import 'package:fpb/core/shared/presentation/theming/colors/colors.dart';
import 'package:fpb/sign_in/application/bloc/login_bloc.dart';
import 'package:fpb/sign_in/view/widgets/email_input.dart';
import 'package:fpb/sign_in/view/widgets/login_button.dart';
import 'package:fpb/sign_in/view/widgets/password_input.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});
  static const routeName = '/login';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBloc(
        authenticationRepository:
            RepositoryProvider.of<AuthenticationRepository>(context),
      ),
      child: const SignInBody(),
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
    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) {
        if (state.status.isSubmissionFailure) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              const SnackBar(content: Text('Authentication Failure')),
            );
        }
      },
      child: LayoutBuilder(
        builder: (context, cts) {
          return Scaffold(
            body: Stack(
              children: [
                Positioned(
                  top: -.035 * cts.maxHeight,
                  child: SvgPicture.asset(
                    SvgNames.authBackground,
                    width: cts.maxWidth,
                    height: 0.35 * cts.maxHeight,
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
                              'Login',
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                            Card(
                              color: AppColors.getShade(AppColors.accentColorW),
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
                            tabs: const [
                              Tab(
                                child: Text(
                                  'Email Login',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              Tab(
                                child: Text(
                                  'Phone Number Login',
                                  maxLines: 1,
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
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisSize: MainAxisSize.min,
                                    children: const [
                                      EmailInput(),
                                      PasswordInput(),
                                      Text('Forgot password?'),
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
                            children: const [
                              Expanded(child: Divider()),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 14),
                                child: Text('Or Login with'),
                              ),
                              Expanded(child: Divider())
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            IconLogin(svg: SvgNames.google, onTap: () {}),
                            IconLogin(svg: SvgNames.facebook, onTap: () {}),
                            IconLogin(svg: SvgNames.twitter, onTap: () {}),
                            IconLogin(svg: SvgNames.apple, onTap: () {}),
                          ],
                        ),
                        Padding(
                          
                          padding: EdgeInsets.only(
                            top: cts.maxHeight * 0.001,
                            bottom: 3,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Not a member yet?',
                                style: Theme.of(context).textTheme.headline5,
                              ),
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Sign Up',
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'By continuing, you agree to our',
                              style:
                                  Theme.of(context).textTheme.caption?.copyWith(
                                        fontSize: 13,
                                      ),
                            ),
                            Text(
                              ' Terms of use',
                              style: Theme.of(context).textTheme.headline5,
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
      ),
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
