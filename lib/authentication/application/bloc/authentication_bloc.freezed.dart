// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'authentication_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthenticationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthenticationStatus status) statusChange,
    required TResult Function() logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthenticationStatus status)? statusChange,
    TResult? Function()? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthenticationStatus status)? statusChange,
    TResult Function()? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StatusChange value) statusChange,
    required TResult Function(_Logout value) logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StatusChange value)? statusChange,
    TResult? Function(_Logout value)? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StatusChange value)? statusChange,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationEventCopyWith<$Res> {
  factory $AuthenticationEventCopyWith(
          AuthenticationEvent value, $Res Function(AuthenticationEvent) then) =
      _$AuthenticationEventCopyWithImpl<$Res, AuthenticationEvent>;
}

/// @nodoc
class _$AuthenticationEventCopyWithImpl<$Res, $Val extends AuthenticationEvent>
    implements $AuthenticationEventCopyWith<$Res> {
  _$AuthenticationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StatusChangeCopyWith<$Res> {
  factory _$$_StatusChangeCopyWith(
          _$_StatusChange value, $Res Function(_$_StatusChange) then) =
      __$$_StatusChangeCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthenticationStatus status});
}

/// @nodoc
class __$$_StatusChangeCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$_StatusChange>
    implements _$$_StatusChangeCopyWith<$Res> {
  __$$_StatusChangeCopyWithImpl(
      _$_StatusChange _value, $Res Function(_$_StatusChange) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$_StatusChange(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AuthenticationStatus,
    ));
  }
}

/// @nodoc

class _$_StatusChange implements _StatusChange {
  const _$_StatusChange({required this.status});

  @override
  final AuthenticationStatus status;

  @override
  String toString() {
    return 'AuthenticationEvent.statusChange(status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StatusChange &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StatusChangeCopyWith<_$_StatusChange> get copyWith =>
      __$$_StatusChangeCopyWithImpl<_$_StatusChange>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthenticationStatus status) statusChange,
    required TResult Function() logout,
  }) {
    return statusChange(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthenticationStatus status)? statusChange,
    TResult? Function()? logout,
  }) {
    return statusChange?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthenticationStatus status)? statusChange,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (statusChange != null) {
      return statusChange(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StatusChange value) statusChange,
    required TResult Function(_Logout value) logout,
  }) {
    return statusChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StatusChange value)? statusChange,
    TResult? Function(_Logout value)? logout,
  }) {
    return statusChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StatusChange value)? statusChange,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (statusChange != null) {
      return statusChange(this);
    }
    return orElse();
  }
}

abstract class _StatusChange implements AuthenticationEvent {
  const factory _StatusChange({required final AuthenticationStatus status}) =
      _$_StatusChange;

  AuthenticationStatus get status;
  @JsonKey(ignore: true)
  _$$_StatusChangeCopyWith<_$_StatusChange> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LogoutCopyWith<$Res> {
  factory _$$_LogoutCopyWith(_$_Logout value, $Res Function(_$_Logout) then) =
      __$$_LogoutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LogoutCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$_Logout>
    implements _$$_LogoutCopyWith<$Res> {
  __$$_LogoutCopyWithImpl(_$_Logout _value, $Res Function(_$_Logout) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Logout implements _Logout {
  const _$_Logout();

  @override
  String toString() {
    return 'AuthenticationEvent.logout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Logout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthenticationStatus status) statusChange,
    required TResult Function() logout,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthenticationStatus status)? statusChange,
    TResult? Function()? logout,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthenticationStatus status)? statusChange,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StatusChange value) statusChange,
    required TResult Function(_Logout value) logout,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StatusChange value)? statusChange,
    TResult? Function(_Logout value)? logout,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StatusChange value)? statusChange,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class _Logout implements AuthenticationEvent {
  const factory _Logout() = _$_Logout;
}

/// @nodoc
mixin _$AuthenticationState {
  AuthenticationStatus get status => throw _privateConstructorUsedError;
  User get user => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthenticationStatus status, User user) unknown,
    required TResult Function(AuthenticationStatus status, User user)
        authenticated,
    required TResult Function(AuthenticationStatus status, User user)
        unAuthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthenticationStatus status, User user)? unknown,
    TResult? Function(AuthenticationStatus status, User user)? authenticated,
    TResult? Function(AuthenticationStatus status, User user)? unAuthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthenticationStatus status, User user)? unknown,
    TResult Function(AuthenticationStatus status, User user)? authenticated,
    TResult Function(AuthenticationStatus status, User user)? unAuthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_UnAuthenticated value) unAuthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unknown value)? unknown,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_UnAuthenticated value)? unAuthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unknown value)? unknown,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_UnAuthenticated value)? unAuthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthenticationStateCopyWith<AuthenticationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationStateCopyWith<$Res> {
  factory $AuthenticationStateCopyWith(
          AuthenticationState value, $Res Function(AuthenticationState) then) =
      _$AuthenticationStateCopyWithImpl<$Res, AuthenticationState>;
  @useResult
  $Res call({AuthenticationStatus status, User user});
}

