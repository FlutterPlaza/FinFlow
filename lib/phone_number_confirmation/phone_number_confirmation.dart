import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fpb/assets/fpb_svg.dart';
import 'package:fpb/core/presentation/widget/my_button.dart';
import 'package:fpb/l10n/l10n.dart';

class PhoneNumberConfirmationScreen extends StatefulWidget {
  static const routeName = '/phoneNumberConfirmation';

  const PhoneNumberConfirmationScreen({super.key});

  @override
  State<PhoneNumberConfirmationScreen> createState() =>
      _PhoneNumberConfirmationScreenState();
}

class _PhoneNumberConfirmationScreenState
    extends State<PhoneNumberConfirmationScreen> {
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final theme = Theme.of(context);
    final style = theme.textTheme;
    final colors = theme.colorScheme;

    return LayoutBuilder(
      builder: (context, box) {
        return Scaffold(
          backgroundColor: colors.background,
          body: SafeArea(
            child: Stack(
              children: [
                Container(
                  height: box.maxHeight * .5,
                  width: box.maxWidth,
                  child: Container(
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: box.maxHeight * .025,
                          right: box.maxHeight * .025),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            height: box.maxHeight * .05,
                          ),
                          Text(
                            l10n.confirmPhoneNumberTitleText,
                            style: style.titleLarge
                                ?.copyWith(fontSize: box.maxHeight * .045),
                            textAlign: TextAlign.center,
                          ),
                          RichText(
                              maxLines: 3,
                              textAlign: TextAlign.center,
                              text: TextSpan(children: <TextSpan>[
                                TextSpan(
                                  text: l10n.confirmPhoneNumberBodyContentStart,
                                  style: style.titleMedium,
                                ),
                                TextSpan(
                                  text: l10n.confirmPhoneNumberBodyContentMid,
                                  style: style.titleMedium?.copyWith(
                                    fontWeight: FontWeight.w600,
                                    //color: theme.colorScheme.onSurface
                                  ),
                                ),
                                TextSpan(
                                    text: l10n.confirmPhoneNumberBodyContentEnd,
                                    style: style.titleMedium)
                              ])),
                          SizedBox(
                            height: box.maxHeight * .03,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Wrap(
                                children: [
                                  confirmation_input(
                                    box: box,
                                  ),
                                  confirmation_input(
                                    box: box,
                                  ),
                                  confirmation_input(
                                    box: box,
                                  ),
                                  confirmation_input(
                                    box: box,
                                  ),
                                  confirmation_input(
                                    box: box,
                                  ),
                                  confirmation_input(
                                    box: box,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        height: box.maxHeight * .23,
                        width: box.maxWidth,
                        child: SvgPicture.asset(
                          SvgNames.emailConfirmation,
                          width: box.maxWidth,
                          height: 0.25 * box.maxHeight,
                        ),
                      ),
                      Container(
                        height: box.maxHeight * .17,
                        width: box.maxWidth,
                        decoration: BoxDecoration(
                          color: colors.secondary,
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: box.maxHeight * .035),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FpbButton(
                                label: l10n.confirmPhoneNumberResendOtpButton,
                                onTap: () {},
                                backgroundColor: colors.scrim,
                                borderSideColor: colors.outline,
                                textColor: colors.outline,
                              ),
                              SizedBox(
                                height: box.maxHeight * .03,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    l10n.confirmPhoneNumberNeedHelpLink,
                                    style: style.labelMedium?.copyWith(
                                      color: colors.outline,
                                      fontSize: 12.0,
                                    ),
                                  ),
                                  InkWell(
                                    child: Text(
                                      l10n.confirmPhoneNumberContactUs,
                                      style: style.labelMedium?.copyWith(
                                        fontWeight: FontWeight.w700,
                                        color: theme.colorScheme.onSurface,
                                        fontSize: 12.0,
                                      ),
                                    ),
                                    onTap: () {},
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}

class confirmation_input extends StatelessWidget {
  const confirmation_input({
    super.key,
    required this.box,
  });

  final BoxConstraints box;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: box.maxHeight * .0065),
      child: Container(
        height: box.maxHeight * .065,
        width: box.maxWidth * .12,
        child: Flexible(
          fit: FlexFit.loose,
          child: TextFormField(
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(box.maxHeight * .15))),
          ),
        ),
      ),
    );
  }
}
