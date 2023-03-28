import 'package:dartz/dartz.dart';
import 'package:fpb/core/failures/contact_us_failure.dart';

abstract class IContactUsRepositoryFacade {
  Future<Either<ContactUsFailure, Unit>> sendMessage({
    required String name,
    required String email,
    required String message,
  });
}
