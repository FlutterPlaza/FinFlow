import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:flutter/services.dart';
import 'package:fpb/authentication_with_twitter/domain/i_twitter_repository_facade.dart';
import 'package:fpb/core/domain/user.dart';
import 'package:fpb/core/failures/auth_failure.dart';
import 'package:fpb/core/infrastructure/user.dto.dart';
import 'package:injectable/injectable.dart';
import 'package:twitter_login/twitter_login.dart';

@LazySingleton(as: ITwitterRepositoryFacade)
class TwitterAuthenticationRepository implements ITwitterRepositoryFacade {
  final FirebaseAuth _firebaseAuth;

  TwitterAuthenticationRepository(this._firebaseAuth);

  @override
  Future<Either<AuthFailure, User>> signInWithTwitter() async {
    try {
      // Create a TwitterLogin instance
      final twitterLogin = new TwitterLogin(
          apiKey: '<your consumer key>',
          apiSecretKey: ' <your consumer secret>',
          redirectURI: '<your_scheme>://');

      // Trigger the sign-in flow
      final authResult = await twitterLogin.login();

      // Create a credential from the access token
      final twitterAuthCredential = TwitterAuthProvider.credential(
        accessToken: authResult.authToken!,
        secret: authResult.authTokenSecret!,
      );

      final userCredential =
          await _firebaseAuth.signInWithCredential(twitterAuthCredential);

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
        // _facebookAuth.logOut(),
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
