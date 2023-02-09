// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) userChanged,
    required TResult Function() logoutRequest,
    required TResult Function() triggerAuthRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user)? userChanged,
    TResult? Function()? logoutRequest,
    TResult? Function()? triggerAuthRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? userChanged,
    TResult Function()? logoutRequest,
    TResult Function()? triggerAuthRequest,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserChanged value) userChanged,
    required TResult Function(_LogoutRequest value) logoutRequest,
    required TResult Function(_TriggerAuth value) triggerAuthRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserChanged value)? userChanged,
    TResult? Function(_LogoutRequest value)? logoutRequest,
    TResult? Function(_TriggerAuth value)? triggerAuthRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserChanged value)? userChanged,
    TResult Function(_LogoutRequest value)? logoutRequest,
    TResult Function(_TriggerAuth value)? triggerAuthRequest,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_UserChangedCopyWith<$Res> {
  factory _$$_UserChangedCopyWith(
          _$_UserChanged value, $Res Function(_$_UserChanged) then) =
      __$$_UserChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$_UserChangedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_UserChanged>
    implements _$$_UserChangedCopyWith<$Res> {
  __$$_UserChangedCopyWithImpl(
      _$_UserChanged _value, $Res Function(_$_UserChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$_UserChanged(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$_UserChanged implements _UserChanged {
  const _$_UserChanged(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'AuthEvent.userChanged(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserChanged &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserChangedCopyWith<_$_UserChanged> get copyWith =>
      __$$_UserChangedCopyWithImpl<_$_UserChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) userChanged,
    required TResult Function() logoutRequest,
    required TResult Function() triggerAuthRequest,
  }) {
    return userChanged(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user)? userChanged,
    TResult? Function()? logoutRequest,
    TResult? Function()? triggerAuthRequest,
  }) {
    return userChanged?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? userChanged,
    TResult Function()? logoutRequest,
    TResult Function()? triggerAuthRequest,
    required TResult orElse(),
  }) {
    if (userChanged != null) {
      return userChanged(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserChanged value) userChanged,
    required TResult Function(_LogoutRequest value) logoutRequest,
    required TResult Function(_TriggerAuth value) triggerAuthRequest,
  }) {
    return userChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserChanged value)? userChanged,
    TResult? Function(_LogoutRequest value)? logoutRequest,
    TResult? Function(_TriggerAuth value)? triggerAuthRequest,
  }) {
    return userChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserChanged value)? userChanged,
    TResult Function(_LogoutRequest value)? logoutRequest,
    TResult Function(_TriggerAuth value)? triggerAuthRequest,
    required TResult orElse(),
  }) {
    if (userChanged != null) {
      return userChanged(this);
    }
    return orElse();
  }
}

abstract class _UserChanged implements AuthEvent {
  const factory _UserChanged(final User user) = _$_UserChanged;

  User get user;
  @JsonKey(ignore: true)
  _$$_UserChangedCopyWith<_$_UserChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LogoutRequestCopyWith<$Res> {
  factory _$$_LogoutRequestCopyWith(
          _$_LogoutRequest value, $Res Function(_$_LogoutRequest) then) =
      __$$_LogoutRequestCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LogoutRequestCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_LogoutRequest>
    implements _$$_LogoutRequestCopyWith<$Res> {
  __$$_LogoutRequestCopyWithImpl(
      _$_LogoutRequest _value, $Res Function(_$_LogoutRequest) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LogoutRequest implements _LogoutRequest {
  const _$_LogoutRequest();

  @override
  String toString() {
    return 'AuthEvent.logoutRequest()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LogoutRequest);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) userChanged,
    required TResult Function() logoutRequest,
    required TResult Function() triggerAuthRequest,
  }) {
    return logoutRequest();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user)? userChanged,
    TResult? Function()? logoutRequest,
    TResult? Function()? triggerAuthRequest,
  }) {
    return logoutRequest?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? userChanged,
    TResult Function()? logoutRequest,
    TResult Function()? triggerAuthRequest,
    required TResult orElse(),
  }) {
    if (logoutRequest != null) {
      return logoutRequest();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserChanged value) userChanged,
    required TResult Function(_LogoutRequest value) logoutRequest,
    required TResult Function(_TriggerAuth value) triggerAuthRequest,
  }) {
    return logoutRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserChanged value)? userChanged,
    TResult? Function(_LogoutRequest value)? logoutRequest,
    TResult? Function(_TriggerAuth value)? triggerAuthRequest,
  }) {
    return logoutRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserChanged value)? userChanged,
    TResult Function(_LogoutRequest value)? logoutRequest,
    TResult Function(_TriggerAuth value)? triggerAuthRequest,
    required TResult orElse(),
  }) {
    if (logoutRequest != null) {
      return logoutRequest(this);
    }
    return orElse();
  }
}

abstract class _LogoutRequest implements AuthEvent {
  const factory _LogoutRequest() = _$_LogoutRequest;
}

