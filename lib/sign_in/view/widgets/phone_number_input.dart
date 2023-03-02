import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpb/authentication_with_phone_number/authentication_with_phone_number_bloc/phone_number_authentication_bloc.dart';
import 'package:fpb/l10n/l10n.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class PhoneNumberInput extends StatefulWidget {
  const PhoneNumberInput({
    super.key,
    required this.l10n,
    required this.cts,
    this.node,
    this.phoneNumberController,
  });

  final AppLocalizations l10n;
  final FocusNode? node;
  final TextEditingController? phoneNumberController;
  final BoxConstraints cts;

  @override
  State<PhoneNumberInput> createState() => _PhoneNumberInputState();
}

class _PhoneNumberInputState extends State<PhoneNumberInput> {
  final GlobalKey<FormState> _phoneNumberFormKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final style = theme.textTheme;


    return BlocBuilder<PhoneAuthBloc,
        PhoneAuthState>(
      builder: (context, state) {
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
              onChanged: (value){
                
              },
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
              initialCountryCode: 'US',
              validator: (value) {
                if (value!.completeNumber.length != 10) {
                  return 'Please enter valid phone number';
                }
                return null;
              },
              autovalidateMode: AutovalidateMode.onUserInteraction,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: ElevatedButton(
                onPressed: () {
                  if (_phoneNumberFormKey.currentState!.validate()) {
                    _sendOtp(
                        phoneNumber: widget.phoneNumberController!.text,
                        context: context);
                  }
                },
                child: const Text('Send OTP'),
              ),
            ),
            SizedBox(
              height: widget.cts.maxHeight * .02,
            )
          ],
        );
      },
    );
  }

  void _sendOtp({required String phoneNumber, required BuildContext context}) {
    context.read<PhoneAuthBloc>().add(
      SendOtpToPhoneEvent(
        phoneNumber: phoneNumber,
      ),
    );
    setState(() {
      widget.phoneNumberController?.clear();
    });
  }
}
