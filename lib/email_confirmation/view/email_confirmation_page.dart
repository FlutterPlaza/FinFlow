import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fpb/assets/fpb_svg.dart';
import 'package:fpb/l10n/l10n.dart';

class EmailConfirmationScreen extends StatefulWidget {
  static const routeName = '/emailConfirmation';

  const EmailConfirmationScreen({super.key});

  @override
  State<EmailConfirmationScreen> createState() => _EmailConfirmationScreenState();
}

class _EmailConfirmationScreenState extends State<EmailConfirmationScreen> {
  @override
  Widget build(BuildContext context) {

    final l10n = context.l10n;
    final theme = Theme.of(context);
    final style = theme.textTheme;
    final colors = theme.colorScheme;
    
    return  LayoutBuilder(
      builder: (context, box){
        return Scaffold(
          backgroundColor: colors.background,
          body: SafeArea(
            child: Stack(
              children: [
                Container(
                  height: box.maxHeight * .75,
                  width: box.maxWidth,
                  child: Container(
                    child: Padding(
                      padding:   EdgeInsets.all(box.maxHeight * .025),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Confirm your',
                          style: style.titleLarge,),
                          Text(l10n.signInEmailLogInLabel,
                          style: style.titleLarge,),
                          SizedBox(
                            height: box.maxHeight * .01,
                          ),
                          Text('We\'ve sent you a confirmation email containing your validation code. Please enter the code.',
                          style: style.titleMedium,
                          maxLines: 3,),
                          SizedBox(
                            height: box.maxHeight * .01,
                          ),
                          Row(),
                          SvgPicture.asset(
                            SvgNames.emailConfirmation,
                            width: box.maxWidth,
                            height: 0.4 * box.maxHeight,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: box.maxHeight * .2,
                    width: box.maxWidth,
                    decoration: BoxDecoration(
                      color: colors.secondary,
                    ),
                    child: Column(
                      children: [
                        Text('container')
                      ],
                    ),
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