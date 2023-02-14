// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'facebook_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FacebookUser {
  String get email => throw _privateConstructorUsedError;
  bool get emailVerified => throw _privateConstructorUsedError;
  String get providerId => throw _privateConstructorUsedError;
  bool get isAnonymous => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get photoURL => throw _privateConstructorUsedError;
  String get refreshToken => throw _privateConstructorUsedError;
  String get tenantId => throw _privateConstructorUsedError;
  String get uid => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FacebookUserCopyWith<FacebookUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FacebookUserCopyWith<$Res> {
  factory $FacebookUserCopyWith(
          FacebookUser value, $Res Function(FacebookUser) then) =
      _$FacebookUserCopyWithImpl<$Res, FacebookUser>;
  @useResult
  $Res call(
      {String email,
      bool emailVerified,
      String providerId,
      bool isAnonymous,
      String phoneNumber,
      String photoURL,
      String refreshToken,
      String tenantId,
      String uid});
}

/// @nodoc
class _$FacebookUserCopyWithImpl<$Res, $Val extends FacebookUser>
    implements $FacebookUserCopyWith<$Res> {
  _$FacebookUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? emailVerified = null,
    Object? providerId = null,
    Object? isAnonymous = null,
    Object? phoneNumber = null,
    Object? photoURL = null,
    Object? refreshToken = null,
    Object? tenantId = null,
    Object? uid = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      emailVerified: null == emailVerified
          ? _value.emailVerified
          : emailVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      providerId: null == providerId
          ? _value.providerId
          : providerId // ignore: cast_nullable_to_non_nullable
              as String,
      isAnonymous: null == isAnonymous
          ? _value.isAnonymous
          : isAnonymous // ignore: cast_nullable_to_non_nullable
              as bool,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      photoURL: null == photoURL
          ? _value.photoURL
          : photoURL // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      tenantId: null == tenantId
          ? _value.tenantId
          : tenantId // ignore: cast_nullable_to_non_nullable
              as String,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FacebookUserCopyWith<$Res>
    implements $FacebookUserCopyWith<$Res> {
  factory _$$_FacebookUserCopyWith(
          _$_FacebookUser value, $Res Function(_$_FacebookUser) then) =
      __$$_FacebookUserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String email,
      bool emailVerified,
      String providerId,
      bool isAnonymous,
      String phoneNumber,
      String photoURL,
      String refreshToken,
      String tenantId,
      String uid});
}

/// @nodoc
class __$$_FacebookUserCopyWithImpl<$Res>
    extends _$FacebookUserCopyWithImpl<$Res, _$_FacebookUser>
    implements _$$_FacebookUserCopyWith<$Res> {
  __$$_FacebookUserCopyWithImpl(
      _$_FacebookUser _value, $Res Function(_$_FacebookUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? emailVerified = null,
    Object? providerId = null,
    Object? isAnonymous = null,
    Object? phoneNumber = null,
    Object? photoURL = null,
    Object? refreshToken = null,
    Object? tenantId = null,
    Object? uid = null,
  }) {
    return _then(_$_FacebookUser(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      emailVerified: null == emailVerified
          ? _value.emailVerified
          : emailVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      providerId: null == providerId
          ? _value.providerId
          : providerId // ignore: cast_nullable_to_non_nullable
              as String,
      isAnonymous: null == isAnonymous
          ? _value.isAnonymous
          : isAnonymous // ignore: cast_nullable_to_non_nullable
              as bool,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      photoURL: null == photoURL
          ? _value.photoURL
          : photoURL // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      tenantId: null == tenantId
          ? _value.tenantId
          : tenantId // ignore: cast_nullable_to_non_nullable
              as String,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FacebookUser extends _FacebookUser {
  const _$_FacebookUser(
      {required this.email,
      required this.emailVerified,
      required this.providerId,
      required this.isAnonymous,
      required this.phoneNumber,
      required this.photoURL,
      required this.refreshToken,
      required this.tenantId,
      required this.uid})
      : super._();

  @override
  final String email;
  @override
  final bool emailVerified;
  @override
  final String providerId;
  @override
  final bool isAnonymous;
  @override
  final String phoneNumber;
  @override
  final String photoURL;
  @override
  final String refreshToken;
  @override
  final String tenantId;
  @override
  final String uid;

  @override
  String toString() {
    return 'FacebookUser(email: $email, emailVerified: $emailVerified, providerId: $providerId, isAnonymous: $isAnonymous, phoneNumber: $phoneNumber, photoURL: $photoURL, refreshToken: $refreshToken, tenantId: $tenantId, uid: $uid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FacebookUser &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.emailVerified, emailVerified) ||
                other.emailVerified == emailVerified) &&
            (identical(other.providerId, providerId) ||
                other.providerId == providerId) &&
            (identical(other.isAnonymous, isAnonymous) ||
                other.isAnonymous == isAnonymous) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.photoURL, photoURL) ||
                other.photoURL == photoURL) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.tenantId, tenantId) ||
                other.tenantId == tenantId) &&
            (identical(other.uid, uid) || other.uid == uid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, emailVerified, providerId,
      isAnonymous, phoneNumber, photoURL, refreshToken, tenantId, uid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FacebookUserCopyWith<_$_FacebookUser> get copyWith =>
      __$$_FacebookUserCopyWithImpl<_$_FacebookUser>(this, _$identity);
}

abstract class _FacebookUser extends FacebookUser {
  const factory _FacebookUser(
      {required final String email,
      required final bool emailVerified,
      required final String providerId,
      required final bool isAnonymous,
      required final String phoneNumber,
      required final String photoURL,
      required final String refreshToken,
      required final String tenantId,
      required final String uid}) = _$_FacebookUser;
  const _FacebookUser._() : super._();

  @override
  String get email;
  @override
  bool get emailVerified;
  @override
  String get providerId;
  @override
  bool get isAnonymous;
  @override
  String get phoneNumber;
  @override
  String get photoURL;
  @override
  String get refreshToken;
  @override
  String get tenantId;
  @override
  String get uid;
  @override
  @JsonKey(ignore: true)
  _$$_FacebookUserCopyWith<_$_FacebookUser> get copyWith =>
      throw _privateConstructorUsedError;
}
