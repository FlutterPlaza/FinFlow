import 'package:dartz/dartz.dart';
import 'package:fpb/contact_us/domain/i_contact_us_repository_facade.dart';
import 'package:fpb/core/failures/contact_us_failure.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IContactUsRepositoryFacade)
class ContactUsRepository implements IContactUsRepositoryFacade {
  @override
  Future<Either<ContactUsFailure, Unit>> sendMessage({
    required String name,
    required String email,
    required String message,
  }) {
    // TODO: implement sendMessage
    throw UnimplementedError();
  }
}
