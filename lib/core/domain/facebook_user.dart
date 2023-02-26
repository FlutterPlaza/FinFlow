import 'package:freezed_annotation/freezed_annotation.dart';

part 'facebook_user.freezed.dart';

const String blank = '-';

@immutable
@freezed
abstract class FacebookUser implements _$FacebookUser {
  const factory FacebookUser({
    required String email,
    required bool emailVerified,
    required String providerId,
    required bool isAnonymous,
    required String phoneNumber,
    required String photoURL,
    required String refreshToken,
    required String tenantId,
    required String uid,
  }) = _FacebookUser;
  const FacebookUser._();

  static const empty = FacebookUser(
      email: blank,
      emailVerified: false,
      providerId: blank,
      isAnonymous: false,
      phoneNumber: blank,
      photoURL: blank,
      refreshToken: blank,
      tenantId: blank,
      uid: blank);
}