/// @nodoc
abstract class _$$_TriggerAuthCopyWith<$Res> {
  factory _$$_TriggerAuthCopyWith(
          _$_TriggerAuth value, $Res Function(_$_TriggerAuth) then) =
      __$$_TriggerAuthCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_TriggerAuthCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_TriggerAuth>
    implements _$$_TriggerAuthCopyWith<$Res> {
  __$$_TriggerAuthCopyWithImpl(
      _$_TriggerAuth _value, $Res Function(_$_TriggerAuth) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_TriggerAuth implements _TriggerAuth {
  const _$_TriggerAuth();

  @override
  String toString() {
    return 'AuthEvent.triggerAuthRequest()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_TriggerAuth);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) userChanged,
    required TResult Function() logoutRequest,
    required TResult Function() triggerAuthRequest,
  }) {
    return triggerAuthRequest();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user)? userChanged,
    TResult? Function()? logoutRequest,
    TResult? Function()? triggerAuthRequest,
  }) {
    return triggerAuthRequest?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? userChanged,
    TResult Function()? logoutRequest,
    TResult Function()? triggerAuthRequest,
    required TResult orElse(),
  }) {
    if (triggerAuthRequest != null) {
      return triggerAuthRequest();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserChanged value) userChanged,
    required TResult Function(_LogoutRequest value) logoutRequest,
    required TResult Function(_TriggerAuth value) triggerAuthRequest,
  }) {
    return triggerAuthRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserChanged value)? userChanged,
    TResult? Function(_LogoutRequest value)? logoutRequest,
    TResult? Function(_TriggerAuth value)? triggerAuthRequest,
  }) {
    return triggerAuthRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserChanged value)? userChanged,
    TResult Function(_LogoutRequest value)? logoutRequest,
    TResult Function(_TriggerAuth value)? triggerAuthRequest,
    required TResult orElse(),
  }) {
    if (triggerAuthRequest != null) {
      return triggerAuthRequest(this);
    }
    return orElse();
  }
}

abstract class _TriggerAuth implements AuthEvent {
  const factory _TriggerAuth() = _$_TriggerAuth;
}

/// @nodoc
mixin _$AuthState {
  User get user => throw _privateConstructorUsedError;
  AuthStatus get status => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user, AuthStatus status) authenticated,
    required TResult Function(User user, AuthStatus status) splash,
    required TResult Function(User user, AuthStatus status) unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user, AuthStatus status)? authenticated,
    TResult? Function(User user, AuthStatus status)? splash,
    TResult? Function(User user, AuthStatus status)? unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user, AuthStatus status)? authenticated,
    TResult Function(User user, AuthStatus status)? splash,
    TResult Function(User user, AuthStatus status)? unauthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Splash value) splash,
    required TResult Function(_Unauthenticated value) unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Splash value)? splash,
    TResult? Function(_Unauthenticated value)? unauthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Splash value)? splash,
    TResult Function(_Unauthenticated value)? unauthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call({User user, AuthStatus status});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AuthStatus,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AuthenticatedCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$_AuthenticatedCopyWith(
          _$_Authenticated value, $Res Function(_$_Authenticated) then) =
      __$$_AuthenticatedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({User user, AuthStatus status});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$_AuthenticatedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_Authenticated>
    implements _$$_AuthenticatedCopyWith<$Res> {
  __$$_AuthenticatedCopyWithImpl(
      _$_Authenticated _value, $Res Function(_$_Authenticated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? status = null,
  }) {
    return _then(_$_Authenticated(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AuthStatus,
    ));
  }
}

/// @nodoc

class _$_Authenticated extends _Authenticated {
  _$_Authenticated({required this.user, this.status = AuthStatus.authenticated})
      : super._();

  @override
  final User user;
  @override
  @JsonKey()
  final AuthStatus status;

  @override
  String toString() {
    return 'AuthState.authenticated(user: $user, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Authenticated &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthenticatedCopyWith<_$_Authenticated> get copyWith =>
      __$$_AuthenticatedCopyWithImpl<_$_Authenticated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user, AuthStatus status) authenticated,
    required TResult Function(User user, AuthStatus status) splash,
    required TResult Function(User user, AuthStatus status) unauthenticated,
  }) {
    return authenticated(user, status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user, AuthStatus status)? authenticated,
    TResult? Function(User user, AuthStatus status)? splash,
    TResult? Function(User user, AuthStatus status)? unauthenticated,
  }) {
    return authenticated?.call(user, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user, AuthStatus status)? authenticated,
    TResult Function(User user, AuthStatus status)? splash,
    TResult Function(User user, AuthStatus status)? unauthenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(user, status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Splash value) splash,
    required TResult Function(_Unauthenticated value) unauthenticated,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Splash value)? splash,
    TResult? Function(_Unauthenticated value)? unauthenticated,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Splash value)? splash,
    TResult Function(_Unauthenticated value)? unauthenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class _Authenticated extends AuthState {
  factory _Authenticated({required final User user, final AuthStatus status}) =
      _$_Authenticated;
  _Authenticated._() : super._();

  @override
  User get user;
  @override
  AuthStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$_AuthenticatedCopyWith<_$_Authenticated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SplashCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$$_SplashCopyWith(_$_Splash value, $Res Function(_$_Splash) then) =
      __$$_SplashCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({User user, AuthStatus status});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$_SplashCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_Splash>
    implements _$$_SplashCopyWith<$Res> {
  __$$_SplashCopyWithImpl(_$_Splash _value, $Res Function(_$_Splash) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? status = null,
  }) {
    return _then(_$_Splash(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AuthStatus,
    ));
  }
}

