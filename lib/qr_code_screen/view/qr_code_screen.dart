import 'package:flutter/material.dart';

class QrCodeScreen extends StatelessWidget {
  const QrCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints box) {
        return Scaffold(
          body: Center(
            child: Text(
              'QRcode',
            ),
          ),
        );
      },
    );
  }
}
