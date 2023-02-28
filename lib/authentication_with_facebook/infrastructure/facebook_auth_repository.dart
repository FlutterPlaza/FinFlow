import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:flutter/services.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:fpb/authentication_with_facebook/domain/i_facebook_repository_facade.dart';
import 'package:fpb/core/domain/user.dart';
import 'package:fpb/core/failures/auth_failure.dart';
import 'package:fpb/core/infrastructure/user.dto.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IFacebookRepositoryFacade)
class FacebookAuthenticationRepository implements IFacebookRepositoryFacade {
  final FacebookAuth _facebookAuth;
  final FirebaseAuth _firebaseAuth;

  FacebookAuthenticationRepository(this._facebookAuth, this._firebaseAuth);

  @override
  Future<Either<AuthFailure, User>> signInWithFacebook() async {
    try {
      // Trigger the sign-in flow
      final LoginResult loginResult = await FacebookAuth.instance.login();

      // Create a credential from the access token
      final OAuthCredential facebookAuthCredential =
          FacebookAuthProvider.credential(loginResult.accessToken!.token);

      final userCredential =
          await _firebaseAuth.signInWithCredential(facebookAuthCredential);

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
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signOut() async {
    try {
      await Future.wait([
        _firebaseAuth.signOut(),
        _facebookAuth.logOut(),
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
