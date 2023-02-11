import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

const String blank = '-';

@immutable
@freezed
abstract class User implements _$User {
  const factory User({
    required String id,
    required bool isNewUser,
    required String photo,
    required String providerId,
    required String name,
    required String email,
    required String phoneNumber,
  }) = _User;
  const User._();

  static const empty = User(
    id: blank,
    isNewUser: true,
    photo: blank,
    name: blank,
    email: blank,
    phoneNumber: blank,
    providerId: blank,
  );
}
