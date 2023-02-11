import 'package:dartz/dartz.dart';
import 'package:fpb/core/failures/auth_failure.dart';
import 'package:fpb/core/domain/user.dart';

abstract class IGoogleRepositoryFacade {
  Future<Either<AuthFailure, User>> signInWithGoogle();
  Future<Either<AuthFailure, Unit>> signOut();
}
