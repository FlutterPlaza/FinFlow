import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fpb/assets/fpb_svg.dart';
import 'package:fpb/core/presentation/widget/my_button.dart';
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
                  height: box.maxHeight * .5,
                  width: box.maxWidth,
                  child: Container(
                    child: Padding(
                      padding:   EdgeInsets.only(
                        left: box.maxHeight * .025,
                        right: box.maxHeight * .025),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Confirm your',
                          style: style.titleLarge?.copyWith(
                            fontSize: box.maxHeight * .045
                          ),),
                          SizedBox(
                            height: box.maxHeight * .01,
                          ),
                          Text(l10n.signInEmailLogInLabel,
                          style: style.titleLarge?.copyWith(
                            fontSize: box.maxHeight * .045
                          ),
                          ),
                          SizedBox(
                            height: box.maxHeight * .01,
                          ),
                          RichText(
                            maxLines: 3,
                            text: TextSpan(
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'We\'ve sent you a confirmation email containing your ',
                                  style: style.titleMedium,
                                ),
                                TextSpan(
                                  text: 'validation code. ',
                                  style: style.titleMedium?.copyWith(
                                    fontWeight: FontWeight.w600,
                                    //color: theme.colorScheme.onSurface
                                  ),
                                ),
                                TextSpan(
                                  text: 'Please enter the code.',
                                  style: style.titleMedium
                                )
                              ]
                            )),
                          SizedBox(
                            height: box.maxHeight * .05,
                          ),
                          Row(
                            children: [
                              Wrap(
                              children:[ 
                              confirmation_input(box:  box,),
                              confirmation_input(box:  box,),
                              confirmation_input(box:  box,),
                              confirmation_input(box:  box,),
                              confirmation_input(box:  box,),
                              confirmation_input(box:  box,), 
                              ]),
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
                        height: box.maxHeight * .2,
                        width: box.maxWidth,
                        child: SvgPicture.asset(
                            SvgNames.emailConfirmation,
                            width: box.maxWidth,
                            height: 0.25 * box.maxHeight,
                          ),
                      ),
                      Container(
                        height: box.maxHeight * .2,
                        width: box.maxWidth,
                        decoration: BoxDecoration(
                          color: colors.secondary,
                        ),
                        child: Padding(
                          padding:  EdgeInsets.symmetric(horizontal: box.maxHeight * .035),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FpbButton(
                                style: ButtonStyle(
                                  textStyle: MaterialStateProperty.all(
                                    style.titleMedium?.copyWith(
                                      color: colors.onSurface
                                    ),
                                  ),
                                  shape: MaterialStateProperty.all( 
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(box.maxHeight * .02)
                                    ),
                                  ),
                                  side: MaterialStateProperty.all(
                                    BorderSide(
                                      color: colors.background
                                    )
                                  ),
                                  backgroundColor: MaterialStateProperty.all(
                                    colors.secondary,
                                  )
                                ),
                                label:  'Resend confirmation email', 
                                onTap: (){}
                                ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text('Need help?',
                                  style: style.labelMedium?.copyWith(
                                    color: colors.onSurface
                                  ),),
                                  TextButton(
                                    onPressed: (){}, 
                                    child: Text('Contact us',
                                    style: style.labelMedium?.copyWith(
                                      fontWeight: FontWeight.w600,
                                      color: theme.colorScheme.onSurface
                                    ),))
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
      padding: EdgeInsets.symmetric(horizontal: box.maxHeight * .0075),
      child: Container(
        height: box.maxHeight * .065,
        width: box.maxWidth * .12,
        child: TextFormField(  
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(box.maxHeight * .15)
            )
          ),
        ),
      ),
    );
  }
}