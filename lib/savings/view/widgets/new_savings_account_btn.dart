import 'package:flutter/material.dart';
import 'package:fpb/l10n/l10n.dart';

class NewSavingsAccountBtn extends StatelessWidget {
  const NewSavingsAccountBtn({
    super.key,
    required this.colors,
    required this.l10n,
    required this.box,
  });

  final ColorScheme colors;
  final AppLocalizations l10n;
  final BoxConstraints box;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(colors.secondary),
      ),
      onPressed: () {},
      child: Row(
        children: [
          Icon(
            Icons.add,
            color: colors.background,
            size: 18,
            // weight: 6,
          ),
          SizedBox(
            width: box.maxWidth * 0.03,
          ),
          Text(
            l10n.savingsNewSavingsAccountLabel,
            style: Theme.of(context).textTheme.titleSmall?.copyWith(
                  color: colors.background,
                ),
          ),
        ],
      ),
    );
  }
}
