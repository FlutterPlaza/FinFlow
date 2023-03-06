import 'package:flutter/material.dart';
import 'package:fpb/l10n/l10n.dart';
import 'package:fpb/terms_of_use/view/widgets/cancel_and_submit_btn.dart';
import 'package:webview_flutter/webview_flutter.dart';
//import 'package:device_preview/device_preview.dart';

class TermsOfUsePage extends StatefulWidget {
  const TermsOfUsePage({super.key});

  @override
  State<TermsOfUsePage> createState() => _TermsOfUsePageState();
}

class _TermsOfUsePageState extends State<TermsOfUsePage> {
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
    return LayoutBuilder(
      builder: (context, BoxConstraints box){
    //appBar: AppBar(title: const Text('Flutter Simple Example')),
    return Scaffold(
      backgroundColor: theme.colorScheme.background,
      body: SafeArea(
        child: Stack(
          children:[
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: box.maxHeight * .025,
                    horizontal: box.maxHeight * .025
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TitleText(style: style,
                text: l10n.termsOfUseTitle),
                SizedBox(
                  height: box.maxHeight * .03,
                ),
                Text(l10n.termsOfUseText,
                style: style.titleMedium,),
                SizedBox(
                  height: box.maxHeight * .02,
                ),
                WebviewContainer(
                  controller: controller,
                  box: box),
              ],
            ),
                ),
          SubmitAndCancelBtn(
            theme: theme,
            box: box,)
       ] ),
      ),
    );
   } );   
  }
}

class WebviewContainer extends StatelessWidget {
  const WebviewContainer({
    super.key,
    required this.controller,
    required this.box
  });

  final WebViewController controller;
  final BoxConstraints box;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: box.maxHeight * .75,
      width: box.maxWidth,
      child: WebViewWidget(
        controller: controller
        ),
            );
  }
}

class TitleText extends StatelessWidget {
  const TitleText({
    super.key,
    required this.style,
    required this.text
  });

  final TextTheme style;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(text,
      style: style.titleLarge,),
    );
  }
}
