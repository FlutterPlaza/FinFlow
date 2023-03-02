import 'package:formz/formz.dart';

enum PhoneNumberValidationError { invalid }

class PhoneNumber extends FormzInput<String, PhoneNumberValidationError> {
  const PhoneNumber.pure() : super.pure('');
  const PhoneNumber.dirty([super.value = '']) : super.dirty();

  static final _phoneNumberRegExp =
  RegExp(r'(^(?:[+0]9)?[0-9]{10,12}$)');

  @override
  PhoneNumberValidationError? validator(String? value) {
    return _phoneNumberRegExp.hasMatch(value ?? '') ? null : PhoneNumberValidationError.invalid;
  }
}
