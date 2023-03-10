import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:injectable/injectable.dart';

@module
abstract class FacebookAuthenticationInjectableModule {
  @lazySingleton
  FacebookAuth get facebookAuth => FacebookAuth.instance;
}
