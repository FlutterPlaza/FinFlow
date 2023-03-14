import 'package:flutter/material.dart';
import 'package:fpb/l10n/l10n.dart';

class ContactUsSuccessTexts extends StatelessWidget {
  const ContactUsSuccessTexts({
    super.key,
    required this.l10n,
    required this.style,
    required this.box,
  });

  final AppLocalizations l10n;
  final TextTheme style;
  final BoxConstraints box;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          l10n.contactUsSuccessTitle,
          maxLines: 2,
          style: style.titleLarge,
        ),
        SizedBox(
          height: box.maxHeight * .025,
        ),
        Text(l10n.contactUsSuccessText, maxLines: 3, style: style.titleMedium),
      ],
    );
  }
}
