import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class AuthTextButton extends StatelessWidget {
  const AuthTextButton({
    super.key,
    required this.textTheme,
    required this.theme,
    required this.buttonLabel,
  });

  final TextTheme textTheme;
  final ThemeData theme;
  final String buttonLabel;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        context.router.pop();
      },
      child: Text(
        buttonLabel,
        style: textTheme.headlineSmall?.copyWith(
          color: theme.primaryColor,
        ),
      ),
    );
  }
}
