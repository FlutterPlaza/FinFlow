import 'package:dartz/dartz.dart';
import 'package:fpb/core/failures/auth_failure.dart';

abstract class IForgotPasswordRepositoryFacade {
  Future<void> authenticate(String email, String password, String urlSegment);
  Future<Either<AuthFailure, Unit>> changePassword(String newPassword);
}
