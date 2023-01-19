import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fpb/assets/fpb_icons/fpb_icons_icons.dart';
import 'package:fpb/assets/fpb_svg.dart';
import 'package:fpb/core/shared/helpers/relative_sizing.dart';
import 'package:fpb/core/shared/presentation/theming/colors/colors.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage>
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
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: -.035.ofHeight(context),
              child: SvgPicture.asset(
                SvgNames.authBackground,
                width: size.width.of(context),
                height: 0.3.ofHeight(context),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: .7.ofHeight(context),
                padding: EdgeInsets.all(25.of(context)),
                decoration: BoxDecoration(
                  color: Theme.of(context).backgroundColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.of(context)),
                    topRight: Radius.circular(20.of(context)),
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Login',
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall
                              ?.copyWith(
                                color: AppColors.secondaryColorW,
                                fontWeight: FontWeight.bold,
                                fontSize: 0.025.ofWith(context),
                              ),
                        ),
                        Card(
                          color: AppColors.getShade(AppColors.accentColorW),
                          child: IconButton(
                            iconSize: 0.005.ofWith(context),
                            onPressed: () {},
                            icon: Icon(
                              FpbIcons.face_id,
                              color: Colors.white,
                              size: 23.of(context),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      // height: 0.01 * size.height
                      height: 0.01.ofHeight(context),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 8.of(context)),
                      height: 0.054.ofHeight(context),
                      decoration: BoxDecoration(
                        color: Theme.of(context).cardColor,
                        borderRadius: BorderRadius.circular(20.of(context)),
                      ),
                      // color: Colors.red,
                      child: TabBar(
                        padding: EdgeInsets.all(8.of(context)),
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
                      height: 0.011.ofHeight(context),
                    ),
                    Flexible(
                      child: Form(
                        child: SizedBox(
                          height: 0.32.ofHeight(context),
                          child: TabBarView(
                            physics: const BouncingScrollPhysics(),
                            controller: tabController,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisSize: MainAxisSize.min,
                                children: const [
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
                                  Text('Forgot password?'),
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
                    FpbButton(label: 'Log in', onTap: () {}),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 16.of(context)),
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
                      padding: const EdgeInsets.only(top: 27, bottom: 10),
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
                          style: Theme.of(context).textTheme.caption?.copyWith(
                                fontSize: 13,
                              ),
                        ),
                        Text(
                          ' Terms of use',
                          style: Theme.of(context).textTheme.headline6,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
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

class FpbButton extends StatelessWidget {
  const FpbButton({
    super.key,
    required this.label,
    required this.onTap,
    this.trailing,
    this.heading,
    this.height,
    this.width,
  });

  final String label;
  final void Function()? onTap;
  final Widget? trailing;
  final Widget? heading;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    final text = Text(
      label,
      style: Theme.of(context).textTheme.titleLarge?.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.w400,
          ),
    );
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: width ?? size.width,
      height: height ?? size.height * 0.075,
      child: ElevatedButton(
        clipBehavior: Clip.hardEdge,
        onPressed: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            heading ?? const SizedBox.shrink(),
            text,
            if (trailing != null)
              Transform.translate(
                offset: const Offset(-15, 0),
                child: trailing,
              )
            else
              const SizedBox.shrink()
          ],
        ),
      ),
    );
  }
}

class FpbTextFormField extends StatefulWidget {
  const FpbTextFormField({
    super.key,
    required this.label,
    required this.hint,
    this.textController,
    this.node,
    this.isEmail = false,
    this.isPassword = false,
  });

  final String label;
  final String hint;
  final bool isEmail;
  final bool isPassword;
  final TextEditingController? textController;
  final FocusNode? node;

  @override
  State<FpbTextFormField> createState() => _FpbTextFormFieldState();
}

class _FpbTextFormFieldState extends State<FpbTextFormField> {
  late bool? hidePassword;
  @override
  void initState() {
    super.initState();
    hidePassword = widget.isPassword ? false : null;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: Theme.of(context).textTheme.headline6,
        ),
        const SizedBox(
          height: 8,
        ),
        TextFormField(
          controller: widget.textController,
          focusNode: widget.node,
          keyboardType: widget.isEmail
              ? TextInputType.emailAddress
              : widget.isPassword
                  ? TextInputType.visiblePassword
                  : TextInputType.none,
          obscureText: hidePassword ?? false,
          decoration: InputDecoration(
            // suffixIconColor:
            suffixIcon: !widget.isPassword
                ? null
                : hidePassword!
                    ? Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: IconButton(
                          onPressed: () {
                            setState(() {
                              hidePassword = !hidePassword!;
                            });
                          },
                          icon: const Icon(FpbIcons.eye_closed),
                          color: widget.node != null
                              ? widget.node!.hasFocus
                                  ? Theme.of(context).colorScheme.onSurface
                                  : null
                              : AppColors.cardColorW,
                        ),
                      )
                    : Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: IconButton(
                          onPressed: () {
                            setState(() {
                              hidePassword = !hidePassword!;
                            });
                          },
                          icon: const Icon(
                            FpbIcons.eye_open,
                            size: 17,
                          ),
                          color: widget.node != null
                              ? widget.node!.hasFocus
                                  ? Theme.of(context).colorScheme.onSurface
                                  : null
                              : AppColors.cardColorW,
                        ),
                      ),
            hintText: widget.hint,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
      ],
    );
  }
}
