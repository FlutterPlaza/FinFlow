// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:authentication_repository/authentication_repository.dart'
    as _i3;
import 'package:cloud_firestore/cloud_firestore.dart' as _i7;
import 'package:connectivity_plus/connectivity_plus.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i6;
import 'package:firebase_core/firebase_core.dart' as _i5;
import 'package:fpb/authentication_mock_without_backend/application/bloc/authentication_bloc.dart'
    as _i14;
import 'package:fpb/authentication_mock_without_backend/infrastructure/authentication_mock_module_injection.dart'
    as _i25;
import 'package:fpb/authentication_with_firebase/application/bloc/auth_bloc.dart'
    as _i20;
import 'package:fpb/authentication_with_firebase/domain/i_auth_facade.dart'
    as _i17;
import 'package:fpb/authentication_with_firebase/infrastructure/firebase_auth_injectable_module.dart'
    as _i27;
import 'package:fpb/authentication_with_firebase/infrastructure/firebase_auth_facade_impl.dart'
    as _i18;
import 'package:fpb/authentication_with_google/application/google_auth_bloc/google_sign_in_bloc.dart'
    as _i16;
import 'package:fpb/authentication_with_google/domain/i_google_repository_facade.dart'
    as _i9;
import 'package:fpb/authentication_with_google/infrastructure/google_authentication_injectable_module.dart'
    as _i26;
import 'package:fpb/authentication_with_google/infrastructure/google_authentication_repository.dart'
    as _i10;
import 'package:fpb/core/application/email_password_bloc/email_password_bloc.dart'
    as _i21;
import 'package:fpb/core/application/internet_and_time_bloc/internet_and_time_bloc.dart'
    as _i23;
import 'package:fpb/core/infrastructure/core_injectable_module.dart' as _i24;
import 'package:fpb/core/settings/app_settings_helper.dart' as _i19;
import 'package:fpb/core/settings/cached.dart' as _i15;
import 'package:fpb/home/application/home_view_bloc/home_view_bloc.dart'
    as _i22;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i8;
import 'package:injectable/injectable.dart' as _i2;
import 'package:ntp/ntp.dart' as _i11;
import 'package:shared_preferences/shared_preferences.dart' as _i12;
import 'package:user_repository/user_repository.dart' as _i13;

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
extension GetItInjectableX on _i1.GetIt {
  /// initializes the registration of main-scope dependencies inside of [GetIt]
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final authenticationMockModuleInjection =
        _$AuthenticationMockModuleInjection();
    final coreInjectableModule = _$CoreInjectableModule();
    final firebaseAuthInjectableModule = _$FirebaseAuthInjectableModule();
    final googleAuthenticationInjectableModule =
        _$GoogleAuthenticationInjectableModule();
    gh.singleton<_i3.AuthenticationRepository>(
        authenticationMockModuleInjection.authenticationRepository);
    gh.lazySingleton<_i4.Connectivity>(
        () => coreInjectableModule.connectivityPlus);
    await gh.factoryAsync<_i5.FirebaseApp>(
      () => firebaseAuthInjectableModule.preLoadedFirebaseApp,
      preResolve: true,
    );
    gh.lazySingleton<_i6.FirebaseAuth>(
        () => firebaseAuthInjectableModule.firebaseAuth);
    gh.lazySingleton<_i7.FirebaseFirestore>(
        () => firebaseAuthInjectableModule.firebaseFirestore);
    gh.lazySingleton<_i8.GoogleSignIn>(
        () => googleAuthenticationInjectableModule.googleSignIn);
    gh.lazySingleton<_i9.IGoogleRepositoryFacade>(
        () => _i10.GoogleAuthenticationRepository(
              gh<_i8.GoogleSignIn>(),
              gh<_i6.FirebaseAuth>(),
            ));
    gh.lazySingleton<_i11.NTP>(() => coreInjectableModule.ntp);
    await gh.factoryAsync<_i12.SharedPreferences>(
      () => firebaseAuthInjectableModule.sharePreferences,
      preResolve: true,
    );
    gh.singleton<_i13.UserRepository>(
        authenticationMockModuleInjection.userRepository);
    gh.factory<_i14.AuthenticationBloc>(() => _i14.AuthenticationBloc(
          authenticationRepository: gh<_i3.AuthenticationRepository>(),
          userRepository: gh<_i13.UserRepository>(),
        ));
    gh.singleton<_i15.Cached>(_i15.Cached(gh<_i12.SharedPreferences>()));
    gh.factory<_i16.GoogleSignInBloc>(() => _i16.GoogleSignInBloc(
        authenticationRepository: gh<_i9.IGoogleRepositoryFacade>()));
    gh.lazySingleton<_i17.IAuthFacade>(() => _i18.FirebaseAuthFacade(
          gh<_i6.FirebaseAuth>(),
          gh<_i15.Cached>(),
        ));
    gh.lazySingleton<_i19.AppSettingsHelper>(() => _i19.AppSettingsHelper(
          gh<_i15.Cached>(),
          gh<_i4.Connectivity>(),
        ));
    gh.factory<_i20.AuthBloc>(() => _i20.AuthBloc(gh<_i17.IAuthFacade>()));
    gh.singleton<_i21.EmailPasswordBloc>(_i21.EmailPasswordBloc(
        authenticationRepository: gh<_i17.IAuthFacade>()));
    gh.factory<_i22.HomeViewBloc>(
        () => _i22.HomeViewBloc(gh<_i19.AppSettingsHelper>()));
    gh.factory<_i23.InternetAndTimeBloc>(
        () => _i23.InternetAndTimeBloc(gh<_i19.AppSettingsHelper>()));
    return this;
  }
}

class _$CoreInjectableModule extends _i24.CoreInjectableModule {}

class _$AuthenticationMockModuleInjection
    extends _i25.AuthenticationMockModuleInjection {}

class _$GoogleAuthenticationInjectableModule
    extends _i26.GoogleAuthenticationInjectableModule {}

class _$FirebaseAuthInjectableModule
    extends _i27.FirebaseAuthInjectableModule {}
