import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpb/authentication_with_phone_number/phone_number_bloc/phone_number_bloc.dart';
import 'package:fpb/core/presentation/widget/otp_input.dart';

class OtpGroupTextField extends StatelessWidget {
  const OtpGroupTextField({
    super.key,
    required this.box,
  });

  final BoxConstraints box;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PhoneNumberBloc, PhoneNumberState>(
      builder: (context, state) {
        int otpCodeLength = state.otpCode.value.length;
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Wrap(
              children: [
                for(int i = 0; i < 6; i++)
                  OtpInput(
                    enabled: i <= otpCodeLength,
                    box: box,
                    onChanged: (String value) {
                      List<String> otpCode = state.otpCode.value.split('');
                      if(i <= otpCodeLength){
                        otpCode[i] = value;
                      }else{
                        otpCode.add(value);
                      }
                      final String newOtpCode = otpCode.join('');
                      context.read<PhoneNumberBloc>().add(PhoneNumberEvent.otpChanged(newOtpCode));
                      print('New Otp Code: $newOtpCode');
                    },
                  ),
              ],
            ),
          ],
        );
      },
    );
  }
}
