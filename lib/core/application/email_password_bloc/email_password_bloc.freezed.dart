// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'email_password_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EmailPasswordEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userName) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userName)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userName)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? submitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserNameChange value) emailChanged,
    required TResult Function(_PasswordChange value) passwordChanged,
    required TResult Function(_Submitted value) submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserNameChange value)? emailChanged,
    TResult? Function(_PasswordChange value)? passwordChanged,
    TResult? Function(_Submitted value)? submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserNameChange value)? emailChanged,
    TResult Function(_PasswordChange value)? passwordChanged,
    TResult Function(_Submitted value)? submitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailPasswordEventCopyWith<$Res> {
  factory $EmailPasswordEventCopyWith(
          EmailPasswordEvent value, $Res Function(EmailPasswordEvent) then) =
      _$EmailPasswordEventCopyWithImpl<$Res, EmailPasswordEvent>;
}

/// @nodoc
class _$EmailPasswordEventCopyWithImpl<$Res, $Val extends EmailPasswordEvent>
    implements $EmailPasswordEventCopyWith<$Res> {
  _$EmailPasswordEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_UserNameChangeCopyWith<$Res> {
  factory _$$_UserNameChangeCopyWith(
          _$_UserNameChange value, $Res Function(_$_UserNameChange) then) =
      __$$_UserNameChangeCopyWithImpl<$Res>;
  @useResult
  $Res call({String userName});
}

/// @nodoc
class __$$_UserNameChangeCopyWithImpl<$Res>
    extends _$EmailPasswordEventCopyWithImpl<$Res, _$_UserNameChange>
    implements _$$_UserNameChangeCopyWith<$Res> {
  __$$_UserNameChangeCopyWithImpl(
      _$_UserNameChange _value, $Res Function(_$_UserNameChange) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
  }) {
    return _then(_$_UserNameChange(
      null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UserNameChange implements _UserNameChange {
  const _$_UserNameChange(this.userName);

  @override
  final String userName;

  @override
  String toString() {
    return 'EmailPasswordEvent.emailChanged(userName: $userName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserNameChange &&
            (identical(other.userName, userName) ||
                other.userName == userName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserNameChangeCopyWith<_$_UserNameChange> get copyWith =>
      __$$_UserNameChangeCopyWithImpl<_$_UserNameChange>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userName) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() submitted,
  }) {
    return emailChanged(userName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userName)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? submitted,
  }) {
    return emailChanged?.call(userName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userName)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? submitted,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(userName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserNameChange value) emailChanged,
    required TResult Function(_PasswordChange value) passwordChanged,
    required TResult Function(_Submitted value) submitted,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserNameChange value)? emailChanged,
    TResult? Function(_PasswordChange value)? passwordChanged,
    TResult? Function(_Submitted value)? submitted,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserNameChange value)? emailChanged,
    TResult Function(_PasswordChange value)? passwordChanged,
    TResult Function(_Submitted value)? submitted,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class _UserNameChange implements EmailPasswordEvent {
  const factory _UserNameChange(final String userName) = _$_UserNameChange;

  String get userName;
  @JsonKey(ignore: true)
  _$$_UserNameChangeCopyWith<_$_UserNameChange> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PasswordChangeCopyWith<$Res> {
  factory _$$_PasswordChangeCopyWith(
          _$_PasswordChange value, $Res Function(_$_PasswordChange) then) =
      __$$_PasswordChangeCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$_PasswordChangeCopyWithImpl<$Res>
    extends _$EmailPasswordEventCopyWithImpl<$Res, _$_PasswordChange>
    implements _$$_PasswordChangeCopyWith<$Res> {
  __$$_PasswordChangeCopyWithImpl(
      _$_PasswordChange _value, $Res Function(_$_PasswordChange) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$_PasswordChange(
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PasswordChange implements _PasswordChange {
  const _$_PasswordChange(this.password);

  @override
  final String password;

  @override
  String toString() {
    return 'EmailPasswordEvent.passwordChanged(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PasswordChange &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PasswordChangeCopyWith<_$_PasswordChange> get copyWith =>
      __$$_PasswordChangeCopyWithImpl<_$_PasswordChange>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userName) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() submitted,
  }) {
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userName)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? submitted,
  }) {
    return passwordChanged?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userName)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? submitted,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserNameChange value) emailChanged,
    required TResult Function(_PasswordChange value) passwordChanged,
    required TResult Function(_Submitted value) submitted,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserNameChange value)? emailChanged,
    TResult? Function(_PasswordChange value)? passwordChanged,
    TResult? Function(_Submitted value)? submitted,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserNameChange value)? emailChanged,
    TResult Function(_PasswordChange value)? passwordChanged,
    TResult Function(_Submitted value)? submitted,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class _PasswordChange implements EmailPasswordEvent {
  const factory _PasswordChange(final String password) = _$_PasswordChange;

  String get password;
  @JsonKey(ignore: true)
  _$$_PasswordChangeCopyWith<_$_PasswordChange> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SubmittedCopyWith<$Res> {
  factory _$$_SubmittedCopyWith(
          _$_Submitted value, $Res Function(_$_Submitted) then) =
      __$$_SubmittedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SubmittedCopyWithImpl<$Res>
    extends _$EmailPasswordEventCopyWithImpl<$Res, _$_Submitted>
    implements _$$_SubmittedCopyWith<$Res> {
  __$$_SubmittedCopyWithImpl(
      _$_Submitted _value, $Res Function(_$_Submitted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Submitted implements _Submitted {
  const _$_Submitted();

  @override
  String toString() {
    return 'EmailPasswordEvent.submitted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Submitted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userName) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() submitted,
  }) {
    return submitted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userName)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? submitted,
  }) {
    return submitted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userName)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? submitted,
    required TResult orElse(),
  }) {
    if (submitted != null) {
      return submitted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserNameChange value) emailChanged,
    required TResult Function(_PasswordChange value) passwordChanged,
    required TResult Function(_Submitted value) submitted,
  }) {
    return submitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserNameChange value)? emailChanged,
    TResult? Function(_PasswordChange value)? passwordChanged,
    TResult? Function(_Submitted value)? submitted,
  }) {
    return submitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserNameChange value)? emailChanged,
    TResult Function(_PasswordChange value)? passwordChanged,
    TResult Function(_Submitted value)? submitted,
    required TResult orElse(),
  }) {
    if (submitted != null) {
      return submitted(this);
    }
    return orElse();
  }
}

