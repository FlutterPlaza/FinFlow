part of 'biometric_auth_bloc.dart';

@freezed
class BiometricAuthState with _$BiometricAuthState {
  const BiometricAuthState._();
  const factory BiometricAuthState({
    @Default(false) bool canAuthenticate,
    @Default(BiometricAuthStatus.initial()) BiometricAuthStatus status,
  }) = _BiometricAuthState;
}
