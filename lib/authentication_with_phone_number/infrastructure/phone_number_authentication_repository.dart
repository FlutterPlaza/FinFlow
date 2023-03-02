import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fpb/authentication_with_phone_number/domain/i_phone_number_repository_facade.dart';
import 'package:fpb/core/failures/auth_failure.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IPhoneRepositoryFacade)
class PhoneAuthRepository implements IPhoneRepositoryFacade {

  final FirebaseAuth _firebaseAuth;

  PhoneAuthRepository(this._firebaseAuth);
  String verificationId = '';

  @override
  Future<Either<AuthFailure, bool>> verifyAndLogin({String? smsCode,}) async {
    try {
      final AuthCredential authCredential =
      PhoneAuthProvider.credential(verificationId: verificationId, smsCode: smsCode!);

      final  authResult = await _firebaseAuth.signInWithCredential(authCredential);

      return right(authResult.additionalUserInfo!.isNewUser);

    } on PlatformException catch (e) {
      debugPrint("Error occurred: code: ${e.code} , message: ${e.message}");
      if (e.code == 'ERROR_INVALID_CREDENTIAL') {
        return left(const AuthFailure.invalidCredential());
      } else if (e.code == 'ERROR_USER_DISABLED') {
        return left(const AuthFailure.userDisable());
      } else if (e.code == 'ERROR_ACCOUNT_EXISTS_WITH_DIFFERENT_CREDENTIAL') {
        return left(const AuthFailure.accountExitWithDifferentCred());
      } else if (e.code == 'ERROR_OPERATION_NOT_ALLOWED') {
        return left(const AuthFailure.operationNotAllowed());
      } else if (e.code == 'ERROR_INVALID_VERIFICATION_CODE') {
        return left(const AuthFailure.invalidVerificationCode());
      } else if (e.code == 'ERROR_INVALID_ACTION_CODE') {
        return left(const AuthFailure.invalidVerificationCode());
      } else {
        debugPrint("Error occurred: code: ${e.code} , message: ${e.message}");
        return left(const AuthFailure.serverError());
      }
    }
  }


  Future<Either<AuthFailure, Unit>> verifyOTPCode({
    required String phoneNumber,
    required Duration timeOut,
  }) async {
    try {
      _firebaseAuth.verifyPhoneNumber(
          phoneNumber: phoneNumber,
          timeout: timeOut,
          verificationCompleted: _phoneVerificationCompleted,
          verificationFailed: _phoneVerificationFailed,
          codeSent: _phoneCodeSent,
          codeAutoRetrievalTimeout: autoRetrievalTimeout,
      );
      return right(unit);

    } on PlatformException catch (e) {
      if (e.code == "ERROR_INVALID_VERIFICATION_CODE") {
        return left(const AuthFailure.invalidVerificationCode());
      } else if (e.code == 'ERROR_INVALID_CREDENTIAL') {
        return left(const AuthFailure.invalidCredential());
      } else if (e.code == 'ERROR_USER_DISABLED') {
        return left(const AuthFailure.userDisable());
      } else if (e.code == 'ERROR_ACCOUNT_EXISTS_WITH_DIFFERENT_CREDENTIAL') {
        return left(const AuthFailure.accountExitWithDifferentCred());
      } else if (e.code == 'ERROR_OPERATION_NOT_ALLOWED') {
        return left(const AuthFailure.operationNotAllowed());
      } else if (e.code == 'ERROR_INVALID_ACTION_CODE') {
        /// TODO: change to invalid action
        return left(const AuthFailure.invalidCredential());
      }
      debugPrint("ERROR: auth failure, message: $e");
      return left(const AuthFailure.serverError());
    }
  }


  @override
  Future<Either<AuthFailure, Unit>> signOut() async {
    try {
      await Future.wait([
        _firebaseAuth.signOut(),
      ]);
      return right(unit);
    } on SocketException catch (e) {
      return left(AuthFailure.fromErrorMessage(e.message));
    } on PlatformException catch (e) {
      return left(AuthFailure.fromErrorMessage(e.code));
    } on FirebaseAuthException catch (e) {
      return left(AuthFailure.fromErrorMessage(e.code));
    } on FirebaseException catch (e) {
      return left(AuthFailure.fromErrorMessage(e.code));
    }
  }

 void _phoneCodeSent(String verificationID, int? codeSentId) {
    verificationId = verificationID;
 }

  void _phoneVerificationCompleted(PhoneAuthCredential phoneAuthCredential) {}

  void _phoneVerificationFailed(FirebaseAuthException firebaseAuthException) {}

  void autoRetrievalTimeout(String retrievalId) {}

  Future<void> verifyPhone({
    required String phoneNumber,
    required void Function(PhoneAuthCredential) verificationCompleted,
    required void Function(FirebaseAuthException) verificationFailed,
    required void Function(String, int?) codeSent,
    required void Function(String) codeAutoRetrievalTimeout,
  }) async {
    await _firebaseAuth.verifyPhoneNumber(
      phoneNumber: phoneNumber,
      verificationCompleted: verificationCompleted,
      verificationFailed: verificationFailed,
      codeSent: codeSent,
      codeAutoRetrievalTimeout: codeAutoRetrievalTimeout,
    );
  }
}
