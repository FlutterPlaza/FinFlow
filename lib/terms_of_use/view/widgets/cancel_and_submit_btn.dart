import 'package:flutter/material.dart';
import 'package:fpb/l10n/l10n.dart';
import 'package:fpb/terms_of_use/view/widgets/terms_of_use_btn.dart';

class SubmitAndCancelBtn extends StatelessWidget {
  const SubmitAndCancelBtn({super.key, required this.theme, required this.box});

  final ThemeData theme;
  final BoxConstraints box;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: box.maxHeight * .1,
        width: box.maxWidth,
        color: theme.colorScheme.background,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: box.maxHeight * .015),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              termsOfUseBtn(
                text: l10n.termsOfUseCancelBtn,
                textColor: theme.colorScheme.secondary,
                backgroundColor: theme.colorScheme.background,
                borderColor: theme.colorScheme.secondary,
                box: box,
              ),
              termsOfUseBtn(
                  text: l10n.termsOfUseSubmitBtn,
                  textColor: theme.colorScheme.background,
                  backgroundColor: theme.colorScheme.primary,
                  borderColor: theme.colorScheme.background,
                  box: box)
            ],
          ),
        ),
      ),
    );
  }
}
