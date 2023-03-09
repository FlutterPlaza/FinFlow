import 'package:flutter/material.dart';
import 'package:fpb/assets/fpb_svg.dart';
import 'package:fpb/core/presentation/widget/my_button.dart';
import 'package:fpb/sign_in/view/sign_in_page.dart';

class ContactUsSuccessPage extends StatelessWidget {
  const ContactUsSuccessPage({super.key, required this.box});

  final BoxConstraints box;
  @override
  Widget build(BuildContext context) {
    //final l10n = context.l10n;
    final theme = Theme.of(context);
    final style = theme.textTheme;
    //final colors = theme.colorScheme;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(children: [
        BubblesTopBackGround(
          cts: box,
          svgName: SvgNames.authBackground,
        ),
        Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: box.maxHeight * .75,
              width: box.maxWidth,
              decoration: BoxDecoration(
                color: theme.colorScheme.background,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(
                    top: box.maxHeight * .025,
                    left: box.maxHeight * .025,
                    right: box.maxHeight * .025,
                    bottom: box.maxHeight * .005),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: box.maxHeight * .1,
                    ),
                    Image.asset(
                      'assets/fpb-assets/email_success.png',
                      width: box.maxWidth * .3,
                      height: 0.15 * box.maxHeight,
                    ),
                    SizedBox(
                      height: box.maxHeight * .0001,
                    ),
                    Text(
                      'Thank you for contacting us!!',
                      maxLines: 2,
                      style: style.titleLarge,
                    ),
                    SizedBox(
                      height: box.maxHeight * .025,
                    ),
                    Text(
                        'We\'ve received your message. We read every message and typically respond within 48hrs if a reply is required.',
                        maxLines: 3,
                        style: style.titleMedium),
                    SizedBox(
                      height: box.maxHeight * .2,
                    ),
                    FpbButton(
                      label: 'Go Back',
                      onTap: () {},
                    )
                  ],
                ),
              ),
            ))
      ]),
    );
  }
}
