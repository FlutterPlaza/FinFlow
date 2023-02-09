import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleAuthenticationRepository {
  Future<bool> signInWithGoogle() async {
    try {
      final user = GoogleSignIn().currentUser ?? await GoogleSignIn().signIn();
      if (user != null) {
        await GoogleSignIn().signOut();
      }

      final googleAuth = await user?.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );
      await FirebaseAuth.instance.signInWithCredential(credential);
      return true;
    } catch (e) {
      log('An Error Occurred $e');
      return false;
    }
  }

  Future<void> handleSignOut() => GoogleSignIn().signOut();
}