/// @nodoc

class _$_Splash extends _Splash {
  _$_Splash({this.user = User.empty, this.status = AuthStatus.unauthenticated})
      : super._();

  @override
  @JsonKey()
  final User user;
  @override
  @JsonKey()
  final AuthStatus status;

  @override
  String toString() {
    return 'AuthState.splash(user: $user, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Splash &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SplashCopyWith<_$_Splash> get copyWith =>
      __$$_SplashCopyWithImpl<_$_Splash>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user, AuthStatus status) authenticated,
    required TResult Function(User user, AuthStatus status) splash,
    required TResult Function(User user, AuthStatus status) unauthenticated,
  }) {
    return splash(user, status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user, AuthStatus status)? authenticated,
    TResult? Function(User user, AuthStatus status)? splash,
    TResult? Function(User user, AuthStatus status)? unauthenticated,
  }) {
    return splash?.call(user, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user, AuthStatus status)? authenticated,
    TResult Function(User user, AuthStatus status)? splash,
    TResult Function(User user, AuthStatus status)? unauthenticated,
    required TResult orElse(),
  }) {
    if (splash != null) {
      return splash(user, status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Splash value) splash,
    required TResult Function(_Unauthenticated value) unauthenticated,
  }) {
    return splash(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Splash value)? splash,
    TResult? Function(_Unauthenticated value)? unauthenticated,
  }) {
    return splash?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Splash value)? splash,
    TResult Function(_Unauthenticated value)? unauthenticated,
    required TResult orElse(),
  }) {
    if (splash != null) {
      return splash(this);
    }
    return orElse();
  }
}

abstract class _Splash extends AuthState {
  factory _Splash({final User user, final AuthStatus status}) = _$_Splash;
  _Splash._() : super._();

  @override
  User get user;
  @override
  AuthStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$_SplashCopyWith<_$_Splash> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UnauthenticatedCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$_UnauthenticatedCopyWith(
          _$_Unauthenticated value, $Res Function(_$_Unauthenticated) then) =
      __$$_UnauthenticatedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({User user, AuthStatus status});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$_UnauthenticatedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_Unauthenticated>
    implements _$$_UnauthenticatedCopyWith<$Res> {
  __$$_UnauthenticatedCopyWithImpl(
      _$_Unauthenticated _value, $Res Function(_$_Unauthenticated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? status = null,
  }) {
    return _then(_$_Unauthenticated(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AuthStatus,
    ));
  }
}

/// @nodoc

class _$_Unauthenticated extends _Unauthenticated {
  _$_Unauthenticated(
      {this.user = User.empty, this.status = AuthStatus.unauthenticated})
      : super._();

  @override
  @JsonKey()
  final User user;
  @override
  @JsonKey()
  final AuthStatus status;

  @override
  String toString() {
    return 'AuthState.unauthenticated(user: $user, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Unauthenticated &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UnauthenticatedCopyWith<_$_Unauthenticated> get copyWith =>
      __$$_UnauthenticatedCopyWithImpl<_$_Unauthenticated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user, AuthStatus status) authenticated,
    required TResult Function(User user, AuthStatus status) splash,
    required TResult Function(User user, AuthStatus status) unauthenticated,
  }) {
    return unauthenticated(user, status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(User user, AuthStatus status)? authenticated,
    TResult? Function(User user, AuthStatus status)? splash,
    TResult? Function(User user, AuthStatus status)? unauthenticated,
  }) {
    return unauthenticated?.call(user, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user, AuthStatus status)? authenticated,
    TResult Function(User user, AuthStatus status)? splash,
    TResult Function(User user, AuthStatus status)? unauthenticated,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(user, status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Splash value) splash,
    required TResult Function(_Unauthenticated value) unauthenticated,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Splash value)? splash,
    TResult? Function(_Unauthenticated value)? unauthenticated,
  }) {
    return unauthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Splash value)? splash,
    TResult Function(_Unauthenticated value)? unauthenticated,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class _Unauthenticated extends AuthState {
  factory _Unauthenticated({final User user, final AuthStatus status}) =
      _$_Unauthenticated;
  _Unauthenticated._() : super._();

  @override
  User get user;
  @override
  AuthStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$_UnauthenticatedCopyWith<_$_Unauthenticated> get copyWith =>
      throw _privateConstructorUsedError;
}
