import 'package:freezed_annotation/freezed_annotation.dart';
part 'auth_failure.freezed.dart';

@freezed
abstract class AuthFailure with _$AuthFailure {
  const factory AuthFailure.invalidEmail() = InvalidEmail;
  const factory AuthFailure.userDisable() = UserDisabled;
  const factory AuthFailure.emailAlreadyInUse() = EmailAlreadyInUse;
  const factory AuthFailure.operationNotAllowed() = OperationNotAllowed;
  const factory AuthFailure.weakPassword() = WeakPassword;
  const factory AuthFailure.userNotFound() = UserNotFound;
  const factory AuthFailure.invalidEmailAndPasswordCombination() =
      WrongPassword;
  const factory AuthFailure.unexpected() = _Unexpected;
  const factory AuthFailure.serverError() = _ServerError;
  const factory AuthFailure.logoutFailed() = LogoutFailed;
}
