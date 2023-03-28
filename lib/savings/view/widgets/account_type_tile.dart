import 'package:flutter/material.dart';

class AccountTypeTile extends StatelessWidget {
  const AccountTypeTile({
    super.key,
    required this.tileText,
    required this.amount,
    required this.box,
    this.tileSubText,
  });

  final String tileText;

  final String amount;
  final BoxConstraints box;
  final String? tileSubText;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final style = theme.textTheme;
    return Column(
      // ignore: avoid_redundant_argument_values
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              tileText,
              style: style.titleMedium,
            ),
            Text(
              amount,
              style: style.titleMedium?.copyWith(fontWeight: FontWeight.w600),
            ),
          ],
        ),
        SizedBox(
          height: box.maxHeight * 0.005,
        ),
        Text(
          tileSubText!,
          style: style.titleSmall,
        ),
      ],
    );
  }
}
