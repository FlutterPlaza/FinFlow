import 'package:flutter/material.dart';
import 'package:fpb/core/presentation/widget/otp_input.dart';

class OtpGroupTextField extends StatelessWidget {
  const OtpGroupTextField({
    super.key,
    required this.box,
  });

  final BoxConstraints box;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Wrap(
          children: [
            OtpInput(
              box: box,
            ),
            OtpInput(
              box: box,
            ),
            OtpInput(
              box: box,
            ),
            OtpInput(
              box: box,
            ),
            OtpInput(
              box: box,
            ),
            OtpInput(
              box: box,
            ),
          ],
        ),
      ],
    );
  }
}
