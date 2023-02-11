import 'package:authentication_repository/authentication_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:user_repository/user_repository.dart';

@module
abstract class AuthenticationMockModuleInjection {
  @singleton
  AuthenticationRepository get authenticationRepository =>
      AuthenticationRepository();
  @singleton
  UserRepository get userRepository => UserRepository();
}
