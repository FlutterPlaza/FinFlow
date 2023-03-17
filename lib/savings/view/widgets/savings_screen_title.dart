import 'package:flutter/material.dart';
import 'package:fpb/l10n/l10n.dart';
import 'package:fpb/savings/view/widgets/new_savings_account_btn.dart';

class SavingsScreenTitle extends StatelessWidget {
  const SavingsScreenTitle({super.key, required this.box});

  final BoxConstraints box;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final theme = Theme.of(context);
    final colors = theme.colorScheme;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          l10n.savingsTitle,
          style: theme.textTheme.titleLarge?.copyWith(
            fontSize: 32,
          ),
        ),
        NewSavingsAccountBtn(
          colors: colors,
          l10n: l10n,
          box: box,
        ),
      ],
    );
  }
}
