import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fpb/assets/fpb_icons/fpb_icons_icons.dart';
import 'package:fpb/assets/fpb_svg.dart';
import 'package:fpb/core/shared/presentation/theming/colors.dart';

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
            height: size.height * .95,
            padding: const EdgeInsets.all(25),
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
                      style: Theme.of(context).textTheme.displaySmall?.copyWith(
                            color: AppColors.secondaryColorW,
                            fontWeight: FontWeight.bold,
                            fontSize: size.width * 0.043,
                          ),
                    ),
                    Card(
                      color: AppColors.getShade(AppColors.accentColorW),
                      child: IconButton(
                        iconSize: 30,
                        onPressed: () {},
                        icon: const Icon(
                          FpbIcons.face_id,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 22,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  height: size.height * 0.085,
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
                const SizedBox(
                  height: 20,
                ),
                Flexible(
                  child: Form(
                    child: SizedBox(
                      height: size.height * 0.32,
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
                  padding: const EdgeInsets.symmetric(vertical: 16),
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
                              ?.copyWith(color: Theme.of(context).primaryColor),
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
  });

  final String label;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      height: size.height * 0.045,
      child: ElevatedButton(
        clipBehavior: Clip.hardEdge,
        onPressed: onTap,
        child: Text(
          label,
          style: Theme.of(context)
              .textTheme
              .labelLarge
              ?.copyWith(color: Theme.of(context).colorScheme.onBackground),
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
    return Container(
      child: Column(
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
      ),
    );
  }
}
