import 'package:freezed_annotation/freezed_annotation.dart';
part 'auth_failure.freezed.dart';

@freezed
abstract class AuthFailure with _$AuthFailure implements Exception {
  const factory AuthFailure.invalidEmail(
          {@Default('Email is not valid or badly formatted.') String message}) =
      InvalidEmail;
  const factory AuthFailure.userDisable(
      {@Default('This user has been disabled. Please contact support for help.')
          String message}) = UserDisabled;
  const factory AuthFailure.emailAlreadyInUse(
      {@Default('An account already exists for that email.')
          String message}) = EmailAlreadyInUse;
  const factory AuthFailure.operationNotAllowed(
      {@Default('Operation is not allowed.  Please contact support.')
          String message}) = OperationNotAllowed;
  const factory AuthFailure.weakPassword(
          {@Default('Please enter a stronger password.') String message}) =
      WeakPassword;
  const factory AuthFailure.userNotFound(
      {@Default('Email is not found, please create an account.')
          String message}) = UserNotFound;
  const factory AuthFailure.invalidEmailAndPasswordCombination(
      {@Default('Incorrect email or password, please try again.')
          String message}) = WrongPassword;
  const factory AuthFailure.unexpected(
      {@Default('Something went wrong, please try again.')
          String message}) = _Unexpected;
  const factory AuthFailure.serverError(
          {@Default('An unknown exception occurred.') String message}) =
      _ServerError;
  const factory AuthFailure.logoutFailed(
      {@Default('Operation is not allowed.  Please contact support.')
          String message}) = LogoutFailed;
  const factory AuthFailure.cancelledByUser(
          {@Default('Authentication cancelled by user.') String message}) =
      CancelledByUser;
  const factory AuthFailure.accountExitWithDifferentCred(
      {@Default('Account already exists with different credential.')
          String message}) = AccountExitWithDifferentCred;
  const factory AuthFailure.invalidCredential(
      {@Default('The credential received is malformed or has expired.')
          String message}) = InvalidCredential;
  const factory AuthFailure.invalidVerificationCode(
      {@Default('The SMS verification code used to create the phone auth credential is invalid.')
          String message}) = InvalidVerificationCode;
  const factory AuthFailure.invalidVerificationId(
      {@Default('The verification ID used to create the phone auth credential is invalid.')
          String message}) = InvalidVerificationId;
  factory AuthFailure.fromErrorMessage(String message) {
    switch (message) {
      case 'invalid-email':
        return AuthFailure.invalidEmail();
      case 'user-disabled':
        return AuthFailure.userDisable();
      case 'email-already-in-use':
        return AuthFailure.emailAlreadyInUse();
      case 'operation-not-allowed':
        return AuthFailure.operationNotAllowed();
      case 'weak-password':
        return AuthFailure.weakPassword();
      case 'user-not-found':
        return AuthFailure.userNotFound();
      case 'wrong-password':
        return AuthFailure.invalidEmailAndPasswordCombination();
      case 'logout-failed':
        return AuthFailure.logoutFailed();
      case 'cancelled-by-user':
        return AuthFailure.cancelledByUser();
      case 'account-exists-with-different-credential':
        return AuthFailure.accountExitWithDifferentCred();
      case 'invalid-credential':
        return AuthFailure.invalidCredential();
      case 'invalid-verification-code':
        return AuthFailure.invalidVerificationCode();
      case 'invalid-verification-id':
        return AuthFailure.invalidVerificationId();
      default:
        return AuthFailure.unexpected();
    }
  }
}
