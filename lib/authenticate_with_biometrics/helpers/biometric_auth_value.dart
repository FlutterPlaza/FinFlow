import 'package:freezed_annotation/freezed_annotation.dart';

part 'biometric_auth_value.freezed.dart';

@freezed
class BiometricAuthValue with _$BiometricAuthValue {
  const factory BiometricAuthValue.initial() = _Initial;
  const factory BiometricAuthValue.authenticated() = _Authenticated;
  const factory BiometricAuthValue.unAuthenticated() = _UnAuthenticated;
  const factory BiometricAuthValue.authenticating() = _Authenticating;
}
