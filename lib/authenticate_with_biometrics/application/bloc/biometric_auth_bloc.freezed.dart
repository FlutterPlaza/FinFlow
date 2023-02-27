// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'biometric_auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BiometricAuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkSupport,
    required TResult Function() authenticate,
    required TResult Function() cancelAuthentication,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkSupport,
    TResult? Function()? authenticate,
    TResult? Function()? cancelAuthentication,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkSupport,
    TResult Function()? authenticate,
    TResult Function()? cancelAuthentication,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckSupport value) checkSupport,
    required TResult Function(_Authenticate value) authenticate,
    required TResult Function(_CancelAuthentication value) cancelAuthentication,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckSupport value)? checkSupport,
    TResult? Function(_Authenticate value)? authenticate,
    TResult? Function(_CancelAuthentication value)? cancelAuthentication,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckSupport value)? checkSupport,
    TResult Function(_Authenticate value)? authenticate,
    TResult Function(_CancelAuthentication value)? cancelAuthentication,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BiometricAuthEventCopyWith<$Res> {
  factory $BiometricAuthEventCopyWith(
          BiometricAuthEvent value, $Res Function(BiometricAuthEvent) then) =
      _$BiometricAuthEventCopyWithImpl<$Res, BiometricAuthEvent>;
}

/// @nodoc
class _$BiometricAuthEventCopyWithImpl<$Res, $Val extends BiometricAuthEvent>
    implements $BiometricAuthEventCopyWith<$Res> {
  _$BiometricAuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_CheckSupportCopyWith<$Res> {
  factory _$$_CheckSupportCopyWith(
          _$_CheckSupport value, $Res Function(_$_CheckSupport) then) =
      __$$_CheckSupportCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CheckSupportCopyWithImpl<$Res>
    extends _$BiometricAuthEventCopyWithImpl<$Res, _$_CheckSupport>
    implements _$$_CheckSupportCopyWith<$Res> {
  __$$_CheckSupportCopyWithImpl(
      _$_CheckSupport _value, $Res Function(_$_CheckSupport) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CheckSupport implements _CheckSupport {
  const _$_CheckSupport();

  @override
  String toString() {
    return 'BiometricAuthEvent.checkSupport()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CheckSupport);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkSupport,
    required TResult Function() authenticate,
    required TResult Function() cancelAuthentication,
  }) {
    return checkSupport();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkSupport,
    TResult? Function()? authenticate,
    TResult? Function()? cancelAuthentication,
  }) {
    return checkSupport?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkSupport,
    TResult Function()? authenticate,
    TResult Function()? cancelAuthentication,
    required TResult orElse(),
  }) {
    if (checkSupport != null) {
      return checkSupport();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckSupport value) checkSupport,
    required TResult Function(_Authenticate value) authenticate,
    required TResult Function(_CancelAuthentication value) cancelAuthentication,
  }) {
    return checkSupport(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckSupport value)? checkSupport,
    TResult? Function(_Authenticate value)? authenticate,
    TResult? Function(_CancelAuthentication value)? cancelAuthentication,
  }) {
    return checkSupport?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckSupport value)? checkSupport,
    TResult Function(_Authenticate value)? authenticate,
    TResult Function(_CancelAuthentication value)? cancelAuthentication,
    required TResult orElse(),
  }) {
    if (checkSupport != null) {
      return checkSupport(this);
    }
    return orElse();
  }
}

abstract class _CheckSupport implements BiometricAuthEvent {
  const factory _CheckSupport() = _$_CheckSupport;
}

/// @nodoc
abstract class _$$_AuthenticateCopyWith<$Res> {
  factory _$$_AuthenticateCopyWith(
          _$_Authenticate value, $Res Function(_$_Authenticate) then) =
      __$$_AuthenticateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthenticateCopyWithImpl<$Res>
    extends _$BiometricAuthEventCopyWithImpl<$Res, _$_Authenticate>
    implements _$$_AuthenticateCopyWith<$Res> {
  __$$_AuthenticateCopyWithImpl(
      _$_Authenticate _value, $Res Function(_$_Authenticate) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Authenticate implements _Authenticate {
  const _$_Authenticate();

  @override
  String toString() {
    return 'BiometricAuthEvent.authenticate()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Authenticate);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkSupport,
    required TResult Function() authenticate,
    required TResult Function() cancelAuthentication,
  }) {
    return authenticate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkSupport,
    TResult? Function()? authenticate,
    TResult? Function()? cancelAuthentication,
  }) {
    return authenticate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkSupport,
    TResult Function()? authenticate,
    TResult Function()? cancelAuthentication,
    required TResult orElse(),
  }) {
    if (authenticate != null) {
      return authenticate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckSupport value) checkSupport,
    required TResult Function(_Authenticate value) authenticate,
    required TResult Function(_CancelAuthentication value) cancelAuthentication,
  }) {
    return authenticate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckSupport value)? checkSupport,
    TResult? Function(_Authenticate value)? authenticate,
    TResult? Function(_CancelAuthentication value)? cancelAuthentication,
  }) {
    return authenticate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckSupport value)? checkSupport,
    TResult Function(_Authenticate value)? authenticate,
    TResult Function(_CancelAuthentication value)? cancelAuthentication,
    required TResult orElse(),
  }) {
    if (authenticate != null) {
      return authenticate(this);
    }
    return orElse();
  }
}

abstract class _Authenticate implements BiometricAuthEvent {
  const factory _Authenticate() = _$_Authenticate;
}

