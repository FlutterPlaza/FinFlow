// ignore_for_file: must_be_immutable, avoid_setters_without_getters

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fpb/assets/fpb_icons/fpb_icons_icons.dart';
import 'package:fpb/core/shared/presentation/widget/my_button.dart';
import 'package:fpb/l10n/l10n.dart';
import 'package:fpb/onboarding/view/my_stepper.dart';

class Illustration extends StatelessWidget {
  Illustration({
    super.key,
    required this.assetName,
    required this.title,
    required this.description,
    this.length = 2,
    this.onSkipPressed,
    this.onNextPressed,
    this.illustrationBgColor,
    this.currentIndex,
  });
  final String assetName;
  final String title;
  final String description;
  final void Function()? onSkipPressed;
  final void Function()? onNextPressed;
  final Color? illustrationBgColor;
  late ValueNotifier<int>? currentIndex;

  late int length;

  set setLength(int length) {
    this.length = length;
  }

  set setValueNotifier(ValueNotifier<int> currentIndex) {
    this.currentIndex = currentIndex;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, cts) {
        return Column(
          children: [
            IllustrationImage(
              illustration: assetName,
              cts: cts,
              color: illustrationBgColor,
            ),
            IllustrationMessage(
              title: title,
              descriptions: description,
              cts: cts,
              index: currentIndex!.value,
              length: length,
              actions: Actions(
                cts: cts,
                isLastPage: currentIndex!.value + 1 == length,
                onNextPressed: onNextPressed ??
                    () {
                      currentIndex?.value = currentIndex!.value + 1;
                    },
                onSkipPressed: onSkipPressed ??
                    () {
                      currentIndex?.value = length - 1;
                    },
              ),
            )
          ],
        );
      },
    );
  }
}

class IllustrationMessage extends StatelessWidget {
  const IllustrationMessage({
    super.key,
    required this.cts,
    required this.title,
    required this.descriptions,
    this.isLastPage = false,
    required this.actions,
    required this.index,
    required this.length,
  });

  final BoxConstraints cts;
  final String title;
  final String descriptions;
  final bool isLastPage;
  final Widget actions;
  final int index;
  final int length;

  @override
  Widget build(BuildContext context) {
    debugPrint('''
      maxWidth: ${cts.maxWidth}
      maxHeight: ${cts.maxHeight}

''');
    return SizedBox(
      height: cts.maxHeight / cts.maxWidth >= 1.5
          ? cts.maxHeight * 0.4
          : cts.maxHeight * 0.6,
      child: Container(
        padding: EdgeInsets.only(
          right: cts.maxWidth * 0.05,
          left: cts.maxWidth * 0.05,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Hero(
              tag: 'stepper',
              child: MyStepper(
                length: length,
                index: index,
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: cts.maxWidth * .05),
                  child: Text(
                    title,
                    maxLines: 2,
                    style: Theme.of(context).textTheme.titleLarge,
                    textAlign: TextAlign.center,
                  ),
                ),
                Text(
                  descriptions,
                  maxLines: 4,
                  style: Theme.of(context).textTheme.titleMedium,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            actions
          ],
        ),
      ),
    );
  }
}

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
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        if (!isLastPage) const SizedBox(),
        if (!isLastPage)
          TextButton(
            onPressed: onSkipPressed,
            child: Text(
              l10n.onboardingSkipLabel,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
            ),
          ),
        FpbButton(
          label: !isLastPage
              ? l10n.onboardingNextLabel
              : l10n.onboardingGetStartedLabel,
          onTap: onNextPressed,
          width: isLastPage ? cts.maxWidth * 0.65 : cts.maxWidth * 0.6,
          height: cts.maxHeight * 0.07,
          trailing: !isLastPage
              ? Icon(
                  FpbIcons.arrow_right,
                  size: cts.maxWidth * 0.05,
                )
              : null,
        )
      ],
    );
  }
}

class IllustrationImage extends StatelessWidget {
  const IllustrationImage({
    super.key,
    required this.illustration,
    required this.cts,
    this.color,
  });

  final String illustration;
  final BoxConstraints cts;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: cts.maxHeight / cts.maxWidth >= 1.5
          ? cts.maxHeight * 0.6
          : cts.maxHeight * 0.4,
      width: cts.maxWidth,
      child: Container(
        padding: EdgeInsets.all(cts.maxWidth * 0.1),
        color: color ?? Colors.black,
        child: SvgPicture.asset(illustration),
      ),
    );
  }
}
