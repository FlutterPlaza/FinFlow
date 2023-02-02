// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:flutter/material.dart';
import 'package:fpb/app/app.dart';
import 'package:fpb/bootstrap.dart';
import 'package:fpb/injection.dart';

Future<void> main() async {
  /** WidgetsFlutterBinding.ensureInitialized() is required in Flutter v1.9.4+ 
   * before using any plugins if the code is executed before runApp. */
  WidgetsFlutterBinding.ensureInitialized();

// Configure injection
  configureInjection(Env.staging);
  await bootstrap(() => const App());
}
