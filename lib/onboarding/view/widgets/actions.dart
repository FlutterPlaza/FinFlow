import 'package:flutter/material.dart';
import 'package:fpb/assets/fpb_icons/fpb_icons_icons.dart';
import 'package:fpb/core/presentation/widget/my_button.dart';
import 'package:fpb/l10n/l10n.dart';

class Actions extends StatelessWidget {
  const Actions({
    super.key,
    required this.isLastPage,
    required this.onSkipPressed,
    required this.onNextPressed,
    required this.cts,
  });

  final bool isLastPage;
  final void Function()? onSkipPressed;
  final void Function()? onNextPressed;
  final BoxConstraints cts;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        if (!isLastPage) const SizedBox(),
        if (!isLastPage)
          TextButton(
            onPressed: onSkipPressed,
            child: Text(
              l10n.onboardingSkipLabel,
              style: textTheme.titleMedium,
            ),
          ),
        FpbButton(
          label: !isLastPage
              ? l10n.onboardingNextLabel
              : l10n.onboardingGetStartedLabel,
          onTap: onNextPressed,
          width: isLastPage ? cts.maxWidth * 0.65 : cts.maxWidth * 0.6,
          height: cts.maxHeight * 0.07,
          trailing: !isLastPage ? Icon(FpbIcons.arrow_right) : null,
        )
      ],
    );
  }
}
