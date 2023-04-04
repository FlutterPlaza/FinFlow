import 'package:flutter/material.dart';
import 'package:fpb/l10n/l10n.dart';
import 'package:fpb/terms_of_use/view/widgets/cancel_and_submit_btn.dart';
import 'package:fpb/terms_of_use/view/widgets/terms_of_use_title_text.dart';
import 'package:fpb/terms_of_use/view/widgets/terms_of_use_webcontainer.dart';
import 'package:webview_flutter/webview_flutter.dart';
//import 'package:device_preview/device_preview.dart';

class TermsOfUseScreen extends StatefulWidget {
  const TermsOfUseScreen({super.key});

  @override
  State<TermsOfUseScreen> createState() => _TermsOfUseScreenState();
}

class _TermsOfUseScreenState extends State<TermsOfUseScreen> {
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..loadRequest(
        Uri.parse('https://goo.gle/3j8wszq'),
      );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final theme = Theme.of(context);
    final style = theme.textTheme;
    return LayoutBuilder(builder: (context, BoxConstraints box) {
      //appBar: AppBar(title: const Text('Flutter Simple Example')),
      return Scaffold(
        backgroundColor: theme.colorScheme.background,
        body: SafeArea(
          child: Stack(children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: box.maxHeight * .025,
                  horizontal: box.maxHeight * .025),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TitleText(style: style, text: l10n.termsOfUseTitle),
                  SizedBox(
                    height: box.maxHeight * .03,
                  ),
                  Text(
                    l10n.termsOfUseText,
                    style: style.titleMedium,
                  ),
                  SizedBox(
                    height: box.maxHeight * .02,
                  ),
                  WebviewContainer(controller: controller, box: box),
                ],
              ),
            ),
            SubmitAndCancelBtn(
              theme: theme,
              box: box,
            )
          ]),
        ),
      );
    });
  }
}

