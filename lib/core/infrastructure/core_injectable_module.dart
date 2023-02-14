import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:injectable/injectable.dart';
import 'package:ntp/ntp.dart';

@module
abstract class CoreInjectableModule {
  @lazySingleton
  Connectivity get connectivityPlus => Connectivity();
  @lazySingleton
  NTP get ntp => NTP();
}
