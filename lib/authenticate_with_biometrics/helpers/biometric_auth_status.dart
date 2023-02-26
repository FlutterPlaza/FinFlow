import 'package:freezed_annotation/freezed_annotation.dart';

part 'biometric_auth_status.freezed.dart';

@freezed
class BiometricAuthStatus with _$BiometricAuthStatus {
  const factory BiometricAuthStatus.initial() = _Initial;
  const factory BiometricAuthStatus.authenticated() = _Authenticated;
  const factory BiometricAuthStatus.unAuthenticated() = _UnAuthenticated;

  /// There are 6 types of error Codes: PasscodeNotSet, NotEnrolled, NotAvailable, OtherOperatingSystem, LockedOut and PermanentlyLockedOut. They are wrapped in LocalAuthenticationError class.
  const factory BiometricAuthStatus.authenticationError(
      {required String errorCode}) = _AuthenticationError;
  const factory BiometricAuthStatus.authenticating() = _Authenticating;
}
