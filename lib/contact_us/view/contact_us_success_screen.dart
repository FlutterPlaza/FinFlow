import 'package:flutter/material.dart';
import 'package:fpb/assets/fpb_svg.dart';
import 'package:fpb/contact_us/view/widgets/contact_us_success_btn.dart';
import 'package:fpb/contact_us/view/widgets/contact_us_success_image.dart';
import 'package:fpb/contact_us/view/widgets/contact_us_success_texts.dart';
import 'package:fpb/l10n/l10n.dart';
import 'package:fpb/sign_in/view/sign_in_page.dart';

class ContactUsSuccessScreen extends StatelessWidget {
  const ContactUsSuccessScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final theme = Theme.of(context);
    final style = theme.textTheme;
    //final colors = theme.colorScheme;

    return LayoutBuilder(builder: (context, box) {
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
                      ContactUsSuccessImageWidget(box: box),
                      SizedBox(
                        height: box.maxHeight * .0001,
                      ),
                      ContactUsSuccessTexts(l10n: l10n, style: style, box: box),
                      SizedBox(
                        height: box.maxHeight * .15,
                      ),
                      ContactUsSuccessBtn(
                        style: style,
                        box: box,
                        backgroundColor: theme.colorScheme.background,
                        borderColor: theme.colorScheme.secondary,
                        text: l10n.contactUsSuccessBtnText,
                        textColor: theme.colorScheme.secondary,
                      )
                    ],
                  ),
                ),
              ))
        ]),
      );
    });
  }
}
