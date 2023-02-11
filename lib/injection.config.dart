// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:authentication_repository/authentication_repository.dart'
    as _i3;
import 'package:cloud_firestore/cloud_firestore.dart' as _i6;
import 'package:firebase_auth/firebase_auth.dart' as _i5;
import 'package:firebase_core/firebase_core.dart' as _i4;
import 'package:fpb/authentication_mock_without_backend/application/bloc/authentication_bloc.dart'
    as _i12;
import 'package:fpb/authentication_mock_without_backend/infrastructure/authentication_mock_module_injection.dart'
    as _i20;
import 'package:fpb/authentication_with_firebase/application/bloc/auth_bloc.dart'
    as _i17;
import 'package:fpb/authentication_with_firebase/domain/i_auth_facade.dart'
    as _i15;
import 'package:fpb/authentication_with_firebase/infrastructure/firebase_auth_facade_impl.dart'
    as _i16;
import 'package:fpb/authentication_with_firebase/injectable_module_for_firebase.dart'
    as _i19;
import 'package:fpb/core/application/email_password_bloc/email_password_bloc.dart'
    as _i18;
import 'package:fpb/core/settings/cached.dart' as _i13;
import 'package:fpb/sign_in_with_google/application/google_auth_bloc/google_sign_in_bloc.dart'
    as _i14;
import 'package:fpb/sign_in_with_google/domain/i_google_repository_facade.dart'
    as _i8;
import 'package:fpb/sign_in_with_google/infrastructure/google_authentication_repository.dart'
    as _i9;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i7;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i10;
import 'package:user_repository/user_repository.dart' as _i11;

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
    final injectableModulesForFirebase = _$InjectableModulesForFirebase();
    gh.singleton<_i3.AuthenticationRepository>(
        authenticationMockModuleInjection.authenticationRepository);
    await gh.factoryAsync<_i4.FirebaseApp>(
      () => injectableModulesForFirebase.preLoadedFirebaseApp,
      preResolve: true,
    );
    gh.lazySingleton<_i5.FirebaseAuth>(
        () => injectableModulesForFirebase.firebaseAuth);
    gh.lazySingleton<_i6.FirebaseFirestore>(
        () => injectableModulesForFirebase.firebaseFirestore);
    gh.lazySingleton<_i7.GoogleSignIn>(
        () => injectableModulesForFirebase.googleSignIn);
    gh.lazySingleton<_i8.IGoogleRepositoryFacade>(
        () => _i9.GoogleAuthenticationRepository(
              gh<_i7.GoogleSignIn>(),
              gh<_i5.FirebaseAuth>(),
            ));
    await gh.factoryAsync<_i10.SharedPreferences>(
      () => injectableModulesForFirebase.sharePreferences,
      preResolve: true,
    );
    gh.singleton<_i11.UserRepository>(
        authenticationMockModuleInjection.userRepository);
    gh.factory<_i12.AuthenticationBloc>(() => _i12.AuthenticationBloc(
          authenticationRepository: gh<_i3.AuthenticationRepository>(),
          userRepository: gh<_i11.UserRepository>(),
        ));
    gh.singleton<_i13.Cached>(_i13.Cached(gh<_i10.SharedPreferences>()));
    gh.factory<_i14.GoogleSignInBloc>(() => _i14.GoogleSignInBloc(
        authenticationRepository: gh<_i8.IGoogleRepositoryFacade>()));
    gh.lazySingleton<_i15.IAuthFacade>(() => _i16.FirebaseAuthFacade(
          gh<_i5.FirebaseAuth>(),
          gh<_i13.Cached>(),
        ));
    gh.factory<_i17.AuthBloc>(() => _i17.AuthBloc(gh<_i15.IAuthFacade>()));
    gh.singleton<_i18.EmailPasswordBloc>(_i18.EmailPasswordBloc(
        authenticationRepository: gh<_i15.IAuthFacade>()));
    return this;
  }
}

class _$InjectableModulesForFirebase extends _i19.InjectableModulesForFirebase {
}

class _$AuthenticationMockModuleInjection
    extends _i20.AuthenticationMockModuleInjection {}
