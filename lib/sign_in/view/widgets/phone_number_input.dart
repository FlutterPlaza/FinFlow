import 'package:flutter/material.dart';
import 'package:fpb/l10n/l10n.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class PhoneNumberInput extends StatelessWidget {
  const PhoneNumberInput({
    super.key,
    required this.l10n,
    required this.cts,
    this.node,
    this.textController,
  });

  final AppLocalizations l10n;
  final FocusNode? node;
  final TextEditingController? textController;
  final BoxConstraints cts;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final style = theme.textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          l10n.signInPhoneNumberFieldLabel,
          style: style.titleSmall,
        ),
        SizedBox(
          height: cts.maxHeight * 0.01,
        ),
        IntlPhoneField(
          disableLengthCheck: true,
          flagsButtonPadding: EdgeInsets.all(
            cts.maxHeight * 0.01,
          ),
          dropdownIconPosition: IconPosition.trailing,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(
              cts.maxHeight * 0.025,
            ),
            labelText: '1 234 89 9000',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(
                  cts.maxHeight * 0.025,
                ),
              ),
            ),
          ),
          initialCountryCode: 'US',
        ),
        SizedBox(
          height: cts.maxHeight * .02,
        )
      ],
    );
  }
}
