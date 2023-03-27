import 'package:formz/formz.dart';

enum NameValidationError { invalid }

class Name extends FormzInput<String, NameValidationError> {
  const Name.pure() : super.pure('');
  const Name.dirty([super.value = '']) : super.dirty();

  static final _nameRegExp = RegExp(r'(\w|\d|\s|.){7,29}');

  String? get validMsg => valid
      ? null
      : "Should start with a character and between 7 to 29 character";

  @override
  NameValidationError? validator(String? value) {
    return _nameRegExp.hasMatch(value ?? '')
        ? null
        : NameValidationError.invalid;
  }
}
