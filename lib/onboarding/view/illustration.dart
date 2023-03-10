// ignore_for_file: must_be_immutable, avoid_setters_without_getters

import 'package:flutter/material.dart' hide Actions;
import 'package:fpb/onboarding/view/widgets/illustration_image.dart';
import 'package:fpb/onboarding/view/widgets/illustration_message.dart';
import 'package:fpb/onboarding/view/widgets/actions.dart';

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
