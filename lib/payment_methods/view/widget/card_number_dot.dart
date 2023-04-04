import 'package:flutter/material.dart';

class CardNumberDot extends StatelessWidget {
  const CardNumberDot({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Wrap(
      spacing: 2.0,
      children: [
        Icon(
          Icons.circle,
          size: 10.0,
          color: theme.cardColor,
        ),
        Icon(
          Icons.circle,
          size: 10.0,
          color: theme.cardColor,
        ),
        Icon(
          Icons.circle,
          size: 10.0,
          color: theme.cardColor,
        ),
        Icon(
          Icons.circle,
          size: 10.0,
          color: theme.cardColor,
        ),
      ],
    );
  }
}
