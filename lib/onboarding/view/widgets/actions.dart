import 'package:flutter/material.dart';
import 'package:fpb/assets/fpb_icons/fpb_icons_icons.dart';
import 'package:fpb/core/presentation/widget/fpb_button.dart';
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
    final colors = theme.colorScheme;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        if (!isLastPage) const SizedBox(),
        if (!isLastPage)
          TextButton(
            key: Key("skip_button"),
            onPressed: onSkipPressed,
            child: Text(
              l10n.onboardingSkipLabel,
              style: textTheme.titleMedium,
            ),
          ),
        FpbButton(
          key:  !isLastPage ? Key("next_button") : Key('get_started_button'),
          label: !isLastPage
              ? l10n.onboardingNextLabel
              : l10n.onboardingGetStartedLabel,
          onTap: onNextPressed,
          width: isLastPage ? cts.maxWidth * 0.65 : cts.maxWidth * 0.6,
          height: cts.maxHeight * 0.07,
          trailing: !isLastPage
              ? Icon(
            key:  Key("next_icon"),
            FpbIcons.arrow_right,
                  size: cts.maxHeight * 0.02,
                  color: colors.background,
                )
              : null,
        )
      ],
    );
  }
}
