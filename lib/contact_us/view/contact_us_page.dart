// ignore_for_file: body_might_complete_normally_nullable

import 'package:flutter/material.dart';
import 'package:fpb/assets/fpb_svg.dart';
import 'package:fpb/contact_us/contact_us_page.dart';
import 'package:fpb/core/presentation/extension/extensions.dart';
import 'package:fpb/core/presentation/widget/my_button.dart';
import 'package:fpb/core/presentation/widget/my_textformfield.dart';
import 'package:fpb/l10n/l10n.dart';
import 'package:fpb/sign_in/view/sign_in_page.dart';
import '../domain/form_validation.dart';

class ContactUsPage extends StatefulWidget {
  const ContactUsPage({super.key});

  @override
  State<ContactUsPage> createState() => _ContactUsPageState();
}

class _ContactUsPageState extends State<ContactUsPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final theme = Theme.of(context);
    //final style = theme.textTheme;

    return LayoutBuilder(
      builder: (context, box) {
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          PageTitle(
                            title: l10n.contactUsTitle,
                            box: box,
                          ),
                          SizedBox(
                            height: 0.015 * box.maxHeight,
                          ),
                          SingleChildScrollView(
                            child: Flexible(
                              child: Form(
                                key: _formKey,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    FpbTextFormField(
                                      label: l10n.contactUsNameTextFieldLabel,
                                      hint: l10n.contactUsNameTextFieldHintText,
                                      box: box,
                                      validator: (val) {
                                        if (!(val!.isNotEmpty) &&
                                            !(val.isValidName)) {
                                          return l10n.contactUsNameErrorText;
                                        }
                                      },
                                    ),
                                    FpbTextFormField(
                                      label: l10n.signInEmailTextFieldLabel,
                                      hint: l10n.signInEmailTextFieldHintText,
                                      box: box,
                                      validator: (val) {
                                        if (!(val!.isNotEmpty) &&
                                            !(val.isValidEmail)) {
                                          return l10n.contactUsEmailErrorText;
                                        }
                                      },
                                    ),
                                    messageTextField(
                                      theme: theme,
                                      box: box,
                                      validator: (val) {
                                        if (!(val!.isNotEmpty) &&
                                            !(val.isValidEmail)) {
                                          return 'Enter Text';
                                        }
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: box.maxHeight * .05,
                          ),
                          FpbButton(
                            label: l10n.contactUsSubmitBtnLabel,
                            onTap: () {
                              if (_formKey.currentState!.validate()) {
                                Navigator.of(context).push(
                                  // ignore: inference_failure_on_instance_creation
                                  MaterialPageRoute(
                                    builder: (context) => ContactUsSuccessPage(
                                      box: box,
                                    ),
                                  ),
                                );
                              }
                            },
                          )
                        ]),
                  ),
                ),
              )
            ]));
      },
    );
  }
}

class messageTextField extends StatelessWidget {
  const messageTextField(
      {super.key,
      required this.theme,
      required this.box,
      required this.validator});

  final ThemeData theme;
  final BoxConstraints box;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final theme = Theme.of(context);
    final style = theme.textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          l10n.contactUsMessageTextFieldLabel,
          style: style.titleSmall,
        ),
        TextFormField(
          validator: validator,
          maxLines: 5,
          decoration: InputDecoration(
            hintText: l10n.contactUsMessageTextFieldHintText,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(box.maxHeight * .025),
              borderSide: BorderSide(
                color: theme.colorScheme.onSurface,
              ),
            ),
          ),
        ).card(padding: EdgeInsets.symmetric(vertical: box.maxHeight * .007)),
      ],
    );
  }
}
