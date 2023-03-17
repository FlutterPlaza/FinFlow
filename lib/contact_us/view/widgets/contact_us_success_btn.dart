import 'package:flutter/material.dart';

class ContactUsSuccessBtn extends StatelessWidget {
  const ContactUsSuccessBtn(
      {super.key,
      required this.style,
      required this.box,
      required this.backgroundColor,
      required this.borderColor,
      required this.text,
      required this.textColor});

  final TextTheme style;
  final BoxConstraints box;
  final Color textColor;
  final Color backgroundColor;
  final String text;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: box.maxHeight * .06,
      width: box.maxWidth,
      child: ElevatedButton(
        style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all(textColor),
            elevation: MaterialStateProperty.all(0),
            textStyle: MaterialStateProperty.all(style.titleMedium),
            backgroundColor: MaterialStateProperty.all(
              backgroundColor,
            ),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
              box.maxHeight * .015,
            ))),
            side: MaterialStateProperty.all(BorderSide(
              color: borderColor,
            ))),
        onPressed: () {},
        child: Text(
          text,
        ),
      ),
    );
  }
}
