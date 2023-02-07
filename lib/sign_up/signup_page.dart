import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fpb/assets/fpb_svg.dart';
import 'package:fpb/core/shared/presentation/widget/my_button.dart';
import 'package:fpb/core/shared/presentation/widget/my_textformfield.dart';
import 'package:fpb/l10n/l10n.dart';
import 'package:fpb/sign_in/view/sign_in_page.dart';

class SignUnPage extends StatefulWidget {
  const SignUnPage({super.key});

  @override
  State<SignUnPage> createState() => _SignUnPageState();
}

class _SignUnPageState extends State<SignUnPage>
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
    return LayoutBuilder(
      builder: (context, BoxConstraints box) {
        return Scaffold(
          body: Stack(
            children: [
              Positioned(
                top: -.02 * box.maxHeight,
                child: SvgPicture.asset(
                  SvgNames.authBackground,
                  width: box.maxWidth,
                  height: box.maxHeight * 0.4,
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
                        l10n.signUpJoinUsTitle,
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
                                l10n.signUpEmailSignupLabel,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Tab(
                              child: Text(
                                l10n.signUpPhoneNumberSignupLabel,
                                maxLines: 2,
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
                          top: box.maxHeight * .001,
                          //bottom: box.maxHeight * .0001,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              l10n.signUpAlreadyAMemberText,
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                l10n.signInLogInTitle,
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
                    ],
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
