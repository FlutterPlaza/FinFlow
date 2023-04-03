// ignore_for_file: body_might_complete_normally_nullable

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fpb/assets/fpb_svg.dart';
import 'package:fpb/contact_us/view/widgets/message_textfield.dart';
import 'package:fpb/core/presentation/widget/fpb_button.dart';
import 'package:fpb/core/presentation/widget/fpb_text_form_field_v2.dart';
import 'package:fpb/core/shared/helpers/extensions.dart';
import 'package:fpb/l10n/l10n.dart';
import 'package:fpb/router/app_route.gr.dart';
import 'package:fpb/sign_in/view/sign_in_page.dart';

class ContactUsScreen extends StatefulWidget {
  const ContactUsScreen({super.key});

  @override
  State<ContactUsScreen> createState() => _ContactUsScreenState();
}

class _ContactUsScreenState extends State<ContactUsScreen> {
  final _formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  String errorText = '';
  //IconData errorIcon;
  double errorContainerHeight = 0.0;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final theme = Theme.of(context);
    //final style = theme.textTheme;

    return LayoutBuilder(
      builder: (context, box) {
        return Scaffold(
            resizeToAvoidBottomInset: true,
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
                            key: Key('ContactusPageTitle'),
                            title: l10n.contactUsTitle,
                            box: box,
                          ),
                          SizedBox(
                            height: 0.015 * box.maxHeight,
                          ),
                          Flexible(
                            child: SingleChildScrollView(
                              child: Form(
                                key: _formKey,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    FpbTextFormField(
                                      key: Key('NameField'),
                                      onChanged: (value) {
                                        setState(() {});
                                      },
                                      textController: nameController,
                                      label: l10n.contactUsNameTextFieldLabel,
                                      hintText:
                                          l10n.contactUsNameTextFieldHintText,
                                      box: box,
                                      errorMsg: () {
                                        if (nameController.text.isEmpty) {
                                          return 'Field is required';
                                        } else if (nameController
                                            .text.isValidName) {
                                          return null;
                                        } else {
                                          return l10n.contactUsNameErrorText;
                                        }
                                      }(),
                                    ),
                                    SizedBox(
                                      height: box.maxHeight * .03,
                                    ),
                                    FpbTextFormField(
                                      key: Key('EmailField'),
                                      onChanged: (value) {
                                        setState(() {});
                                      },
                                      textController: emailController,
                                      label: l10n.signInEmailTextFieldLabel,
                                      hintText:
                                          l10n.signInEmailTextFieldHintText,
                                      box: box,
                                      errorMsg: () {
                                        if (nameController.text.isEmpty) {
                                          return 'Field is required';
                                        } else if (nameController
                                            .text.isValidEmail) {
                                          return null;
                                        } else {
                                          return l10n.contactUsEmailErrorText;
                                        }
                                      }(),
                                    ),
                                    SizedBox(
                                      height: box.maxHeight * .03,
                                    ),
                                    MessageTextField(
                                      key: Key('MessageField'),
                                      theme: theme,
                                      box: box,
                                      validator: (val) {
                                        if (val!.isEmpty) {
                                          return 'Field is required';
                                        } else if (val.length > 30 &&
                                            val.length < 500) {
                                          return null;
                                        } else {
                                          return l10n
                                              .contactUsMessageTextFieldErrorText;
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
                              key: Key('SubmitButton'),
                              label: l10n.contactUsSubmitBtnLabel,
                              onTap: () {
                                if (_formKey.currentState!.validate()) {
                                  context.router.push(ContactUsSuccessRoute());
                                } else {}
                              })
                        ]),
                  ),
                ),
              )
            ]));
      },
    );
  }
}