abstract class _Submitted implements EmailPasswordEvent {
  const factory _Submitted() = _$_Submitted;
}

/// @nodoc
mixin _$EmailPasswordState {
  FormzStatus get status => throw _privateConstructorUsedError;
  Email get email => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EmailPasswordStateCopyWith<EmailPasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailPasswordStateCopyWith<$Res> {
  factory $EmailPasswordStateCopyWith(
          EmailPasswordState value, $Res Function(EmailPasswordState) then) =
      _$EmailPasswordStateCopyWithImpl<$Res, EmailPasswordState>;
  @useResult
  $Res call({FormzStatus status, Email email, Password password});
}

/// @nodoc
class _$EmailPasswordStateCopyWithImpl<$Res, $Val extends EmailPasswordState>
    implements $EmailPasswordStateCopyWith<$Res> {
  _$EmailPasswordStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EmailPasswordStateCopyWith<$Res>
    implements $EmailPasswordStateCopyWith<$Res> {
  factory _$$_EmailPasswordStateCopyWith(_$_EmailPasswordState value,
          $Res Function(_$_EmailPasswordState) then) =
      __$$_EmailPasswordStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FormzStatus status, Email email, Password password});
}

/// @nodoc
class __$$_EmailPasswordStateCopyWithImpl<$Res>
    extends _$EmailPasswordStateCopyWithImpl<$Res, _$_EmailPasswordState>
    implements _$$_EmailPasswordStateCopyWith<$Res> {
  __$$_EmailPasswordStateCopyWithImpl(
      _$_EmailPasswordState _value, $Res Function(_$_EmailPasswordState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$_EmailPasswordState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
    ));
  }
}

/// @nodoc

class _$_EmailPasswordState implements _EmailPasswordState {
  const _$_EmailPasswordState(
      {this.status = FormzStatus.pure,
      this.email = const Email.pure(),
      this.password = const Password.pure()});

  @override
  @JsonKey()
  final FormzStatus status;
  @override
  @JsonKey()
  final Email email;
  @override
  @JsonKey()
  final Password password;

  @override
  String toString() {
    return 'EmailPasswordState(status: $status, email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmailPasswordState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EmailPasswordStateCopyWith<_$_EmailPasswordState> get copyWith =>
      __$$_EmailPasswordStateCopyWithImpl<_$_EmailPasswordState>(
          this, _$identity);
}

abstract class _EmailPasswordState implements EmailPasswordState {
  const factory _EmailPasswordState(
      {final FormzStatus status,
      final Email email,
      final Password password}) = _$_EmailPasswordState;

  @override
  FormzStatus get status;
  @override
  Email get email;
  @override
  Password get password;
  @override
  @JsonKey(ignore: true)
  _$$_EmailPasswordStateCopyWith<_$_EmailPasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}
