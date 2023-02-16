// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'google_sign_in_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GoogleSignInEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signIn,
    required TResult Function() signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signIn,
    TResult? Function()? signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signIn,
    TResult Function()? signOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignIn value) signIn,
    required TResult Function(SignOut value) signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignIn value)? signIn,
    TResult? Function(SignOut value)? signOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignIn value)? signIn,
    TResult Function(SignOut value)? signOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoogleSignInEventCopyWith<$Res> {
  factory $GoogleSignInEventCopyWith(
          GoogleSignInEvent value, $Res Function(GoogleSignInEvent) then) =
      _$GoogleSignInEventCopyWithImpl<$Res, GoogleSignInEvent>;
}

/// @nodoc
class _$GoogleSignInEventCopyWithImpl<$Res, $Val extends GoogleSignInEvent>
    implements $GoogleSignInEventCopyWith<$Res> {
  _$GoogleSignInEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SignInCopyWith<$Res> {
  factory _$$SignInCopyWith(_$SignIn value, $Res Function(_$SignIn) then) =
      __$$SignInCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignInCopyWithImpl<$Res>
    extends _$GoogleSignInEventCopyWithImpl<$Res, _$SignIn>
    implements _$$SignInCopyWith<$Res> {
  __$$SignInCopyWithImpl(_$SignIn _value, $Res Function(_$SignIn) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignIn implements SignIn {
  _$SignIn();

  @override
  String toString() {
    return 'GoogleSignInEvent.signIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignIn);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signIn,
    required TResult Function() signOut,
  }) {
    return signIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signIn,
    TResult? Function()? signOut,
  }) {
    return signIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
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
    required TResult Function(SignIn value) signIn,
    required TResult Function(SignOut value) signOut,
  }) {
    return signIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignIn value)? signIn,
    TResult? Function(SignOut value)? signOut,
  }) {
    return signIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignIn value)? signIn,
    TResult Function(SignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (signIn != null) {
      return signIn(this);
    }
    return orElse();
  }
}

abstract class SignIn implements GoogleSignInEvent {
  factory SignIn() = _$SignIn;
}

/// @nodoc
abstract class _$$SignOutCopyWith<$Res> {
  factory _$$SignOutCopyWith(_$SignOut value, $Res Function(_$SignOut) then) =
      __$$SignOutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignOutCopyWithImpl<$Res>
    extends _$GoogleSignInEventCopyWithImpl<$Res, _$SignOut>
    implements _$$SignOutCopyWith<$Res> {
  __$$SignOutCopyWithImpl(_$SignOut _value, $Res Function(_$SignOut) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignOut implements SignOut {
  _$SignOut();

  @override
  String toString() {
    return 'GoogleSignInEvent.signOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signIn,
    required TResult Function() signOut,
  }) {
    return signOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signIn,
    TResult? Function()? signOut,
  }) {
    return signOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
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
    required TResult Function(SignIn value) signIn,
    required TResult Function(SignOut value) signOut,
  }) {
    return signOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SignIn value)? signIn,
    TResult? Function(SignOut value)? signOut,
  }) {
    return signOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignIn value)? signIn,
    TResult Function(SignOut value)? signOut,
    required TResult orElse(),
  }) {
    if (signOut != null) {
      return signOut(this);
    }
    return orElse();
  }
}

abstract class SignOut implements GoogleSignInEvent {
  factory SignOut() = _$SignOut;
}

/// @nodoc
mixin _$GoogleSignInState {
  bool get isLoading => throw _privateConstructorUsedError;
  Either<AuthFailure, User> get failureOrUser =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GoogleSignInStateCopyWith<GoogleSignInState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoogleSignInStateCopyWith<$Res> {
  factory $GoogleSignInStateCopyWith(
          GoogleSignInState value, $Res Function(GoogleSignInState) then) =
      _$GoogleSignInStateCopyWithImpl<$Res, GoogleSignInState>;
  @useResult
  $Res call({bool isLoading, Either<AuthFailure, User> failureOrUser});
}

/// @nodoc
class _$GoogleSignInStateCopyWithImpl<$Res, $Val extends GoogleSignInState>
    implements $GoogleSignInStateCopyWith<$Res> {
  _$GoogleSignInStateCopyWithImpl(this._value, this._then);

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
abstract class _$$_GoogleSignInStateCopyWith<$Res>
    implements $GoogleSignInStateCopyWith<$Res> {
  factory _$$_GoogleSignInStateCopyWith(_$_GoogleSignInState value,
          $Res Function(_$_GoogleSignInState) then) =
      __$$_GoogleSignInStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, Either<AuthFailure, User> failureOrUser});
}

/// @nodoc
class __$$_GoogleSignInStateCopyWithImpl<$Res>
    extends _$GoogleSignInStateCopyWithImpl<$Res, _$_GoogleSignInState>
    implements _$$_GoogleSignInStateCopyWith<$Res> {
  __$$_GoogleSignInStateCopyWithImpl(
      _$_GoogleSignInState _value, $Res Function(_$_GoogleSignInState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? failureOrUser = null,
  }) {
    return _then(_$_GoogleSignInState(
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

class _$_GoogleSignInState implements _GoogleSignInState {
  const _$_GoogleSignInState(
      {this.isLoading = false, this.failureOrUser = const Right(User.empty)});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final Either<AuthFailure, User> failureOrUser;

  @override
  String toString() {
    return 'GoogleSignInState(isLoading: $isLoading, failureOrUser: $failureOrUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GoogleSignInState &&
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
  _$$_GoogleSignInStateCopyWith<_$_GoogleSignInState> get copyWith =>
      __$$_GoogleSignInStateCopyWithImpl<_$_GoogleSignInState>(
          this, _$identity);
}

abstract class _GoogleSignInState implements GoogleSignInState {
  const factory _GoogleSignInState(
      {final bool isLoading,
      final Either<AuthFailure, User> failureOrUser}) = _$_GoogleSignInState;

  @override
  bool get isLoading;
  @override
  Either<AuthFailure, User> get failureOrUser;
  @override
  @JsonKey(ignore: true)
  _$$_GoogleSignInStateCopyWith<_$_GoogleSignInState> get copyWith =>
      throw _privateConstructorUsedError;
}
