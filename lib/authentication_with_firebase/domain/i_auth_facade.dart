import 'package:dartz/dartz.dart';
import 'package:fpb/core/failures/auth_failure.dart';
import 'package:fpb/core/domain/user.dart';

abstract class IAuthFacade {
  Future<bool> hasRegisteredBefore();
  Future<Either<AuthFailure, User>> getSignedInUser();
  Future<Either<AuthFailure, User>> signInWithEmailAndPassword({
    required String email,
    required String password,
  });
  Future<Either<AuthFailure, User>> signUpWithEmailAndPassword({
    required String email,
    required String password,
  });

  // Future<Option<User>> getSignedInInfo();
  Future<Either<AuthFailure, Unit>> signOut();
  Future<String> userProvider();

  /// Returns the current cached user.
  /// Defaults to [User.empty] if there is no cached user.
  User get currentUser;

  Stream<User> get user;
}