/// @nodoc
class _$AuthenticationStateCopyWithImpl<$Res, $Val extends AuthenticationState>
    implements $AuthenticationStateCopyWith<$Res> {
  _$AuthenticationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AuthenticationStatus,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UnknownCopyWith<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  factory _$$_UnknownCopyWith(
          _$_Unknown value, $Res Function(_$_Unknown) then) =
      __$$_UnknownCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AuthenticationStatus status, User user});
}

/// @nodoc
class __$$_UnknownCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$_Unknown>
    implements _$$_UnknownCopyWith<$Res> {
  __$$_UnknownCopyWithImpl(_$_Unknown _value, $Res Function(_$_Unknown) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? user = null,
  }) {
    return _then(_$_Unknown(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AuthenticationStatus,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$_Unknown implements _Unknown {
  const _$_Unknown(
      {this.status = AuthenticationStatus.unknown, this.user = User.empty});

  @override
  @JsonKey()
  final AuthenticationStatus status;
  @override
  @JsonKey()
  final User user;

  @override
  String toString() {
    return 'AuthenticationState.unknown(status: $status, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Unknown &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UnknownCopyWith<_$_Unknown> get copyWith =>
      __$$_UnknownCopyWithImpl<_$_Unknown>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthenticationStatus status, User user) unknown,
    required TResult Function(AuthenticationStatus status, User user)
        authenticated,
    required TResult Function(AuthenticationStatus status, User user)
        unAuthenticated,
  }) {
    return unknown(status, user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthenticationStatus status, User user)? unknown,
    TResult? Function(AuthenticationStatus status, User user)? authenticated,
    TResult? Function(AuthenticationStatus status, User user)? unAuthenticated,
  }) {
    return unknown?.call(status, user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthenticationStatus status, User user)? unknown,
    TResult Function(AuthenticationStatus status, User user)? authenticated,
    TResult Function(AuthenticationStatus status, User user)? unAuthenticated,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(status, user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_UnAuthenticated value) unAuthenticated,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unknown value)? unknown,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_UnAuthenticated value)? unAuthenticated,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unknown value)? unknown,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_UnAuthenticated value)? unAuthenticated,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class _Unknown implements AuthenticationState {
  const factory _Unknown({final AuthenticationStatus status, final User user}) =
      _$_Unknown;

  @override
  AuthenticationStatus get status;
  @override
  User get user;
  @override
  @JsonKey(ignore: true)
  _$$_UnknownCopyWith<_$_Unknown> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AuthenticatedCopyWith<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  factory _$$_AuthenticatedCopyWith(
          _$_Authenticated value, $Res Function(_$_Authenticated) then) =
      __$$_AuthenticatedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AuthenticationStatus status, User user});
}

