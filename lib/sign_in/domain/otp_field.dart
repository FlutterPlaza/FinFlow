import 'package:formz/formz.dart';

enum OtpFieldValidationError { invalid }

class OtpField extends FormzInput<String, OtpFieldValidationError> {
  const OtpField.pure() : super.pure('');
  const OtpField.dirty([super.value = '']) : super.dirty();

  static final _phoneNumberRegExp =
  RegExp(r'^[0-9]{1,6}$');

  @override
  OtpFieldValidationError? validator(String? value) {
    return _phoneNumberRegExp.hasMatch(value ?? '') ? null : OtpFieldValidationError.invalid;
  }
}
