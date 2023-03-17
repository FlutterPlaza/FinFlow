import 'dart:async';
import 'package:flutter/material.dart';
import 'package:fpb/l10n/l10n.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl_phone_field/phone_number.dart';

class PhoneNumberInputSignupFlow extends StatefulWidget {
  const PhoneNumberInputSignupFlow({
    super.key,
    required this.l10n,
    required this.cts,
    this.node,
    this.phoneNumberController,
    required this.onChanged,
    required this.validator,
  });

  final AppLocalizations l10n;
  final FocusNode? node;
  final TextEditingController? phoneNumberController;
  final BoxConstraints cts;
  final void Function(PhoneNumber phoneNumber) onChanged;
  final FutureOr<String?> Function(PhoneNumber? phoneNumber)? validator;

  @override
  State<PhoneNumberInputSignupFlow> createState() => _PhoneNumberInputSignupFlowState();
}

class _PhoneNumberInputSignupFlowState extends State<PhoneNumberInputSignupFlow> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final style = theme.textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.l10n.signInPhoneNumberFieldLabel,
          style: style.titleSmall,
        ),
        SizedBox(
          height: widget.cts.maxHeight * 0.01,
        ),
        IntlPhoneField(
          controller: widget.phoneNumberController,
          disableLengthCheck: true,
          flagsButtonPadding: EdgeInsets.all(
            widget.cts.maxHeight * 0.01,
          ),
          onChanged: widget.onChanged,
          dropdownIconPosition: IconPosition.trailing,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(
              widget.cts.maxHeight * 0.025,
            ),
            labelText: '1 234 89 9000',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(
                  widget.cts.maxHeight * 0.025,
                ),
              ),
            ),
          ),
          validator: widget.validator,
          initialCountryCode: 'US',
          autovalidateMode: AutovalidateMode.onUserInteraction,
        ),
        SizedBox(
          height: widget.cts.maxHeight * .15,
        )
      ],
    );
  }
}
