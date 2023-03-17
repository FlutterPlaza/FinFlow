import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:fpb/core/domain/user.dart';
import 'package:fpb/core/failures/auth_failure.dart';

abstract class IPhoneNumberRepositoryFacade {

  Future<void> sendOtpCode({
    required String phoneNumber,
    required void Function(PhoneAuthCredential) verificationCompleted,
    required void Function(FirebaseAuthException) verificationFailed,
    required void Function(String, int?) codeSent,
    required void Function(String) codeAutoRetrievalTimeout,
  });

  Future<Either<AuthFailure, String>> verifyAndLogin({
    required String smsCode, required String verificationId,
  });

  Future<Either<AuthFailure, User>> signUpWithEmailAndPassword({required String email, required String password});

  Future<Either<AuthFailure, Unit>> signOut();

}
