import 'dart:convert';
import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:flutter/services.dart';
import 'package:fpb/core/failures/auth_failure.dart';
import 'package:fpb/forgot_password_flow/domain/i_forgot_password_facade.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

@LazySingleton(as: IForgotPasswordRepositoryFacade)
class ForgotPasswordRepository implements IForgotPasswordRepositoryFacade {
  final FirebaseAuth _firebaseAuth;
  String _token;

  ForgotPasswordRepository(this._firebaseAuth, this._token);

  Future<void> recoveryPassword(String email) async {
    await _firebaseAuth.sendPasswordResetEmail(email: email);
  }

  @override
  Future<Either<AuthFailure, Unit>> changePassword(String newPassword) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

    _token = sharedPreferences.getString("token")!;

    final url = Uri.https('identitytoolkit.googleapis.com',
        'v1/accounts:update?key=AIzaSyAGxbjnzj7ruNcZEkeWcCEADt5d6Y_oakI');

    try {
      await http.post(
        url,
        body: json.encode(
          {
            'idToken': _token,
            'password': newPassword,
            'returnSecureToken': true,
          },
        ),
      );
      return right(unit);
    } on SocketException catch (e) {
      return left(AuthFailure.fromErrorMessage(e.message));
    } on PlatformException catch (e) {
      return left(AuthFailure.fromErrorMessage(e.code));
    } on FirebaseAuthException catch (e) {
      return left(AuthFailure.fromErrorMessage(e.code));
    } on FirebaseException catch (e) {
      return left(AuthFailure.fromErrorMessage(e.code));
    }
  }

  @override
  Future<void> authenticate(String email, String password, String urlSegment) {
    // TODO: implement authenticate
    throw UnimplementedError();
  }
}
