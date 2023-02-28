// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'twitter_authentication_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TwitterAuthenticationEvent {
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
    required TResult Function(TwitterSignIn value) signIn,
    required TResult Function(TwitterSignOut value) signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(TwitterSignIn value)? signIn,
    TResult? Function(TwitterSignOut value)? signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(TwitterSignIn value)? signIn,
    TResult Function(TwitterSignOut value)? signOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TwitterAuthenticationEventCopyWith<$Res> {
  factory $TwitterAuthenticationEventCopyWith(TwitterAuthenticationEvent value,
          $Res Function(TwitterAuthenticationEvent) then) =
      _$TwitterAuthenticationEventCopyWithImpl<$Res,
          TwitterAuthenticationEvent>;
}

/// @nodoc
class _$TwitterAuthenticationEventCopyWithImpl<$Res,
        $Val extends TwitterAuthenticationEvent>
    implements $TwitterAuthenticationEventCopyWith<$Res> {
  _$TwitterAuthenticationEventCopyWithImpl(this._value, this._then);

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
    extends _$TwitterAuthenticationEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'TwitterAuthenticationEvent.started()';
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
    required TResult Function(TwitterSignIn value) signIn,
    required TResult Function(TwitterSignOut value) signOut,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(TwitterSignIn value)? signIn,
    TResult? Function(TwitterSignOut value)? signOut,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(TwitterSignIn value)? signIn,
    TResult Function(TwitterSignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements TwitterAuthenticationEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$TwitterSignInCopyWith<$Res> {
  factory _$$TwitterSignInCopyWith(
          _$TwitterSignIn value, $Res Function(_$TwitterSignIn) then) =
      __$$TwitterSignInCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TwitterSignInCopyWithImpl<$Res>
    extends _$TwitterAuthenticationEventCopyWithImpl<$Res, _$TwitterSignIn>
    implements _$$TwitterSignInCopyWith<$Res> {
  __$$TwitterSignInCopyWithImpl(
      _$TwitterSignIn _value, $Res Function(_$TwitterSignIn) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TwitterSignIn implements TwitterSignIn {
  _$TwitterSignIn();

  @override
  String toString() {
    return 'TwitterAuthenticationEvent.signIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TwitterSignIn);
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
    required TResult Function(TwitterSignIn value) signIn,
    required TResult Function(TwitterSignOut value) signOut,
  }) {
    return signIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(TwitterSignIn value)? signIn,
    TResult? Function(TwitterSignOut value)? signOut,
  }) {
    return signIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(TwitterSignIn value)? signIn,
    TResult Function(TwitterSignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(this);
    }
    return orElse();
  }
}

abstract class TwitterSignIn implements TwitterAuthenticationEvent {
  factory TwitterSignIn() = _$TwitterSignIn;
}

/// @nodoc
abstract class _$$TwitterSignOutCopyWith<$Res> {
  factory _$$TwitterSignOutCopyWith(
          _$TwitterSignOut value, $Res Function(_$TwitterSignOut) then) =
      __$$TwitterSignOutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TwitterSignOutCopyWithImpl<$Res>
    extends _$TwitterAuthenticationEventCopyWithImpl<$Res, _$TwitterSignOut>
    implements _$$TwitterSignOutCopyWith<$Res> {
  __$$TwitterSignOutCopyWithImpl(
      _$TwitterSignOut _value, $Res Function(_$TwitterSignOut) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TwitterSignOut implements TwitterSignOut {
  _$TwitterSignOut();

  @override
  String toString() {
    return 'TwitterAuthenticationEvent.signOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TwitterSignOut);
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
    required TResult Function(TwitterSignIn value) signIn,
    required TResult Function(TwitterSignOut value) signOut,
  }) {
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(TwitterSignIn value)? signIn,
    TResult? Function(TwitterSignOut value)? signOut,
  }) {
    return signOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(TwitterSignIn value)? signIn,
    TResult Function(TwitterSignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut(this);
    }
    return orElse();
  }
}

abstract class TwitterSignOut implements TwitterAuthenticationEvent {
  factory TwitterSignOut() = _$TwitterSignOut;
}

/// @nodoc
mixin _$TwitterAuthenticationState {
  bool get isLoading => throw _privateConstructorUsedError;
  Either<AuthFailure, User> get failureOrUser =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TwitterAuthenticationStateCopyWith<TwitterAuthenticationState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TwitterAuthenticationStateCopyWith<$Res> {
  factory $TwitterAuthenticationStateCopyWith(TwitterAuthenticationState value,
          $Res Function(TwitterAuthenticationState) then) =
      _$TwitterAuthenticationStateCopyWithImpl<$Res,
          TwitterAuthenticationState>;
  @useResult
  $Res call({bool isLoading, Either<AuthFailure, User> failureOrUser});
}

/// @nodoc
class _$TwitterAuthenticationStateCopyWithImpl<$Res,
        $Val extends TwitterAuthenticationState>
    implements $TwitterAuthenticationStateCopyWith<$Res> {
  _$TwitterAuthenticationStateCopyWithImpl(this._value, this._then);

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
abstract class _$$_TwitterAuthenticationStateCopyWith<$Res>
    implements $TwitterAuthenticationStateCopyWith<$Res> {
  factory _$$_TwitterAuthenticationStateCopyWith(
          _$_TwitterAuthenticationState value,
          $Res Function(_$_TwitterAuthenticationState) then) =
      __$$_TwitterAuthenticationStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, Either<AuthFailure, User> failureOrUser});
}

/// @nodoc
class __$$_TwitterAuthenticationStateCopyWithImpl<$Res>
    extends _$TwitterAuthenticationStateCopyWithImpl<$Res,
        _$_TwitterAuthenticationState>
    implements _$$_TwitterAuthenticationStateCopyWith<$Res> {
  __$$_TwitterAuthenticationStateCopyWithImpl(
      _$_TwitterAuthenticationState _value,
      $Res Function(_$_TwitterAuthenticationState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? failureOrUser = null,
  }) {
    return _then(_$_TwitterAuthenticationState(
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

class _$_TwitterAuthenticationState implements _TwitterAuthenticationState {
  const _$_TwitterAuthenticationState(
      {this.isLoading = false, this.failureOrUser = const Right(User.empty)});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final Either<AuthFailure, User> failureOrUser;

  @override
  String toString() {
    return 'TwitterAuthenticationState(isLoading: $isLoading, failureOrUser: $failureOrUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TwitterAuthenticationState &&
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
  _$$_TwitterAuthenticationStateCopyWith<_$_TwitterAuthenticationState>
      get copyWith => __$$_TwitterAuthenticationStateCopyWithImpl<
          _$_TwitterAuthenticationState>(this, _$identity);
}

abstract class _TwitterAuthenticationState
    implements TwitterAuthenticationState {
  const factory _TwitterAuthenticationState(
          {final bool isLoading,
          final Either<AuthFailure, User> failureOrUser}) =
      _$_TwitterAuthenticationState;

  @override
  bool get isLoading;
  @override
  Either<AuthFailure, User> get failureOrUser;
  @override
  @JsonKey(ignore: true)
  _$$_TwitterAuthenticationStateCopyWith<_$_TwitterAuthenticationState>
      get copyWith => throw _privateConstructorUsedError;
}
