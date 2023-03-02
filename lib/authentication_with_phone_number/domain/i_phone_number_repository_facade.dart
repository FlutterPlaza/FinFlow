import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fpb/core/failures/auth_failure.dart';

abstract class IPhoneRepositoryFacade {
  Future<Either<AuthFailure, bool>> verifyAndLogin({
    String smsCode,
  });

  Future<Either<AuthFailure, Unit>> verifyOTPCode({
    required String phoneNumber,
    required Duration timeOut,
  });

  Future<Either<AuthFailure, Unit>> signOut();

  Future<void> verifyPhone({
    required String phoneNumber,
    required void Function(PhoneAuthCredential) verificationCompleted,
    required void Function(FirebaseAuthException) verificationFailed,
    required void Function(String, int?) codeSent,
    required void Function(String) codeAutoRetrievalTimeout,
  });
}
