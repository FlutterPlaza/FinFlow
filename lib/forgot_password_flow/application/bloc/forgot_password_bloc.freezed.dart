// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'forgot_password_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ForgotPasswordEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() passwordChanged,
    required TResult Function() otpSent,
    required TResult Function() otpVerified,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? passwordChanged,
    TResult? Function()? otpSent,
    TResult? Function()? otpVerified,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? passwordChanged,
    TResult Function()? otpSent,
    TResult Function()? otpVerified,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(OtpSent value) otpSent,
    required TResult Function(OtpVerified value) otpVerified,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(OtpSent value)? otpSent,
    TResult? Function(OtpVerified value)? otpVerified,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(OtpSent value)? otpSent,
    TResult Function(OtpVerified value)? otpVerified,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPasswordEventCopyWith<$Res> {
  factory $ForgotPasswordEventCopyWith(
          ForgotPasswordEvent value, $Res Function(ForgotPasswordEvent) then) =
      _$ForgotPasswordEventCopyWithImpl<$Res, ForgotPasswordEvent>;
}

/// @nodoc
class _$ForgotPasswordEventCopyWithImpl<$Res, $Val extends ForgotPasswordEvent>
    implements $ForgotPasswordEventCopyWith<$Res> {
  _$ForgotPasswordEventCopyWithImpl(this._value, this._then);

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
    extends _$ForgotPasswordEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'ForgotPasswordEvent.started()';
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
    required TResult Function() passwordChanged,
    required TResult Function() otpSent,
    required TResult Function() otpVerified,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? passwordChanged,
    TResult? Function()? otpSent,
    TResult? Function()? otpVerified,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? passwordChanged,
    TResult Function()? otpSent,
    TResult Function()? otpVerified,
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
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(OtpSent value) otpSent,
    required TResult Function(OtpVerified value) otpVerified,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(OtpSent value)? otpSent,
    TResult? Function(OtpVerified value)? otpVerified,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(OtpSent value)? otpSent,
    TResult Function(OtpVerified value)? otpVerified,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ForgotPasswordEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$PasswordChangedCopyWith<$Res> {
  factory _$$PasswordChangedCopyWith(
          _$PasswordChanged value, $Res Function(_$PasswordChanged) then) =
      __$$PasswordChangedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PasswordChangedCopyWithImpl<$Res>
    extends _$ForgotPasswordEventCopyWithImpl<$Res, _$PasswordChanged>
    implements _$$PasswordChangedCopyWith<$Res> {
  __$$PasswordChangedCopyWithImpl(
      _$PasswordChanged _value, $Res Function(_$PasswordChanged) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PasswordChanged implements PasswordChanged {
  const _$PasswordChanged();

  @override
  String toString() {
    return 'ForgotPasswordEvent.passwordChanged()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PasswordChanged);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() passwordChanged,
    required TResult Function() otpSent,
    required TResult Function() otpVerified,
  }) {
    return passwordChanged();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? passwordChanged,
    TResult? Function()? otpSent,
    TResult? Function()? otpVerified,
  }) {
    return passwordChanged?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? passwordChanged,
    TResult Function()? otpSent,
    TResult Function()? otpVerified,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(OtpSent value) otpSent,
    required TResult Function(OtpVerified value) otpVerified,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(OtpSent value)? otpSent,
    TResult? Function(OtpVerified value)? otpVerified,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(OtpSent value)? otpSent,
    TResult Function(OtpVerified value)? otpVerified,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements ForgotPasswordEvent {
  const factory PasswordChanged() = _$PasswordChanged;
}

/// @nodoc
abstract class _$$OtpSentCopyWith<$Res> {
  factory _$$OtpSentCopyWith(_$OtpSent value, $Res Function(_$OtpSent) then) =
      __$$OtpSentCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OtpSentCopyWithImpl<$Res>
    extends _$ForgotPasswordEventCopyWithImpl<$Res, _$OtpSent>
    implements _$$OtpSentCopyWith<$Res> {
  __$$OtpSentCopyWithImpl(_$OtpSent _value, $Res Function(_$OtpSent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OtpSent implements OtpSent {
  const _$OtpSent();

  @override
  String toString() {
    return 'ForgotPasswordEvent.otpSent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OtpSent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() passwordChanged,
    required TResult Function() otpSent,
    required TResult Function() otpVerified,
  }) {
    return otpSent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? passwordChanged,
    TResult? Function()? otpSent,
    TResult? Function()? otpVerified,
  }) {
    return otpSent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? passwordChanged,
    TResult Function()? otpSent,
    TResult Function()? otpVerified,
    required TResult orElse(),
  }) {
    if (otpSent != null) {
      return otpSent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(OtpSent value) otpSent,
    required TResult Function(OtpVerified value) otpVerified,
  }) {
    return otpSent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(OtpSent value)? otpSent,
    TResult? Function(OtpVerified value)? otpVerified,
  }) {
    return otpSent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(OtpSent value)? otpSent,
    TResult Function(OtpVerified value)? otpVerified,
    required TResult orElse(),
  }) {
    if (otpSent != null) {
      return otpSent(this);
    }
    return orElse();
  }
}

abstract class OtpSent implements ForgotPasswordEvent {
  const factory OtpSent() = _$OtpSent;
}

/// @nodoc
abstract class _$$OtpVerifiedCopyWith<$Res> {
  factory _$$OtpVerifiedCopyWith(
          _$OtpVerified value, $Res Function(_$OtpVerified) then) =
      __$$OtpVerifiedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OtpVerifiedCopyWithImpl<$Res>
    extends _$ForgotPasswordEventCopyWithImpl<$Res, _$OtpVerified>
    implements _$$OtpVerifiedCopyWith<$Res> {
  __$$OtpVerifiedCopyWithImpl(
      _$OtpVerified _value, $Res Function(_$OtpVerified) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OtpVerified implements OtpVerified {
  const _$OtpVerified();

  @override
  String toString() {
    return 'ForgotPasswordEvent.otpVerified()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OtpVerified);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() passwordChanged,
    required TResult Function() otpSent,
    required TResult Function() otpVerified,
  }) {
    return otpVerified();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? passwordChanged,
    TResult? Function()? otpSent,
    TResult? Function()? otpVerified,
  }) {
    return otpVerified?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? passwordChanged,
    TResult Function()? otpSent,
    TResult Function()? otpVerified,
    required TResult orElse(),
  }) {
    if (otpVerified != null) {
      return otpVerified();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(OtpSent value) otpSent,
    required TResult Function(OtpVerified value) otpVerified,
  }) {
    return otpVerified(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(OtpSent value)? otpSent,
    TResult? Function(OtpVerified value)? otpVerified,
  }) {
    return otpVerified?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(OtpSent value)? otpSent,
    TResult Function(OtpVerified value)? otpVerified,
    required TResult orElse(),
  }) {
    if (otpVerified != null) {
      return otpVerified(this);
    }
    return orElse();
  }
}

abstract class OtpVerified implements ForgotPasswordEvent {
  const factory OtpVerified() = _$OtpVerified;
}

/// @nodoc
mixin _$ForgotPasswordState {
  bool get isLoading => throw _privateConstructorUsedError;
  String get newPassword => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ForgotPasswordStateCopyWith<ForgotPasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgotPasswordStateCopyWith<$Res> {
  factory $ForgotPasswordStateCopyWith(
          ForgotPasswordState value, $Res Function(ForgotPasswordState) then) =
      _$ForgotPasswordStateCopyWithImpl<$Res, ForgotPasswordState>;
  @useResult
  $Res call({bool isLoading, String newPassword});
}

/// @nodoc
class _$ForgotPasswordStateCopyWithImpl<$Res, $Val extends ForgotPasswordState>
    implements $ForgotPasswordStateCopyWith<$Res> {
  _$ForgotPasswordStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? newPassword = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      newPassword: null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ForgotPasswordStateCopyWith<$Res>
    implements $ForgotPasswordStateCopyWith<$Res> {
  factory _$$_ForgotPasswordStateCopyWith(_$_ForgotPasswordState value,
          $Res Function(_$_ForgotPasswordState) then) =
      __$$_ForgotPasswordStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, String newPassword});
}

/// @nodoc
class __$$_ForgotPasswordStateCopyWithImpl<$Res>
    extends _$ForgotPasswordStateCopyWithImpl<$Res, _$_ForgotPasswordState>
    implements _$$_ForgotPasswordStateCopyWith<$Res> {
  __$$_ForgotPasswordStateCopyWithImpl(_$_ForgotPasswordState _value,
      $Res Function(_$_ForgotPasswordState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? newPassword = null,
  }) {
    return _then(_$_ForgotPasswordState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      newPassword: null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ForgotPasswordState implements _ForgotPasswordState {
  const _$_ForgotPasswordState({this.isLoading = false, this.newPassword = ''});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final String newPassword;

  @override
  String toString() {
    return 'ForgotPasswordState(isLoading: $isLoading, newPassword: $newPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ForgotPasswordState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, newPassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ForgotPasswordStateCopyWith<_$_ForgotPasswordState> get copyWith =>
      __$$_ForgotPasswordStateCopyWithImpl<_$_ForgotPasswordState>(
          this, _$identity);
}

abstract class _ForgotPasswordState implements ForgotPasswordState {
  const factory _ForgotPasswordState(
      {final bool isLoading,
      final String newPassword}) = _$_ForgotPasswordState;

  @override
  bool get isLoading;
  @override
  String get newPassword;
  @override
  @JsonKey(ignore: true)
  _$$_ForgotPasswordStateCopyWith<_$_ForgotPasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}
