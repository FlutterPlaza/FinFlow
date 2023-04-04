import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';


class WebviewContainer extends StatelessWidget {
  const WebviewContainer(
      {super.key, required this.controller, required this.box});

  final WebViewController controller;
  final BoxConstraints box;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: box.maxHeight * .75,
      width: box.maxWidth,
      child: WebViewWidget(controller: controller),
    );
  }
}