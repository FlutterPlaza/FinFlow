import 'package:dartz/dartz.dart';
import 'package:fpb/core/domain/user.dart';
import 'package:fpb/core/failures/auth_failure.dart';

abstract class ITwitterRepositoryFacade {
  Future<Either<AuthFailure, User>> signInWithTwitter();
  Future<Either<AuthFailure, Unit>> signOut();
}
