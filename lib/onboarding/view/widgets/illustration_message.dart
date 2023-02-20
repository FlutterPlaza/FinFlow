import 'package:flutter/material.dart';
import 'package:fpb/onboarding/view/widgets/my_stepper.dart';

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
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
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
                    style: textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.w700,
                      fontSize: cts.maxWidth * 0.056,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Text(
                  descriptions,
                  maxLines: 4,
                  style: textTheme.bodyMedium,
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
