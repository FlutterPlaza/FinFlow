import 'package:bloc/bloc.dart';
import 'package:flutter/services.dart';
import 'package:fpb/authenticate_with_biometrics/helpers/biometric_auth_value.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:local_auth/local_auth.dart';

part 'biometric_auth_event.dart';
part 'biometric_auth_state.dart';
part 'biometric_auth_bloc.freezed.dart';

class BiometricAuthBloc extends Bloc<BiometricAuthEvent, BiometricAuthState> {
  BiometricAuthBloc({
    required LocalAuthentication authenticationRepository,
  })  : _authenticationRepository = authenticationRepository,
        super(BiometricAuthState()) {
    on<_CheckSupport>(_checkSupport);
    on<_Authenticate>(_authenticate);
    on<_CancelAuthentication>(_cancelAuthentication);
  }

  final LocalAuthentication _authenticationRepository;

  void _checkSupport(
      _CheckSupport event, Emitter<BiometricAuthState> emit) async {
    late bool canCheckBiometrics;
    late bool isSupportedDevice;
    try {
      isSupportedDevice = await _authenticationRepository.isDeviceSupported();
      canCheckBiometrics = await _authenticationRepository.canCheckBiometrics;
    } on PlatformException {
      canCheckBiometrics = false;
      isSupportedDevice = false;
    }
    final newState = state.copyWith(
        canAuthenticate: (canCheckBiometrics && isSupportedDevice));

    emit(newState);
  }

  void _cancelAuthentication(
      _CancelAuthentication event, Emitter<BiometricAuthState> emit) async {
    try {
      await _authenticationRepository.stopAuthentication();
      emit(state.copyWith(value: BiometricAuthValue.unAuthenticated()));
    } catch (e) {}
  }

  void _authenticate(
      _Authenticate event, Emitter<BiometricAuthState> emit) async {
    emit(state.copyWith(value: BiometricAuthValue.authenticating()));
    final isAuthenticated = await _authenticateWithBiometrics();
    final newState = state.copyWith(
      value: isAuthenticated
          ? BiometricAuthValue.authenticated()
          : BiometricAuthValue.unAuthenticated(),
    );

    emit(newState);
  }

  Future<bool> _authenticateWithBiometrics() async {
    bool authenticated = false;
    try {
      authenticated = await _authenticationRepository.authenticate(
        localizedReason:
            'Scan your fingerprint (or face or whatever) to authenticate',
        options: const AuthenticationOptions(
          stickyAuth: true,
          biometricOnly: true,
        ),
      );
    } on PlatformException {
      return false;
    }
    return authenticated;
  }
}