/// @nodoc
abstract class _$$_CancelAuthenticationCopyWith<$Res> {
  factory _$$_CancelAuthenticationCopyWith(_$_CancelAuthentication value,
          $Res Function(_$_CancelAuthentication) then) =
      __$$_CancelAuthenticationCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CancelAuthenticationCopyWithImpl<$Res>
    extends _$BiometricAuthEventCopyWithImpl<$Res, _$_CancelAuthentication>
    implements _$$_CancelAuthenticationCopyWith<$Res> {
  __$$_CancelAuthenticationCopyWithImpl(_$_CancelAuthentication _value,
      $Res Function(_$_CancelAuthentication) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CancelAuthentication implements _CancelAuthentication {
  const _$_CancelAuthentication();

  @override
  String toString() {
    return 'BiometricAuthEvent.cancelAuthentication()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CancelAuthentication);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkSupport,
    required TResult Function() authenticate,
    required TResult Function() cancelAuthentication,
  }) {
    return cancelAuthentication();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkSupport,
    TResult? Function()? authenticate,
    TResult? Function()? cancelAuthentication,
  }) {
    return cancelAuthentication?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkSupport,
    TResult Function()? authenticate,
    TResult Function()? cancelAuthentication,
    required TResult orElse(),
  }) {
    if (cancelAuthentication != null) {
      return cancelAuthentication();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckSupport value) checkSupport,
    required TResult Function(_Authenticate value) authenticate,
    required TResult Function(_CancelAuthentication value) cancelAuthentication,
  }) {
    return cancelAuthentication(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckSupport value)? checkSupport,
    TResult? Function(_Authenticate value)? authenticate,
    TResult? Function(_CancelAuthentication value)? cancelAuthentication,
  }) {
    return cancelAuthentication?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckSupport value)? checkSupport,
    TResult Function(_Authenticate value)? authenticate,
    TResult Function(_CancelAuthentication value)? cancelAuthentication,
    required TResult orElse(),
  }) {
    if (cancelAuthentication != null) {
      return cancelAuthentication(this);
    }
    return orElse();
  }
}

abstract class _CancelAuthentication implements BiometricAuthEvent {
  const factory _CancelAuthentication() = _$_CancelAuthentication;
}

/// @nodoc
mixin _$BiometricAuthState {
  bool get canAuthenticate => throw _privateConstructorUsedError;
  BiometricAuthStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BiometricAuthStateCopyWith<BiometricAuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BiometricAuthStateCopyWith<$Res> {
  factory $BiometricAuthStateCopyWith(
          BiometricAuthState value, $Res Function(BiometricAuthState) then) =
      _$BiometricAuthStateCopyWithImpl<$Res, BiometricAuthState>;
  @useResult
  $Res call({bool canAuthenticate, BiometricAuthStatus status});

  $BiometricAuthStatusCopyWith<$Res> get status;
}

/// @nodoc
class _$BiometricAuthStateCopyWithImpl<$Res, $Val extends BiometricAuthState>
    implements $BiometricAuthStateCopyWith<$Res> {
  _$BiometricAuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? canAuthenticate = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      canAuthenticate: null == canAuthenticate
          ? _value.canAuthenticate
          : canAuthenticate // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BiometricAuthStatus,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BiometricAuthStatusCopyWith<$Res> get status {
    return $BiometricAuthStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_BiometricAuthStateCopyWith<$Res>
    implements $BiometricAuthStateCopyWith<$Res> {
  factory _$$_BiometricAuthStateCopyWith(_$_BiometricAuthState value,
          $Res Function(_$_BiometricAuthState) then) =
      __$$_BiometricAuthStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool canAuthenticate, BiometricAuthStatus status});

  @override
  $BiometricAuthStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$_BiometricAuthStateCopyWithImpl<$Res>
    extends _$BiometricAuthStateCopyWithImpl<$Res, _$_BiometricAuthState>
    implements _$$_BiometricAuthStateCopyWith<$Res> {
  __$$_BiometricAuthStateCopyWithImpl(
      _$_BiometricAuthState _value, $Res Function(_$_BiometricAuthState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? canAuthenticate = null,
    Object? status = null,
  }) {
    return _then(_$_BiometricAuthState(
      canAuthenticate: null == canAuthenticate
          ? _value.canAuthenticate
          : canAuthenticate // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BiometricAuthStatus,
    ));
  }
}

/// @nodoc

class _$_BiometricAuthState extends _BiometricAuthState {
  const _$_BiometricAuthState(
      {this.canAuthenticate = false,
      this.status = const BiometricAuthStatus.initial()})
      : super._();

  @override
  @JsonKey()
  final bool canAuthenticate;
  @override
  @JsonKey()
  final BiometricAuthStatus status;

  @override
  String toString() {
    return 'BiometricAuthState(canAuthenticate: $canAuthenticate, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BiometricAuthState &&
            (identical(other.canAuthenticate, canAuthenticate) ||
                other.canAuthenticate == canAuthenticate) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, canAuthenticate, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BiometricAuthStateCopyWith<_$_BiometricAuthState> get copyWith =>
      __$$_BiometricAuthStateCopyWithImpl<_$_BiometricAuthState>(
          this, _$identity);
}

abstract class _BiometricAuthState extends BiometricAuthState {
  const factory _BiometricAuthState(
      {final bool canAuthenticate,
      final BiometricAuthStatus status}) = _$_BiometricAuthState;
  const _BiometricAuthState._() : super._();

  @override
  bool get canAuthenticate;
  @override
  BiometricAuthStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$_BiometricAuthStateCopyWith<_$_BiometricAuthState> get copyWith =>
      throw _privateConstructorUsedError;
}
