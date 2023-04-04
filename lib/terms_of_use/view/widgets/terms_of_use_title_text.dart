import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  const TitleText({super.key, required this.style, required this.text});

  final TextTheme style;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        style: style.titleLarge,
      ),
    );
  }
}