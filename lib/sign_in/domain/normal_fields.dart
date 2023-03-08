import 'package:formz/formz.dart';

enum NormalValidationError { invalid }

class NormalString extends FormzInput<String, NormalValidationError> {
  const NormalString.pure() : super.pure('');
  const NormalString.dirty([super.value = '']) : super.dirty();

  static final _passwordRegExp =
  RegExp(r'^[A-Z][a-z]*');

  @override
  NormalValidationError? validator(String? value) {
    return _passwordRegExp.hasMatch(value ?? '')
        ? null
        : NormalValidationError.invalid;
  }
}
