import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:fpb/assets/fpb_svg.dart';
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
    final theme = Theme.of(context);
    final colors = theme.colorScheme;
    final pageController = PageController();
    final currentIndex = useState(0);
    final length = 3;

    return Scaffold(
      body: PageView(
        scrollDirection: Axis.horizontal,
        controller: pageController,
        onPageChanged: (value) {
          currentIndex.value = value;
        },
        children: [
          Illustration(
            key: ValueKey(("onboarding-screen-0")),
            assetName: SvgNames.sendIllustration,
            illustrationBgColor: colors.onPrimaryContainer,
            title: l10n.onboardingSendTitle,
            description: l10n.onboardingSendDescription,
            currentIndex: currentIndex,
            length: length,
            onNextPressed: () => pageController.nextPage(
              duration: Duration(milliseconds: 300),
              curve: Curves.ease,
            ),
            onSkipPressed: () => pageController.animateToPage(
              2,
              duration: Duration(milliseconds: 300),
              curve: Curves.ease,
            ),
          ),
          Illustration(
            key: ValueKey(("onboarding-screen-1")),
            assetName: SvgNames.saveIllustration,
            illustrationBgColor: colors.tertiary,
            title: l10n.onboardingSaveTitle,
            currentIndex: currentIndex,
            length: length,
            description: l10n.onboardingSaveDescription,
            onNextPressed: () => pageController.nextPage(
              duration: Duration(milliseconds: 300),
              curve: Curves.ease,
            ),
            onSkipPressed: () => pageController.nextPage(
              duration: Duration(milliseconds: 300),
              curve: Curves.ease,
            ),
          ),
          Illustration(
            key: ValueKey(("onboarding-screen-2")),
            assetName: SvgNames.transIllustration,
            title: l10n.onboardingTransactionTitle,
            currentIndex: currentIndex,
            length: length,
            description: l10n.onboardingTransactionDescription,
            onNextPressed: onGetStartedPressed ??
                () {
                  context.router.replace(SignInRoute());
                },
          ),
        ],
      ),
    );
  }
}
