import 'package:dartz/dartz.dart';
import 'package:fpb/core/domain/user.dart';
import 'package:fpb/core/failures/auth_failure.dart';

abstract class IFacebookRepositoryFacade {
  Future<Either<AuthFailure, User>> signInWithFacebook();
  Future<Either<AuthFailure, Unit>> signOut();
}
