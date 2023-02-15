import 'dart:convert';

import 'package:fpb/core/domain/user.dart';
import 'package:fpb/core/infrastructure/user.dto.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@singleton
class Cached {
  Cached(this._sharedPreferences);

  final SharedPreferences _sharedPreferences;

  final String userCacheKey = 'userCacheKey';
  final String firstTimeUserKey = 'firstTimeUserKey';

  User get user {
    final userString = _sharedPreferences.getString(userCacheKey);
    if (userString == null) {
      return User.empty;
    }
    return UserDTO.fromJson(json.decode(userString) as Map<String, dynamic>)
        .toDomain();
  }

  set user(User user) {
    _sharedPreferences.setString(
      userCacheKey,
      json.encode(UserDTO.fromDomain(user).toJson()),
    );
  }

  set firstTimeUser(bool value) {
    _sharedPreferences.setBool(firstTimeUserKey, value);
  }

  bool get firstTimeUser =>
      _sharedPreferences.getBool(firstTimeUserKey) ?? true;

  set setLastView(int value) {
    _sharedPreferences.setInt('homeView', value);
  }

  int get getLastView => _sharedPreferences.getInt('homeView') ?? 0;
}
