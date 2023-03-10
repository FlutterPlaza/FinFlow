import 'package:flutter/material.dart';

class termsOfUseBtn extends StatelessWidget {
  const termsOfUseBtn(
      {super.key,
      // required this.style,
      // required this.theme,
      required this.box,
      required this.backgroundColor,
      required this.borderColor,
      required this.textColor,
      required this.text});

  // final TextTheme style;
  // final ThemeData theme;
  final BoxConstraints box;
  final Color backgroundColor;
  final Color borderColor;
  final Color textColor;
  final String text;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final style = theme.textTheme;
    return Container(
      height: box.maxHeight * .06,
      width: box.maxWidth * .4,
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
          child: Text(text)),
    );
  }
}
