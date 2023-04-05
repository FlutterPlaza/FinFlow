// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:authentication_repository/authentication_repository.dart'
    as _i3;
import 'package:cloud_firestore/cloud_firestore.dart' as _i8;
import 'package:connectivity_plus/connectivity_plus.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i7;
import 'package:firebase_core/firebase_core.dart' as _i6;
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart' as _i5;
import 'package:fpb/authentication_mock_without_backend/application/bloc/authentication_bloc.dart'
    as _i19;
import 'package:fpb/authentication_mock_without_backend/infrastructure/authentication_mock_module_injection.dart'
    as _i33;
import 'package:fpb/authentication_with_facebook/application/facebook_auth_bloc.dart'
    as _i22;
import 'package:fpb/authentication_with_facebook/domain/i_facebook_repository_facade.dart'
    as _i12;
import 'package:fpb/authentication_with_facebook/infrastructure/facebook_auth_repository.dart'
    as _i13;
import 'package:fpb/authentication_with_facebook/infrastructure/facebook_authentication_injectable_module.dart'
    as _i35;
import 'package:fpb/authentication_with_firebase/application/bloc/auth_bloc.dart'
    as _i28;
import 'package:fpb/authentication_with_firebase/domain/i_auth_facade.dart'
    as _i25;
import 'package:fpb/authentication_with_firebase/infrastructure/firebase_auth_facade_impl.dart'
    as _i26;
import 'package:fpb/authentication_with_firebase/infrastructure/firebase_auth_injectable_module.dart'
    as _i34;
import 'package:fpb/authentication_with_google/application/google_auth_bloc/google_sign_in_bloc.dart'
    as _i23;
import 'package:fpb/authentication_with_google/domain/i_google_repository_facade.dart'
    as _i14;
import 'package:fpb/authentication_with_google/infrastructure/google_authentication_injectable_module.dart'
    as _i31;
import 'package:fpb/authentication_with_google/infrastructure/google_authentication_repository.dart'
    as _i15;
import 'package:fpb/contact_us/application/contact_us_bloc/contact_us_bloc.dart'
    as _i21;
import 'package:fpb/contact_us/domain/i_contact_us_repository_facade.dart'
    as _i10;
import 'package:fpb/contact_us/infrastructure/contact_us_repository.dart'
    as _i11;
import 'package:fpb/core/application/email_password_bloc/email_password_bloc.dart'
    as _i29;
import 'package:fpb/core/application/internet_and_time_bloc/internet_and_time_bloc.dart'
    as _i30;
import 'package:fpb/core/infrastructure/core_injectable_module.dart' as _i32;
import 'package:fpb/core/settings/app_settings_helper.dart' as _i27;
import 'package:fpb/core/settings/cached.dart' as _i20;
import 'package:fpb/home/application/home_view_bloc/home_view_bloc.dart'
    as _i24;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i9;
import 'package:injectable/injectable.dart' as _i2;
import 'package:ntp/ntp.dart' as _i16;
import 'package:shared_preferences/shared_preferences.dart' as _i17;
import 'package:user_repository/user_repository.dart'
    as _i18; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
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
    final facebookAuthenticationInjectableModule =
        _$FacebookAuthenticationInjectableModule();
    final firebaseAuthInjectableModule = _$FirebaseAuthInjectableModule();
    final googleAuthenticationInjectableModule =
        _$GoogleAuthenticationInjectableModule();
    gh.singleton<_i3.AuthenticationRepository>(
        authenticationMockModuleInjection.authenticationRepository);
    gh.lazySingleton<_i4.Connectivity>(
        () => coreInjectableModule.connectivityPlus);
    gh.lazySingleton<_i5.FacebookAuth>(
        () => facebookAuthenticationInjectableModule.facebookAuth);
    await gh.factoryAsync<_i6.FirebaseApp>(
      () => firebaseAuthInjectableModule.preLoadedFirebaseApp,
      preResolve: true,
    );
    gh.lazySingleton<_i7.FirebaseAuth>(
        () => firebaseAuthInjectableModule.firebaseAuth);
    gh.lazySingleton<_i8.FirebaseFirestore>(
        () => firebaseAuthInjectableModule.firebaseFirestore);
    gh.lazySingleton<_i9.GoogleSignIn>(
        () => googleAuthenticationInjectableModule.googleSignIn);
    gh.lazySingleton<_i10.IContactUsRepositoryFacade>(
        () => _i11.ContactUsRepository());
    gh.lazySingleton<_i12.IFacebookRepositoryFacade>(
        () => _i13.FacebookAuthenticationRepository(
              gh<_i5.FacebookAuth>(),
              gh<_i7.FirebaseAuth>(),
            ));
    gh.lazySingleton<_i14.IGoogleRepositoryFacade>(
        () => _i15.GoogleAuthenticationRepository(
              gh<_i9.GoogleSignIn>(),
              gh<_i7.FirebaseAuth>(),
            ));
    gh.lazySingleton<_i16.NTP>(() => coreInjectableModule.ntp);
    await gh.factoryAsync<_i17.SharedPreferences>(
      () => firebaseAuthInjectableModule.sharePreferences,
      preResolve: true,
    );
    gh.singleton<_i18.UserRepository>(
        authenticationMockModuleInjection.userRepository);
    gh.factory<_i19.AuthenticationBloc>(() => _i19.AuthenticationBloc(
          authenticationRepository: gh<_i3.AuthenticationRepository>(),
          userRepository: gh<_i18.UserRepository>(),
        ));
    gh.singleton<_i20.Cached>(_i20.Cached(gh<_i17.SharedPreferences>()));
    gh.singleton<_i21.ContactUsBloc>(
        _i21.ContactUsBloc(gh<_i10.IContactUsRepositoryFacade>()));
    gh.factory<_i22.FacebookAuthBloc>(() => _i22.FacebookAuthBloc(
        authenticationRepository: gh<_i12.IFacebookRepositoryFacade>()));
    gh.factory<_i23.GoogleSignInBloc>(() => _i23.GoogleSignInBloc(
        authenticationRepository: gh<_i14.IGoogleRepositoryFacade>()));
    gh.factory<_i24.HomeViewBloc>(() => _i24.HomeViewBloc(gh<_i20.Cached>()));
    gh.lazySingleton<_i25.IAuthFacade>(() => _i26.FirebaseAuthFacade(
          gh<_i7.FirebaseAuth>(),
          gh<_i20.Cached>(),
        ));
    gh.lazySingleton<_i27.AppSettingsHelper>(() => _i27.AppSettingsHelper(
          gh<_i20.Cached>(),
          gh<_i4.Connectivity>(),
        ));
    gh.factory<_i28.AuthBloc>(() => _i28.AuthBloc(gh<_i25.IAuthFacade>()));
    gh.singleton<_i29.EmailPasswordBloc>(_i29.EmailPasswordBloc(
        authenticationRepository: gh<_i25.IAuthFacade>()));
    gh.factory<_i30.InternetAndTimeBloc>(
        () => _i30.InternetAndTimeBloc(gh<_i27.AppSettingsHelper>()));
    return this;
  }
}

class _$GoogleAuthenticationInjectableModule
    extends _i31.GoogleAuthenticationInjectableModule {}

class _$CoreInjectableModule extends _i32.CoreInjectableModule {}

class _$AuthenticationMockModuleInjection
    extends _i33.AuthenticationMockModuleInjection {}

class _$FirebaseAuthInjectableModule
    extends _i34.FirebaseAuthInjectableModule {}

class _$FacebookAuthenticationInjectableModule
    extends _i35.FacebookAuthenticationInjectableModule {}