/// @nodoc
class __$$_AuthenticatedCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$_Authenticated>
    implements _$$_AuthenticatedCopyWith<$Res> {
  __$$_AuthenticatedCopyWithImpl(
      _$_Authenticated _value, $Res Function(_$_Authenticated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? user = null,
  }) {
    return _then(_$_Authenticated(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AuthenticationStatus,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$_Authenticated implements _Authenticated {
  _$_Authenticated(
      {this.status = AuthenticationStatus.authenticated, required this.user});

  @override
  @JsonKey()
  final AuthenticationStatus status;
  @override
  final User user;

  @override
  String toString() {
    return 'AuthenticationState.authenticated(status: $status, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Authenticated &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthenticatedCopyWith<_$_Authenticated> get copyWith =>
      __$$_AuthenticatedCopyWithImpl<_$_Authenticated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthenticationStatus status, User user) unknown,
    required TResult Function(AuthenticationStatus status, User user)
        authenticated,
    required TResult Function(AuthenticationStatus status, User user)
        unAuthenticated,
  }) {
    return authenticated(status, user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthenticationStatus status, User user)? unknown,
    TResult? Function(AuthenticationStatus status, User user)? authenticated,
    TResult? Function(AuthenticationStatus status, User user)? unAuthenticated,
  }) {
    return authenticated?.call(status, user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthenticationStatus status, User user)? unknown,
    TResult Function(AuthenticationStatus status, User user)? authenticated,
    TResult Function(AuthenticationStatus status, User user)? unAuthenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(status, user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_UnAuthenticated value) unAuthenticated,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unknown value)? unknown,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_UnAuthenticated value)? unAuthenticated,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unknown value)? unknown,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_UnAuthenticated value)? unAuthenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class _Authenticated implements AuthenticationState {
  factory _Authenticated(
      {final AuthenticationStatus status,
      required final User user}) = _$_Authenticated;

  @override
  AuthenticationStatus get status;
  @override
  User get user;
  @override
  @JsonKey(ignore: true)
  _$$_AuthenticatedCopyWith<_$_Authenticated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UnAuthenticatedCopyWith<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  factory _$$_UnAuthenticatedCopyWith(
          _$_UnAuthenticated value, $Res Function(_$_UnAuthenticated) then) =
      __$$_UnAuthenticatedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AuthenticationStatus status, User user});
}

/// @nodoc
class __$$_UnAuthenticatedCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$_UnAuthenticated>
    implements _$$_UnAuthenticatedCopyWith<$Res> {
  __$$_UnAuthenticatedCopyWithImpl(
      _$_UnAuthenticated _value, $Res Function(_$_UnAuthenticated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? user = null,
  }) {
    return _then(_$_UnAuthenticated(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AuthenticationStatus,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$_UnAuthenticated implements _UnAuthenticated {
  _$_UnAuthenticated(
      {this.status = AuthenticationStatus.unauthenticated,
      this.user = User.empty});

  @override
  @JsonKey()
  final AuthenticationStatus status;
  @override
  @JsonKey()
  final User user;

  @override
  String toString() {
    return 'AuthenticationState.unAuthenticated(status: $status, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UnAuthenticated &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UnAuthenticatedCopyWith<_$_UnAuthenticated> get copyWith =>
      __$$_UnAuthenticatedCopyWithImpl<_$_UnAuthenticated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthenticationStatus status, User user) unknown,
    required TResult Function(AuthenticationStatus status, User user)
        authenticated,
    required TResult Function(AuthenticationStatus status, User user)
        unAuthenticated,
  }) {
    return unAuthenticated(status, user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthenticationStatus status, User user)? unknown,
    TResult? Function(AuthenticationStatus status, User user)? authenticated,
    TResult? Function(AuthenticationStatus status, User user)? unAuthenticated,
  }) {
    return unAuthenticated?.call(status, user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthenticationStatus status, User user)? unknown,
    TResult Function(AuthenticationStatus status, User user)? authenticated,
    TResult Function(AuthenticationStatus status, User user)? unAuthenticated,
    required TResult orElse(),
  }) {
    if (unAuthenticated != null) {
      return unAuthenticated(status, user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unknown value) unknown,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_UnAuthenticated value) unAuthenticated,
  }) {
    return unAuthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unknown value)? unknown,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_UnAuthenticated value)? unAuthenticated,
  }) {
    return unAuthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unknown value)? unknown,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_UnAuthenticated value)? unAuthenticated,
    required TResult orElse(),
  }) {
    if (unAuthenticated != null) {
      return unAuthenticated(this);
    }
    return orElse();
  }
}

abstract class _UnAuthenticated implements AuthenticationState {
  factory _UnAuthenticated(
      {final AuthenticationStatus status,
      final User user}) = _$_UnAuthenticated;

  @override
  AuthenticationStatus get status;
  @override
  User get user;
  @override
  @JsonKey(ignore: true)
  _$$_UnAuthenticatedCopyWith<_$_UnAuthenticated> get copyWith =>
      throw _privateConstructorUsedError;
}
