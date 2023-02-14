// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'facebook_auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FacebookAuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() signIn,
    required TResult Function() signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? signIn,
    TResult? Function()? signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? signIn,
    TResult Function()? signOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(FacebookSignIn value) signIn,
    required TResult Function(FacebookSignOut value) signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(FacebookSignIn value)? signIn,
    TResult? Function(FacebookSignOut value)? signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(FacebookSignIn value)? signIn,
    TResult Function(FacebookSignOut value)? signOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FacebookAuthEventCopyWith<$Res> {
  factory $FacebookAuthEventCopyWith(
          FacebookAuthEvent value, $Res Function(FacebookAuthEvent) then) =
      _$FacebookAuthEventCopyWithImpl<$Res, FacebookAuthEvent>;
}

/// @nodoc
class _$FacebookAuthEventCopyWithImpl<$Res, $Val extends FacebookAuthEvent>
    implements $FacebookAuthEventCopyWith<$Res> {
  _$FacebookAuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$FacebookAuthEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'FacebookAuthEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() signIn,
    required TResult Function() signOut,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? signIn,
    TResult? Function()? signOut,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? signIn,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(FacebookSignIn value) signIn,
    required TResult Function(FacebookSignOut value) signOut,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(FacebookSignIn value)? signIn,
    TResult? Function(FacebookSignOut value)? signOut,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(FacebookSignIn value)? signIn,
    TResult Function(FacebookSignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements FacebookAuthEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$FacebookSignInCopyWith<$Res> {
  factory _$$FacebookSignInCopyWith(
          _$FacebookSignIn value, $Res Function(_$FacebookSignIn) then) =
      __$$FacebookSignInCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FacebookSignInCopyWithImpl<$Res>
    extends _$FacebookAuthEventCopyWithImpl<$Res, _$FacebookSignIn>
    implements _$$FacebookSignInCopyWith<$Res> {
  __$$FacebookSignInCopyWithImpl(
      _$FacebookSignIn _value, $Res Function(_$FacebookSignIn) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FacebookSignIn implements FacebookSignIn {
  _$FacebookSignIn();

  @override
  String toString() {
    return 'FacebookAuthEvent.signIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FacebookSignIn);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() signIn,
    required TResult Function() signOut,
  }) {
    return signIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? signIn,
    TResult? Function()? signOut,
  }) {
    return signIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? signIn,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(FacebookSignIn value) signIn,
    required TResult Function(FacebookSignOut value) signOut,
  }) {
    return signIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(FacebookSignIn value)? signIn,
    TResult? Function(FacebookSignOut value)? signOut,
  }) {
    return signIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(FacebookSignIn value)? signIn,
    TResult Function(FacebookSignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(this);
    }
    return orElse();
  }
}

abstract class FacebookSignIn implements FacebookAuthEvent {
  factory FacebookSignIn() = _$FacebookSignIn;
}

/// @nodoc
abstract class _$$FacebookSignOutCopyWith<$Res> {
  factory _$$FacebookSignOutCopyWith(
          _$FacebookSignOut value, $Res Function(_$FacebookSignOut) then) =
      __$$FacebookSignOutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FacebookSignOutCopyWithImpl<$Res>
    extends _$FacebookAuthEventCopyWithImpl<$Res, _$FacebookSignOut>
    implements _$$FacebookSignOutCopyWith<$Res> {
  __$$FacebookSignOutCopyWithImpl(
      _$FacebookSignOut _value, $Res Function(_$FacebookSignOut) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FacebookSignOut implements FacebookSignOut {
  _$FacebookSignOut();

  @override
  String toString() {
    return 'FacebookAuthEvent.signOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FacebookSignOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() signIn,
    required TResult Function() signOut,
  }) {
    return signOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? signIn,
    TResult? Function()? signOut,
  }) {
    return signOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? signIn,
    TResult Function()? signOut,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(FacebookSignIn value) signIn,
    required TResult Function(FacebookSignOut value) signOut,
  }) {
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(FacebookSignIn value)? signIn,
    TResult? Function(FacebookSignOut value)? signOut,
  }) {
    return signOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(FacebookSignIn value)? signIn,
    TResult Function(FacebookSignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut(this);
    }
    return orElse();
  }
}

abstract class FacebookSignOut implements FacebookAuthEvent {
  factory FacebookSignOut() = _$FacebookSignOut;
}

/// @nodoc
mixin _$FacebookAuthState {
  bool get isLoading => throw _privateConstructorUsedError;
  Either<AuthFailure, User> get failureOrUser =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FacebookAuthStateCopyWith<FacebookAuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FacebookAuthStateCopyWith<$Res> {
  factory $FacebookAuthStateCopyWith(
          FacebookAuthState value, $Res Function(FacebookAuthState) then) =
      _$FacebookAuthStateCopyWithImpl<$Res, FacebookAuthState>;
  @useResult
  $Res call({bool isLoading, Either<AuthFailure, User> failureOrUser});
}

/// @nodoc
class _$FacebookAuthStateCopyWithImpl<$Res, $Val extends FacebookAuthState>
    implements $FacebookAuthStateCopyWith<$Res> {
  _$FacebookAuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? failureOrUser = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrUser: null == failureOrUser
          ? _value.failureOrUser
          : failureOrUser // ignore: cast_nullable_to_non_nullable
              as Either<AuthFailure, User>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FacebookAuthStateCopyWith<$Res>
    implements $FacebookAuthStateCopyWith<$Res> {
  factory _$$_FacebookAuthStateCopyWith(_$_FacebookAuthState value,
          $Res Function(_$_FacebookAuthState) then) =
      __$$_FacebookAuthStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, Either<AuthFailure, User> failureOrUser});
}

/// @nodoc
class __$$_FacebookAuthStateCopyWithImpl<$Res>
    extends _$FacebookAuthStateCopyWithImpl<$Res, _$_FacebookAuthState>
    implements _$$_FacebookAuthStateCopyWith<$Res> {
  __$$_FacebookAuthStateCopyWithImpl(
      _$_FacebookAuthState _value, $Res Function(_$_FacebookAuthState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? failureOrUser = null,
  }) {
    return _then(_$_FacebookAuthState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrUser: null == failureOrUser
          ? _value.failureOrUser
          : failureOrUser // ignore: cast_nullable_to_non_nullable
              as Either<AuthFailure, User>,
    ));
  }
}

/// @nodoc

class _$_FacebookAuthState implements _FacebookAuthState {
  const _$_FacebookAuthState(
      {this.isLoading = false, this.failureOrUser = const Right(User.empty)});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final Either<AuthFailure, User> failureOrUser;

  @override
  String toString() {
    return 'FacebookAuthState(isLoading: $isLoading, failureOrUser: $failureOrUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FacebookAuthState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.failureOrUser, failureOrUser) ||
                other.failureOrUser == failureOrUser));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, failureOrUser);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FacebookAuthStateCopyWith<_$_FacebookAuthState> get copyWith =>
      __$$_FacebookAuthStateCopyWithImpl<_$_FacebookAuthState>(
          this, _$identity);
}

abstract class _FacebookAuthState implements FacebookAuthState {
  const factory _FacebookAuthState(
      {final bool isLoading,
      final Either<AuthFailure, User> failureOrUser}) = _$_FacebookAuthState;

  @override
  bool get isLoading;
  @override
  Either<AuthFailure, User> get failureOrUser;
  @override
  @JsonKey(ignore: true)
  _$$_FacebookAuthStateCopyWith<_$_FacebookAuthState> get copyWith =>
      throw _privateConstructorUsedError;
}
