import 'package:flutter/material.dart';

class LinkAccounts extends StatelessWidget {
  const LinkAccounts({
    super.key,
    required this.box,
  });

  final BoxConstraints box;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      width: box.maxWidth * 0.9,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Other accounts',
            style: theme.textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.w400,
            ),
          ),
          // btn link account
        ],
      ),
    );
  }
}
