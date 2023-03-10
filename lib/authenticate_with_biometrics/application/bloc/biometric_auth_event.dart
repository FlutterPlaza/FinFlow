part of 'biometric_auth_bloc.dart';

@freezed
class BiometricAuthEvent with _$BiometricAuthEvent {
  const factory BiometricAuthEvent.checkSupport() = _CheckSupport;
  const factory BiometricAuthEvent.authenticate() = _Authenticate;
  const factory BiometricAuthEvent.cancelAuthentication() =
      _CancelAuthentication;
}
