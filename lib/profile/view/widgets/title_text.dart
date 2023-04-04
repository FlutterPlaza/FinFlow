import 'package:flutter/material.dart';
import 'package:fpb/l10n/l10n.dart';

class TitleText extends StatelessWidget {
  const TitleText({
    super.key,
    required this.l10n,
    required this.box,
  });

  final AppLocalizations l10n;
  final BoxConstraints box;

  @override
  Widget build(BuildContext context) {
    // final l10n = context.l10n;
    final theme = Theme.of(context);
    final style = theme.textTheme;
    return Text(
      l10n.profileTitle,
      style: style.titleLarge,
    );
  }
}
