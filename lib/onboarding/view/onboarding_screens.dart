import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fpb/assets/fpb_svg.dart';
import 'package:fpb/core/shared/presentation/theming/colors/colors.dart';
import 'package:fpb/l10n/l10n.dart';
import 'package:fpb/onboarding/view/illustration.dart';
import 'package:fpb/router/app_route.gr.dart';

class OnboardingScreen extends HookWidget {
  const OnboardingScreen({this.onGetStartedPressed, super.key});
  static const routeName = '/getStarted';
  final void Function()? onGetStartedPressed;
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    final listIllustration = [
      Illustration(
        assetName: SvgNames.sendIllustration,
        illustrationBgColor: AppColors.primaryColorW,
        title: l10n.onboardingSendTitle,
        description: l10n.onboardingSendDescription,
      ),
      Illustration(
        assetName: SvgNames.saveIllustration,
        illustrationBgColor: AppColors.accentColorW,
        title: l10n.onboardingSaveTitle,
        description: l10n.onboardingSaveDescription,
      ),
      Illustration(
        assetName: SvgNames.transIllustration,
        title: l10n.onboardingTransactionTitle,
        description: l10n.onboardingTransactionDescription,
        onNextPressed: onGetStartedPressed ??
            () {
              context.router.popUntil((route) => route.isFirst);
              context.router.push(SignUpRoute());
            },
      ),
    ];
    final currentIndex = useState(0);
    final illustration = listIllustration.elementAt(currentIndex.value)
      ..setLength = listIllustration.length
      ..currentIndex = currentIndex;

    return Scaffold(
      body: GestureDetector(
        onPanUpdate: (details) async {
          // Swiping in right direction. -> Back
          const sensitivity = 12;
          if (details.delta.dx > sensitivity) {
            if (currentIndex.value - 1 >= 0) {
              currentIndex.value -= 1;
            }
          }
          // Swiping in left direction.-> Forward
          if (details.delta.dx < -sensitivity) {
            if (currentIndex.value + 1 < listIllustration.length) {
              currentIndex.value += 1;
            }
          }
        },
        child: illustration,
      ),
    );
  }
}
