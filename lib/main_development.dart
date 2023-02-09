// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:authentication_repository/authentication_repository.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:fpb/app/app.dart';
import 'package:fpb/bootstrap.dart';
import 'package:fpb/injection.dart';
import 'package:fpb/sign_in_with_google/repository/google_authentication_repository.dart';
import 'package:user_repository/user_repository.dart';

Future<void> main() async {
  /** WidgetsFlutterBinding.ensureInitialized() is required in Flutter v1.9.4+ 
   * before using any plugins if the code is executed before runApp. */
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  final authenticationRepository = AuthenticationRepository();
  final userRepository = UserRepository();
  final googleAuthenticationRepository = GoogleAuthenticationRepository();

  // Configure injection
  configureInjection(Env.development);
  await bootstrap(
    () => App(
      authenticationRepository: authenticationRepository,
      userRepository: userRepository,
      googleAuthenticationRepository: googleAuthenticationRepository,
    ),
  );
}
