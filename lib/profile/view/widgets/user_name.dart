import 'package:flutter/material.dart';

class UserName extends StatelessWidget {
  const UserName({
    super.key,
    required this.box,
  });

  final BoxConstraints box;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final style = theme.textTheme;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'John Merry',
          key: Key('UserName'),
          style: style.titleMedium?.copyWith(fontWeight: FontWeight.w600),
        ),
        Text(
          '@john.merry',
          key: Key('UserEmail'),
          style: style.titleSmall,
        ),
      ],
    );
  }
}
