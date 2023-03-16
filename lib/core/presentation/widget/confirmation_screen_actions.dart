import 'package:flutter/material.dart';
import 'package:fpb/core/presentation/widget/fpb_button.dart';
import 'package:fpb/l10n/l10n.dart';

class ConfirmationScreenAction extends StatelessWidget {
  const ConfirmationScreenAction({
    Key? key,
    required this.confirmButtonLabel,
    required this.onTapConfirmButton,
    required this.onTapContactUsButton,
  }) : super(key: key);

  final String confirmButtonLabel;
  final void Function() onTapConfirmButton;
  final void Function() onTapContactUsButton;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final theme = Theme.of(context);
    final style = theme.textTheme;
    final colors = theme.colorScheme;

    return LayoutBuilder(builder: (context, box) {
      return Container(
        height: box.maxHeight * .17,
        width: box.maxWidth,
        decoration: BoxDecoration(
          color: colors.secondary,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: box.maxHeight * .035),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FpbButton(
                label: confirmButtonLabel,
                onTap: onTapConfirmButton,
                backgroundColor: colors.scrim,
                borderSideColor: colors.outline,
                textColor: colors.outline,
              ),
              SizedBox(
                height: box.maxHeight * .03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    l10n.confirmPhoneNumberNeedHelpLink,
                    style: style.labelMedium?.copyWith(
                      color: colors.outline,
                      fontSize: 12.0,
                    ),
                  ),
                  InkWell(
                    child: Text(
                      l10n.confirmPhoneNumberContactUs,
                      style: style.labelMedium?.copyWith(
                        fontWeight: FontWeight.w700,
                        color: theme.colorScheme.onSurface,
                        fontSize: 12.0,
                      ),
                    ),
                    onTap: onTapContactUsButton,
                  ),
                ],
              )
            ],
          ),
        ),
      );
    });
  }
}
