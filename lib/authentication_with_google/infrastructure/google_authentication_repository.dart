import 'dart:developer';
import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:flutter/services.dart';
import 'package:fpb/authentication_with_google/domain/i_google_repository_facade.dart';
import 'package:fpb/core/failures/auth_failure.dart';
import 'package:fpb/core/domain/user.dart';
import 'package:fpb/core/infrastructure/user.dto.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IGoogleRepositoryFacade)
class GoogleAuthenticationRepository implements IGoogleRepositoryFacade {
  final GoogleSignIn _googleSignIn;
  final FirebaseAuth _firebaseAuth;

  GoogleAuthenticationRepository(this._googleSignIn, this._firebaseAuth);

  @override
  Future<Either<AuthFailure, User>> signInWithGoogle() async {
    try {
      var signInAccount = _googleSignIn.currentUser;
      if (signInAccount == null) {
        signInAccount = await _googleSignIn.signIn();
      }
      if (signInAccount == null) {
        return left(const AuthFailure.cancelledByUser());
      }

      final googleAuth = await signInAccount.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      final userCredential =
          await _firebaseAuth.signInWithCredential(credential);

      final user = userCredential.user;
      if (user == null) {
        return left(const AuthFailure.userNotFound());
      }
      return right(UserDTO.fromFirebase(user).toDomain());
    } on SocketException catch (e) {
      return left(AuthFailure.fromErrorMessage(e.message));
    } on PlatformException catch (e) {
      return left(AuthFailure.fromErrorMessage(e.code));
    } on FirebaseAuthException catch (e) {
      return left(AuthFailure.fromErrorMessage(e.code));
    } on FirebaseException catch (e) {
      return left(AuthFailure.fromErrorMessage(e.code));
    } catch (e) {
      log(e.toString());
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signOut() async {
    try {
      await Future.wait([
        _firebaseAuth.signOut(),
        _googleSignIn.signOut(),
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
