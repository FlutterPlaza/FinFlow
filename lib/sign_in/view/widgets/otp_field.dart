import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpb/authentication_with_phone_number/authentication_with_phone_number_bloc/phone_number_authentication_bloc.dart';

class OtpWidget extends StatelessWidget {
  OtpWidget(
      {Key? key, required this.otpCodeController, required this.verificationId})
      : super(key: key);
  final TextEditingController otpCodeController;
  final String verificationId;
  final GlobalKey<FormState> _otpFormKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          keyboardType: TextInputType.number,
          controller: otpCodeController,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'Enter OTP',
            prefixIcon: Icon(Icons.message),
          ),
          validator: (value) {
            if (value!.length != 6) {
              return 'Please enter valid OTP';
            }
            return null;
          },
          autovalidateMode: AutovalidateMode.onUserInteraction,
        ),
        const SizedBox(
          height: 30,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.8,
          child: ElevatedButton(
            onPressed: () {
              if (_otpFormKey.currentState!.validate()) {
                _verifyOtp(context: context);
              }
            },
            child: const Text('Verify OTP'),
          ),
        ),
      ],
    );
  }

  void _verifyOtp({required BuildContext context}) {
    context.read<PhoneAuthBloc>().add(VerifySentOtpEvent(
        otpCode: otpCodeController.text, verificationId: verificationId));
    otpCodeController.clear();
  }
}