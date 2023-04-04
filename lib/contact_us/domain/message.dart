import 'package:formz/formz.dart';

enum MessageValidationError { invalid }

class Message extends FormzInput<String, MessageValidationError> {
  const Message.pure() : super.pure('');
  const Message.dirty([super.value = '']) : super.dirty();

  static final _messageRegExp = RegExp(r'(\w|\d|\s|.){30,500}');

  String? get validMsg => valid
      ? null
      : "Should start with a character and between 30 to 500 character";

  @override
  MessageValidationError? validator(String? value) {
    return _messageRegExp.hasMatch(value ?? '')
        ? null
        : MessageValidationError.invalid;
  }
}
