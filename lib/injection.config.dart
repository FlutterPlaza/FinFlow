// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i5;
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:firebase_core/firebase_core.dart' as _i3;
import 'package:fpb/authentication_with_firebase/application/bloc/auth_bloc.dart'
    as _i12;
import 'package:fpb/authentication_with_firebase/domain/i_auth_facade.dart'
    as _i9;
import 'package:fpb/authentication_with_firebase/infrastructure/firebase_auth_facade_impl.dart'
    as _i10;
import 'package:fpb/authentication_with_firebase/injectable_module_for_firebase.dart'
    as _i13;
import 'package:fpb/core/settings/cached.dart' as _i8;
import 'package:fpb/sign_in/application/bloc/login_bloc.dart' as _i11;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i6;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i7;

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
    final injectableModulesForFirebase = _$InjectableModulesForFirebase();
    await gh.factoryAsync<_i3.FirebaseApp>(
      () => injectableModulesForFirebase.preLoadedFirebaseApp,
      preResolve: true,
    );
    gh.lazySingleton<_i4.FirebaseAuth>(
        () => injectableModulesForFirebase.firebaseAuth);
    gh.lazySingleton<_i5.FirebaseFirestore>(
        () => injectableModulesForFirebase.firebaseFirestore);
    gh.lazySingleton<_i6.GoogleSignIn>(
        () => injectableModulesForFirebase.googleSignIn);
    await gh.factoryAsync<_i7.SharedPreferences>(
      () => injectableModulesForFirebase.sharePreferences,
      preResolve: true,
    );
    gh.singleton<_i8.Cached>(_i8.Cached(gh<_i7.SharedPreferences>()));
    gh.lazySingleton<_i9.IAuthFacade>(() => _i10.FirebaseAuthFacade(
          gh<_i4.FirebaseAuth>(),
          gh<_i8.Cached>(),
        ));
    gh.singleton<_i11.LoginBloc>(
        _i11.LoginBloc(authenticationRepository: gh<_i9.IAuthFacade>()));
    gh.factory<_i12.AuthBloc>(() => _i12.AuthBloc(gh<_i9.IAuthFacade>()));
    return this;
  }
}

class _$InjectableModulesForFirebase extends _i13.InjectableModulesForFirebase {
}
