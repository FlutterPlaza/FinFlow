import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:fpb/authentication_with_firebase/domain/auth_failure.dart';
import 'package:fpb/authentication_with_firebase/domain/i_auth_facade.dart';
import 'package:fpb/authentication_with_firebase/domain/user.dart';
import 'package:fpb/authentication_with_firebase/infrastructure/user.dto.dart';
import 'package:fpb/core/settings/cached.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IAuthFacade)
class FirebaseAuthFacade implements IAuthFacade {
  FirebaseAuthFacade(this._firebaseAuth, this._cached);

  final FirebaseAuth _firebaseAuth;
  final Cached _cached;

  @override
  Future<Either<AuthFailure, User>> getSignedInUser() {
    throw UnimplementedError();
  }

  @override
  Future<bool> hasRegisteredBefore() {
    throw UnimplementedError();
  }

  @override
  Future<Either<AuthFailure, User>> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final userCred = await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      final user = UserDTO.fromFirebase(userCred.user!).toDomain();
      return right(user);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        return left(const AuthFailure.userNotFound());
      } else if (e.code == 'wrong-password') {
        return left(const AuthFailure.invalidEmailAndPasswordCombination());
      } else if (e.code == 'invalid-email') {
        return left(const AuthFailure.invalidEmailAndPasswordCombination());
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
      await _firebaseAuth.signOut();
      _cached.user = User.empty;
      return right(unit);
    } catch (e) {
      return left(const AuthFailure.logoutFailed());
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
  Future<String> userProvider() {
    throw UnimplementedError();
  }

  /// Returns the current cached user.
  /// Defaults to [User.empty] if there is no cached user.
  @override
  User get currentUser {
    return _cached.user;
  }

  /// Stream of [User] which will emit the current user when
  /// the authentication state changes.
  ///
  /// Emits [User.empty] if the user is not authenticated.
  @override
  Stream<User> get user {
    return _firebaseAuth.authStateChanges().map((firebaseUser) {
      final user = firebaseUser == null
          ? User.empty
          : UserDTO.fromFirebase(firebaseUser).toDomain();
      _cached.user = user;
      return user;
    });
  }
}
