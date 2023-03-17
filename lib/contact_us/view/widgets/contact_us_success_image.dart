import 'package:flutter/material.dart';

class ContactUsSuccessImageWidget extends StatelessWidget {
  const ContactUsSuccessImageWidget({
    super.key,
    required this.box,
  });

  final BoxConstraints box;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/fpb-assets/email_success.png',
      width: box.maxWidth * .3,
      height: 0.15 * box.maxHeight,
    );
  }
}
