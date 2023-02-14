import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:fpb/core/settings/cached.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class AppSettingsHelper {
  final Cached appCache;

  final Connectivity connectivity;

  AppSettingsHelper(this.appCache, this.connectivity);
}
