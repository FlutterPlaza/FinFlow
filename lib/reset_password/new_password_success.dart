import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fpb/assets/fpb_svg.dart';
import 'package:fpb/core/presentation/extension/extensions.dart';
import 'package:fpb/core/presentation/widget/fpb_button.dart';
import 'package:fpb/core/shared/helpers/is_keyboard_visible.dart';
import 'package:fpb/l10n/l10n.dart';
import 'package:fpb/router/app_route.gr.dart';

class NewPasswordSuccessScreen extends StatefulWidget {
  const NewPasswordSuccessScreen({Key? key}) : super(key: key);

  @override
  State<NewPasswordSuccessScreen> createState() =>
      _NewPasswordSuccessScreenState();
}

class _NewPasswordSuccessScreenState extends State<NewPasswordSuccessScreen> {
  final FocusNode? node = FocusNode();
  final TextEditingController? emailFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final theme = Theme.of(context);
    // final style = theme.textTheme;
    // final colors = theme.colorScheme;

    return LayoutBuilder(
      builder: (context, cts) {
        return Scaffold(
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 0.025 * cts.maxHeight,
                    ),
                    Stack(
                      children: [
                        Container(
                          width: 99,
                          height: 85,
                          margin: EdgeInsets.all(30),
                          decoration: BoxDecoration(
                            color: theme.colorScheme.primary,
                            borderRadius:
                                BorderRadius.all(Radius.circular(4.0)),
                          ),
                        ),
                        Positioned(
                          bottom: 50,
                          left: 55,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(4.0), //or 15.0
                            child: SvgPicture.asset(
                              'assets/FpbIcons/blue_circle_check_mark.svg',
                              width: 45.83,
                              height: 45.83,
                              colorFilter: ColorFilter.mode(theme.colorScheme.onPrimaryContainer, BlendMode.srcIn)
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 0.001 * cts.maxHeight,
                    ),
                    PageTitle(
                      title: l10n.newPasswordSuccessTitle,
                      box: cts,
                    ),
                    SizedBox(
                      height: 0.02 * cts.maxHeight,
                    ),
                    Text(
                      l10n.newPasswordSuccessBodyContent,
                      textAlign: TextAlign.center,
                      style: TextStyle(height: 1.5, fontSize: 12),
                    ),
                    SizedBox(
                      height: 0.025 * cts.maxHeight,
                    ),
                    SizedBox(
                      height: 0.03 * cts.maxHeight,
                    ),
                    FpbButton(
                      label: l10n.signInLogInButtonLabel,
                      onTap: () {
                        context.router.push((SaveMoneyRoute()));
                      },
                      fontWeight: FontWeight.w600
                    ),
                  ],
                ).card(
                  height:
                      (isKeyboardVisible(context) ? .80 : .8) * cts.maxHeight,
                  radiusTop: cts.maxWidth * 0.05,
                  color: theme.colorScheme.background,
                  padding: EdgeInsets.all(cts.maxHeight * 0.025),
                ),
              )
            ],
          ).card(
            radiusTop: cts.maxWidth * 0.05,
            color: theme.colorScheme.background,
          ),
        );
      },
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
            fontSize: box.maxWidth * 0.085,
            fontWeight: FontWeight.w700,
          ),
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
    return Positioned(
      top: -.035 * cts.maxHeight,
      child: SvgPicture.asset(
        svgName,
        width: cts.maxWidth,
        height: 0.4 * cts.maxHeight,
      ),
    );
  }
}