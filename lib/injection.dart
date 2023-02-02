import 'package:fpb/injection.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final GetIt getIt = GetIt.instance;

@injectableInit
void configureInjection(String env) => getIt.init(environment: env);

abstract class Env {
  static const development = 'development';
  static const production = 'production';
  static const staging = 'staging';
}
