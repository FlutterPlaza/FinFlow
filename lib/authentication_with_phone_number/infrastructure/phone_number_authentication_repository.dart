import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fpb/authentication_with_phone_number/domain/i_phone_number_repository_facade.dart';
import 'package:fpb/core/domain/user.dart';
import 'package:fpb/core/failures/auth_failure.dart';
import 'package:fpb/core/infrastructure/user.dto.dart';
import 'package:injectable/injectable.dart';


@LazySingleton(as: IPhoneNumberRepositoryFacade)
class PhoneNumberAuthRepository implements IPhoneNumberRepositoryFacade {
  final FirebaseAuth _firebaseAuth;
  PhoneNumberAuthRepository(this._firebaseAuth);

  Future<void> sendOtpCode({
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

  @override
  Future<Either<AuthFailure, String>> verifyAndLogin(
      {required String smsCode, required String verificationId}) async {
    try {
      final AuthCredential authCredential = PhoneAuthProvider.credential(
          verificationId: verificationId, smsCode: smsCode);

      final authResult =
          await _firebaseAuth.signInWithCredential(authCredential);

      return right(authResult.user!.phoneNumber!);
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

  @override
  Future<Either<AuthFailure, User>> signUpWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final userCred = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      final user = UserDTO.fromFirebase(userCred.user!).toDomain();
      return right(user);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        return left(const AuthFailure.emailAlreadyInUse());
      } else if (e.code == 'invalid-email') {
        return left(const AuthFailure.invalidEmailAndPasswordCombination());
      } else if (e.code == 'weak-password') {
        return left(const AuthFailure.weakPassword());
      } else if (e.code == 'operation-not-allowed') {
        return left(const AuthFailure.operationNotAllowed());
      } else if (e.code == 'user-disabled') {
        return left(const AuthFailure.userDisable());
      }
      return left(const AuthFailure.unexpected());
    } catch (e) {
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

}
