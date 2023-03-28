import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_us_failure.freezed.dart';

@freezed
abstract class ContactUsFailure with _$ContactUsFailure implements Exception {
  const factory ContactUsFailure.invalidEmail(
          {@Default('Email is not valid or badly formatted.') String message}) =
      InvalidEmail;
  const factory ContactUsFailure.inValidMessage(
      {@Default('Message is not valid or badly formatted.')
          String message}) = InvalidMessage;
  const factory ContactUsFailure.operationNotAllowed(
      {@Default('Operation is not allowed.  Please contact support.')
          String message}) = OperationNotAllowed;
  const factory ContactUsFailure.emailNotFound(
      {@Default('Email is not found, please enter a correct email.')
          String message}) = EmailNotFound;
  const factory ContactUsFailure.unexpected(
      {@Default('Something went wrong, please try again.')
          String message}) = _Unexpected;
  const factory ContactUsFailure.serverError(
          {@Default('An unknown exception occurred.') String message}) =
      _ServerError;
  const factory ContactUsFailure.withMessage(
          {@Default('Something went wrong, please try again') String message}) =
      _WithMessage;
  const factory ContactUsFailure.someFieldsAreRequired(
          {@Default('Please fill the required fields') String message}) =
      _RequiredFields;
  factory ContactUsFailure.fromErrorMessage(String message) {
    switch (message) {
      case 'invalid-email':
        return ContactUsFailure.invalidEmail();
      case 'invalid-message':
        return ContactUsFailure.inValidMessage();
      case 'operation-not-allowed':
        return ContactUsFailure.operationNotAllowed();
      case 'email-not-found':
        return ContactUsFailure.emailNotFound();
      case 'server-exception':
        return ContactUsFailure.serverError();
      case 'required-fields':
        return ContactUsFailure.someFieldsAreRequired();
      default:
        return ContactUsFailure.unexpected();
    }
  }
}
