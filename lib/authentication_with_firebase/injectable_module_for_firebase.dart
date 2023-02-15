import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// This class serves as a wrapper/abstractor for all the Firebase services.
/// this way, All firebase or external dependencies are abstracted away from the rest of the app.

@module
abstract class InjectableModulesForFirebase {
  @preResolve
  Future<FirebaseApp> get preLoadedFirebaseApp async =>
      Firebase.initializeApp();
  @lazySingleton
  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;
  @lazySingleton
  FirebaseFirestore get firebaseFirestore => FirebaseFirestore.instance;
  @lazySingleton
  GoogleSignIn get googleSignIn => GoogleSignIn();
  @preResolve
  Future<SharedPreferences> get sharePreferences async =>
      SharedPreferences.getInstance();
}
