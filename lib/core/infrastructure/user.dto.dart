import 'package:firebase_auth/firebase_auth.dart' as firebase;
import 'package:fpb/core/domain/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.dto.freezed.dart';
part 'user.dto.g.dart';

const String empty = '-';

@immutable
@freezed
abstract class UserDTO implements _$UserDTO {
  factory UserDTO.fromDomain(User u) => UserDTO(
        id: u.id,
        isNewUser: u.isNewUser,
        photo: u.photo,
        providerId: u.providerId,
        name: u.name,
        email: u.email,
        phoneNumber: u.phoneNumber,
      );
  const factory UserDTO({
    required String id,
    required bool isNewUser,
    required String photo,
    required String providerId,
    required String name,
    required String email,
    required String phoneNumber,
  }) = _UserDTO;
  const UserDTO._();

  factory UserDTO.fromFirebase(firebase.User u) => UserDTO(
        id: u.uid,
        isNewUser: u.metadata.creationTime == u.metadata.lastSignInTime,
        photo: u.photoURL ?? empty,
        name: u.displayName ?? empty,
        email: u.email ?? empty,
        phoneNumber: u.phoneNumber ?? empty,
        providerId: u.metadata.creationTime == u.metadata.lastSignInTime
            ? u.providerData.first.providerId
            : empty,
      );

  factory UserDTO.empty() => const UserDTO(
        id: empty,
        isNewUser: true,
        photo: empty,
        name: empty,
        email: empty,
        phoneNumber: empty,
        providerId: empty,
      );

  factory UserDTO.fromJson(Map<String, dynamic> json) =>
      _$UserDTOFromJson(json);

  User toDomain() {
    return User(
      id: id,
      isNewUser: isNewUser,
      photo: photo,
      providerId: providerId,
      name: name,
      email: email,
      phoneNumber: phoneNumber,
    );
  }
}
