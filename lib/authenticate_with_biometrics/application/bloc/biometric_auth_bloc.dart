import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flutter/services.dart';
import 'package:fpb/authenticate_with_biometrics/helpers/biometric_auth_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:local_auth/local_auth.dart';
import 'package:local_auth/error_codes.dart' as auth_error;

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
      emit(state.copyWith(status: BiometricAuthStatus.unAuthenticated()));
    } on PlatformException catch (e) {
      emit(state.copyWith(
          status: BiometricAuthStatus.authenticationError(errorCode: e.code)));
      return;
    } on Exception catch (_) {
      emit(state.copyWith(
          status: BiometricAuthStatus.authenticationError(
              errorCode: auth_error.notAvailable)));
      return;
    }
  }

  void _authenticate(
      _Authenticate event, Emitter<BiometricAuthState> emit) async {
    emit(state.copyWith(status: BiometricAuthStatus.authenticating()));
    try {
      final isAuthenticated = await _authenticateWithBiometrics();
      final newState = state.copyWith(
        status: isAuthenticated
            ? BiometricAuthStatus.authenticated()
            : BiometricAuthStatus.unAuthenticated(),
      );
      emit(newState);
    } on PlatformException catch (e) {
      emit(state.copyWith(
          status: BiometricAuthStatus.authenticationError(errorCode: e.code)));
      return;
    } on Exception catch (_) {
      emit(state.copyWith(
          status: BiometricAuthStatus.authenticationError(
              errorCode: auth_error.notAvailable)));
      return;
    }
  }

  Future<bool> _authenticateWithBiometrics() async {
    bool authenticated = false;
    final reason = Platform.isIOS
        ? 'Use touch ID or face ID to authenticate'
        : 'Scan your fingerprint or face to authenticate';
    authenticated = await _authenticationRepository.authenticate(
      localizedReason: reason,
      options: const AuthenticationOptions(
        stickyAuth: true,
        biometricOnly: true,
      ),
    );
    return authenticated;
  }
}
