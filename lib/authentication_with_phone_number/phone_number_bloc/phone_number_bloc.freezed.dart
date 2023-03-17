// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'phone_number_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PhoneNumberEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function() submitPhoneNumber,
    required TResult Function(String otpCode) otpChanged,
    required TResult Function() submitOtp,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String password) confirmPasswordChanged,
    required TResult Function() submitNewPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? phoneNumberChanged,
    TResult? Function()? submitPhoneNumber,
    TResult? Function(String otpCode)? otpChanged,
    TResult? Function()? submitOtp,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String password)? confirmPasswordChanged,
    TResult? Function()? submitNewPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function()? submitPhoneNumber,
    TResult Function(String otpCode)? otpChanged,
    TResult Function()? submitOtp,
    TResult Function(String password)? passwordChanged,
    TResult Function(String password)? confirmPasswordChanged,
    TResult Function()? submitNewPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_PhoneNumberSubmitted value) submitPhoneNumber,
    required TResult Function(_OtpChanged value) otpChanged,
    required TResult Function(_OtpSubmitted value) submitOtp,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(_NewPasswordSubmitted value) submitNewPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult? Function(_PhoneNumberSubmitted value)? submitPhoneNumber,
    TResult? Function(_OtpChanged value)? otpChanged,
    TResult? Function(_OtpSubmitted value)? submitOtp,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(_NewPasswordSubmitted value)? submitNewPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_PhoneNumberSubmitted value)? submitPhoneNumber,
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_OtpSubmitted value)? submitOtp,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(_NewPasswordSubmitted value)? submitNewPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhoneNumberEventCopyWith<$Res> {
  factory $PhoneNumberEventCopyWith(
          PhoneNumberEvent value, $Res Function(PhoneNumberEvent) then) =
      _$PhoneNumberEventCopyWithImpl<$Res, PhoneNumberEvent>;
}

/// @nodoc
class _$PhoneNumberEventCopyWithImpl<$Res, $Val extends PhoneNumberEvent>
    implements $PhoneNumberEventCopyWith<$Res> {
  _$PhoneNumberEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_PhoneNumberChangedCopyWith<$Res> {
  factory _$$_PhoneNumberChangedCopyWith(_$_PhoneNumberChanged value,
          $Res Function(_$_PhoneNumberChanged) then) =
      __$$_PhoneNumberChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String phoneNumber});
}

/// @nodoc
class __$$_PhoneNumberChangedCopyWithImpl<$Res>
    extends _$PhoneNumberEventCopyWithImpl<$Res, _$_PhoneNumberChanged>
    implements _$$_PhoneNumberChangedCopyWith<$Res> {
  __$$_PhoneNumberChangedCopyWithImpl(
      _$_PhoneNumberChanged _value, $Res Function(_$_PhoneNumberChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
  }) {
    return _then(_$_PhoneNumberChanged(
      null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PhoneNumberChanged implements _PhoneNumberChanged {
  const _$_PhoneNumberChanged(this.phoneNumber);

  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'PhoneNumberEvent.phoneNumberChanged(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PhoneNumberChanged &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PhoneNumberChangedCopyWith<_$_PhoneNumberChanged> get copyWith =>
      __$$_PhoneNumberChangedCopyWithImpl<_$_PhoneNumberChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function() submitPhoneNumber,
    required TResult Function(String otpCode) otpChanged,
    required TResult Function() submitOtp,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String password) confirmPasswordChanged,
    required TResult Function() submitNewPassword,
  }) {
    return phoneNumberChanged(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? phoneNumberChanged,
    TResult? Function()? submitPhoneNumber,
    TResult? Function(String otpCode)? otpChanged,
    TResult? Function()? submitOtp,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String password)? confirmPasswordChanged,
    TResult? Function()? submitNewPassword,
  }) {
    return phoneNumberChanged?.call(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function()? submitPhoneNumber,
    TResult Function(String otpCode)? otpChanged,
    TResult Function()? submitOtp,
    TResult Function(String password)? passwordChanged,
    TResult Function(String password)? confirmPasswordChanged,
    TResult Function()? submitNewPassword,
    required TResult orElse(),
  }) {
    if (phoneNumberChanged != null) {
      return phoneNumberChanged(phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_PhoneNumberSubmitted value) submitPhoneNumber,
    required TResult Function(_OtpChanged value) otpChanged,
    required TResult Function(_OtpSubmitted value) submitOtp,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(_NewPasswordSubmitted value) submitNewPassword,
  }) {
    return phoneNumberChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult? Function(_PhoneNumberSubmitted value)? submitPhoneNumber,
    TResult? Function(_OtpChanged value)? otpChanged,
    TResult? Function(_OtpSubmitted value)? submitOtp,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(_NewPasswordSubmitted value)? submitNewPassword,
  }) {
    return phoneNumberChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_PhoneNumberSubmitted value)? submitPhoneNumber,
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_OtpSubmitted value)? submitOtp,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(_NewPasswordSubmitted value)? submitNewPassword,
    required TResult orElse(),
  }) {
    if (phoneNumberChanged != null) {
      return phoneNumberChanged(this);
    }
    return orElse();
  }
}

abstract class _PhoneNumberChanged implements PhoneNumberEvent {
  const factory _PhoneNumberChanged(final String phoneNumber) =
      _$_PhoneNumberChanged;

  String get phoneNumber;
  @JsonKey(ignore: true)
  _$$_PhoneNumberChangedCopyWith<_$_PhoneNumberChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PhoneNumberSubmittedCopyWith<$Res> {
  factory _$$_PhoneNumberSubmittedCopyWith(_$_PhoneNumberSubmitted value,
          $Res Function(_$_PhoneNumberSubmitted) then) =
      __$$_PhoneNumberSubmittedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PhoneNumberSubmittedCopyWithImpl<$Res>
    extends _$PhoneNumberEventCopyWithImpl<$Res, _$_PhoneNumberSubmitted>
    implements _$$_PhoneNumberSubmittedCopyWith<$Res> {
  __$$_PhoneNumberSubmittedCopyWithImpl(_$_PhoneNumberSubmitted _value,
      $Res Function(_$_PhoneNumberSubmitted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_PhoneNumberSubmitted implements _PhoneNumberSubmitted {
  const _$_PhoneNumberSubmitted();

  @override
  String toString() {
    return 'PhoneNumberEvent.submitPhoneNumber()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_PhoneNumberSubmitted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function() submitPhoneNumber,
    required TResult Function(String otpCode) otpChanged,
    required TResult Function() submitOtp,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String password) confirmPasswordChanged,
    required TResult Function() submitNewPassword,
  }) {
    return submitPhoneNumber();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? phoneNumberChanged,
    TResult? Function()? submitPhoneNumber,
    TResult? Function(String otpCode)? otpChanged,
    TResult? Function()? submitOtp,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String password)? confirmPasswordChanged,
    TResult? Function()? submitNewPassword,
  }) {
    return submitPhoneNumber?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function()? submitPhoneNumber,
    TResult Function(String otpCode)? otpChanged,
    TResult Function()? submitOtp,
    TResult Function(String password)? passwordChanged,
    TResult Function(String password)? confirmPasswordChanged,
    TResult Function()? submitNewPassword,
    required TResult orElse(),
  }) {
    if (submitPhoneNumber != null) {
      return submitPhoneNumber();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_PhoneNumberSubmitted value) submitPhoneNumber,
    required TResult Function(_OtpChanged value) otpChanged,
    required TResult Function(_OtpSubmitted value) submitOtp,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(_NewPasswordSubmitted value) submitNewPassword,
  }) {
    return submitPhoneNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult? Function(_PhoneNumberSubmitted value)? submitPhoneNumber,
    TResult? Function(_OtpChanged value)? otpChanged,
    TResult? Function(_OtpSubmitted value)? submitOtp,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(_NewPasswordSubmitted value)? submitNewPassword,
  }) {
    return submitPhoneNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_PhoneNumberSubmitted value)? submitPhoneNumber,
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_OtpSubmitted value)? submitOtp,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(_NewPasswordSubmitted value)? submitNewPassword,
    required TResult orElse(),
  }) {
    if (submitPhoneNumber != null) {
      return submitPhoneNumber(this);
    }
    return orElse();
  }
}

abstract class _PhoneNumberSubmitted implements PhoneNumberEvent {
  const factory _PhoneNumberSubmitted() = _$_PhoneNumberSubmitted;
}

/// @nodoc
abstract class _$$_OtpChangedCopyWith<$Res> {
  factory _$$_OtpChangedCopyWith(
          _$_OtpChanged value, $Res Function(_$_OtpChanged) then) =
      __$$_OtpChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String otpCode});
}

/// @nodoc
class __$$_OtpChangedCopyWithImpl<$Res>
    extends _$PhoneNumberEventCopyWithImpl<$Res, _$_OtpChanged>
    implements _$$_OtpChangedCopyWith<$Res> {
  __$$_OtpChangedCopyWithImpl(
      _$_OtpChanged _value, $Res Function(_$_OtpChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otpCode = null,
  }) {
    return _then(_$_OtpChanged(
      null == otpCode
          ? _value.otpCode
          : otpCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_OtpChanged implements _OtpChanged {
  const _$_OtpChanged(this.otpCode);

  @override
  final String otpCode;

  @override
  String toString() {
    return 'PhoneNumberEvent.otpChanged(otpCode: $otpCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OtpChanged &&
            (identical(other.otpCode, otpCode) || other.otpCode == otpCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, otpCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OtpChangedCopyWith<_$_OtpChanged> get copyWith =>
      __$$_OtpChangedCopyWithImpl<_$_OtpChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function() submitPhoneNumber,
    required TResult Function(String otpCode) otpChanged,
    required TResult Function() submitOtp,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String password) confirmPasswordChanged,
    required TResult Function() submitNewPassword,
  }) {
    return otpChanged(otpCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? phoneNumberChanged,
    TResult? Function()? submitPhoneNumber,
    TResult? Function(String otpCode)? otpChanged,
    TResult? Function()? submitOtp,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String password)? confirmPasswordChanged,
    TResult? Function()? submitNewPassword,
  }) {
    return otpChanged?.call(otpCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function()? submitPhoneNumber,
    TResult Function(String otpCode)? otpChanged,
    TResult Function()? submitOtp,
    TResult Function(String password)? passwordChanged,
    TResult Function(String password)? confirmPasswordChanged,
    TResult Function()? submitNewPassword,
    required TResult orElse(),
  }) {
    if (otpChanged != null) {
      return otpChanged(otpCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_PhoneNumberSubmitted value) submitPhoneNumber,
    required TResult Function(_OtpChanged value) otpChanged,
    required TResult Function(_OtpSubmitted value) submitOtp,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(_NewPasswordSubmitted value) submitNewPassword,
  }) {
    return otpChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult? Function(_PhoneNumberSubmitted value)? submitPhoneNumber,
    TResult? Function(_OtpChanged value)? otpChanged,
    TResult? Function(_OtpSubmitted value)? submitOtp,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(_NewPasswordSubmitted value)? submitNewPassword,
  }) {
    return otpChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_PhoneNumberSubmitted value)? submitPhoneNumber,
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_OtpSubmitted value)? submitOtp,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(_NewPasswordSubmitted value)? submitNewPassword,
    required TResult orElse(),
  }) {
    if (otpChanged != null) {
      return otpChanged(this);
    }
    return orElse();
  }
}

abstract class _OtpChanged implements PhoneNumberEvent {
  const factory _OtpChanged(final String otpCode) = _$_OtpChanged;

  String get otpCode;
  @JsonKey(ignore: true)
  _$$_OtpChangedCopyWith<_$_OtpChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OtpSubmittedCopyWith<$Res> {
  factory _$$_OtpSubmittedCopyWith(
          _$_OtpSubmitted value, $Res Function(_$_OtpSubmitted) then) =
      __$$_OtpSubmittedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_OtpSubmittedCopyWithImpl<$Res>
    extends _$PhoneNumberEventCopyWithImpl<$Res, _$_OtpSubmitted>
    implements _$$_OtpSubmittedCopyWith<$Res> {
  __$$_OtpSubmittedCopyWithImpl(
      _$_OtpSubmitted _value, $Res Function(_$_OtpSubmitted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_OtpSubmitted implements _OtpSubmitted {
  const _$_OtpSubmitted();

  @override
  String toString() {
    return 'PhoneNumberEvent.submitOtp()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_OtpSubmitted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function() submitPhoneNumber,
    required TResult Function(String otpCode) otpChanged,
    required TResult Function() submitOtp,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String password) confirmPasswordChanged,
    required TResult Function() submitNewPassword,
  }) {
    return submitOtp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? phoneNumberChanged,
    TResult? Function()? submitPhoneNumber,
    TResult? Function(String otpCode)? otpChanged,
    TResult? Function()? submitOtp,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String password)? confirmPasswordChanged,
    TResult? Function()? submitNewPassword,
  }) {
    return submitOtp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function()? submitPhoneNumber,
    TResult Function(String otpCode)? otpChanged,
    TResult Function()? submitOtp,
    TResult Function(String password)? passwordChanged,
    TResult Function(String password)? confirmPasswordChanged,
    TResult Function()? submitNewPassword,
    required TResult orElse(),
  }) {
    if (submitOtp != null) {
      return submitOtp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_PhoneNumberSubmitted value) submitPhoneNumber,
    required TResult Function(_OtpChanged value) otpChanged,
    required TResult Function(_OtpSubmitted value) submitOtp,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(_NewPasswordSubmitted value) submitNewPassword,
  }) {
    return submitOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult? Function(_PhoneNumberSubmitted value)? submitPhoneNumber,
    TResult? Function(_OtpChanged value)? otpChanged,
    TResult? Function(_OtpSubmitted value)? submitOtp,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(_NewPasswordSubmitted value)? submitNewPassword,
  }) {
    return submitOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_PhoneNumberSubmitted value)? submitPhoneNumber,
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_OtpSubmitted value)? submitOtp,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(_NewPasswordSubmitted value)? submitNewPassword,
    required TResult orElse(),
  }) {
    if (submitOtp != null) {
      return submitOtp(this);
    }
    return orElse();
  }
}

abstract class _OtpSubmitted implements PhoneNumberEvent {
  const factory _OtpSubmitted() = _$_OtpSubmitted;
}

/// @nodoc
abstract class _$$_PasswordChangedCopyWith<$Res> {
  factory _$$_PasswordChangedCopyWith(
          _$_PasswordChanged value, $Res Function(_$_PasswordChanged) then) =
      __$$_PasswordChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$_PasswordChangedCopyWithImpl<$Res>
    extends _$PhoneNumberEventCopyWithImpl<$Res, _$_PasswordChanged>
    implements _$$_PasswordChangedCopyWith<$Res> {
  __$$_PasswordChangedCopyWithImpl(
      _$_PasswordChanged _value, $Res Function(_$_PasswordChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$_PasswordChanged(
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PasswordChanged implements _PasswordChanged {
  const _$_PasswordChanged(this.password);

  @override
  final String password;

  @override
  String toString() {
    return 'PhoneNumberEvent.passwordChanged(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PasswordChanged &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PasswordChangedCopyWith<_$_PasswordChanged> get copyWith =>
      __$$_PasswordChangedCopyWithImpl<_$_PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function() submitPhoneNumber,
    required TResult Function(String otpCode) otpChanged,
    required TResult Function() submitOtp,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String password) confirmPasswordChanged,
    required TResult Function() submitNewPassword,
  }) {
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? phoneNumberChanged,
    TResult? Function()? submitPhoneNumber,
    TResult? Function(String otpCode)? otpChanged,
    TResult? Function()? submitOtp,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String password)? confirmPasswordChanged,
    TResult? Function()? submitNewPassword,
  }) {
    return passwordChanged?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function()? submitPhoneNumber,
    TResult Function(String otpCode)? otpChanged,
    TResult Function()? submitOtp,
    TResult Function(String password)? passwordChanged,
    TResult Function(String password)? confirmPasswordChanged,
    TResult Function()? submitNewPassword,
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
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_PhoneNumberSubmitted value) submitPhoneNumber,
    required TResult Function(_OtpChanged value) otpChanged,
    required TResult Function(_OtpSubmitted value) submitOtp,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(_NewPasswordSubmitted value) submitNewPassword,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult? Function(_PhoneNumberSubmitted value)? submitPhoneNumber,
    TResult? Function(_OtpChanged value)? otpChanged,
    TResult? Function(_OtpSubmitted value)? submitOtp,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(_NewPasswordSubmitted value)? submitNewPassword,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_PhoneNumberSubmitted value)? submitPhoneNumber,
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_OtpSubmitted value)? submitOtp,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(_NewPasswordSubmitted value)? submitNewPassword,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class _PasswordChanged implements PhoneNumberEvent {
  const factory _PasswordChanged(final String password) = _$_PasswordChanged;

  String get password;
  @JsonKey(ignore: true)
  _$$_PasswordChangedCopyWith<_$_PasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ConfirmPasswordChangedCopyWith<$Res> {
  factory _$$_ConfirmPasswordChangedCopyWith(_$_ConfirmPasswordChanged value,
          $Res Function(_$_ConfirmPasswordChanged) then) =
      __$$_ConfirmPasswordChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$_ConfirmPasswordChangedCopyWithImpl<$Res>
    extends _$PhoneNumberEventCopyWithImpl<$Res, _$_ConfirmPasswordChanged>
    implements _$$_ConfirmPasswordChangedCopyWith<$Res> {
  __$$_ConfirmPasswordChangedCopyWithImpl(_$_ConfirmPasswordChanged _value,
      $Res Function(_$_ConfirmPasswordChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$_ConfirmPasswordChanged(
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ConfirmPasswordChanged implements _ConfirmPasswordChanged {
  const _$_ConfirmPasswordChanged(this.password);

  @override
  final String password;

  @override
  String toString() {
    return 'PhoneNumberEvent.confirmPasswordChanged(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConfirmPasswordChanged &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ConfirmPasswordChangedCopyWith<_$_ConfirmPasswordChanged> get copyWith =>
      __$$_ConfirmPasswordChangedCopyWithImpl<_$_ConfirmPasswordChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function() submitPhoneNumber,
    required TResult Function(String otpCode) otpChanged,
    required TResult Function() submitOtp,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String password) confirmPasswordChanged,
    required TResult Function() submitNewPassword,
  }) {
    return confirmPasswordChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? phoneNumberChanged,
    TResult? Function()? submitPhoneNumber,
    TResult? Function(String otpCode)? otpChanged,
    TResult? Function()? submitOtp,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String password)? confirmPasswordChanged,
    TResult? Function()? submitNewPassword,
  }) {
    return confirmPasswordChanged?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function()? submitPhoneNumber,
    TResult Function(String otpCode)? otpChanged,
    TResult Function()? submitOtp,
    TResult Function(String password)? passwordChanged,
    TResult Function(String password)? confirmPasswordChanged,
    TResult Function()? submitNewPassword,
    required TResult orElse(),
  }) {
    if (confirmPasswordChanged != null) {
      return confirmPasswordChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_PhoneNumberSubmitted value) submitPhoneNumber,
    required TResult Function(_OtpChanged value) otpChanged,
    required TResult Function(_OtpSubmitted value) submitOtp,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(_NewPasswordSubmitted value) submitNewPassword,
  }) {
    return confirmPasswordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult? Function(_PhoneNumberSubmitted value)? submitPhoneNumber,
    TResult? Function(_OtpChanged value)? otpChanged,
    TResult? Function(_OtpSubmitted value)? submitOtp,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(_NewPasswordSubmitted value)? submitNewPassword,
  }) {
    return confirmPasswordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_PhoneNumberSubmitted value)? submitPhoneNumber,
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_OtpSubmitted value)? submitOtp,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(_NewPasswordSubmitted value)? submitNewPassword,
    required TResult orElse(),
  }) {
    if (confirmPasswordChanged != null) {
      return confirmPasswordChanged(this);
    }
    return orElse();
  }
}

abstract class _ConfirmPasswordChanged implements PhoneNumberEvent {
  const factory _ConfirmPasswordChanged(final String password) =
      _$_ConfirmPasswordChanged;

  String get password;
  @JsonKey(ignore: true)
  _$$_ConfirmPasswordChangedCopyWith<_$_ConfirmPasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NewPasswordSubmittedCopyWith<$Res> {
  factory _$$_NewPasswordSubmittedCopyWith(_$_NewPasswordSubmitted value,
          $Res Function(_$_NewPasswordSubmitted) then) =
      __$$_NewPasswordSubmittedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NewPasswordSubmittedCopyWithImpl<$Res>
    extends _$PhoneNumberEventCopyWithImpl<$Res, _$_NewPasswordSubmitted>
    implements _$$_NewPasswordSubmittedCopyWith<$Res> {
  __$$_NewPasswordSubmittedCopyWithImpl(_$_NewPasswordSubmitted _value,
      $Res Function(_$_NewPasswordSubmitted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_NewPasswordSubmitted implements _NewPasswordSubmitted {
  const _$_NewPasswordSubmitted();

  @override
  String toString() {
    return 'PhoneNumberEvent.submitNewPassword()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NewPasswordSubmitted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function() submitPhoneNumber,
    required TResult Function(String otpCode) otpChanged,
    required TResult Function() submitOtp,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String password) confirmPasswordChanged,
    required TResult Function() submitNewPassword,
  }) {
    return submitNewPassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? phoneNumberChanged,
    TResult? Function()? submitPhoneNumber,
    TResult? Function(String otpCode)? otpChanged,
    TResult? Function()? submitOtp,
    TResult? Function(String password)? passwordChanged,
    TResult? Function(String password)? confirmPasswordChanged,
    TResult? Function()? submitNewPassword,
  }) {
    return submitNewPassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function()? submitPhoneNumber,
    TResult Function(String otpCode)? otpChanged,
    TResult Function()? submitOtp,
    TResult Function(String password)? passwordChanged,
    TResult Function(String password)? confirmPasswordChanged,
    TResult Function()? submitNewPassword,
    required TResult orElse(),
  }) {
    if (submitNewPassword != null) {
      return submitNewPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_PhoneNumberSubmitted value) submitPhoneNumber,
    required TResult Function(_OtpChanged value) otpChanged,
    required TResult Function(_OtpSubmitted value) submitOtp,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(_NewPasswordSubmitted value) submitNewPassword,
  }) {
    return submitNewPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult? Function(_PhoneNumberSubmitted value)? submitPhoneNumber,
    TResult? Function(_OtpChanged value)? otpChanged,
    TResult? Function(_OtpSubmitted value)? submitOtp,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult? Function(_NewPasswordSubmitted value)? submitNewPassword,
  }) {
    return submitNewPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_PhoneNumberSubmitted value)? submitPhoneNumber,
    TResult Function(_OtpChanged value)? otpChanged,
    TResult Function(_OtpSubmitted value)? submitOtp,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(_NewPasswordSubmitted value)? submitNewPassword,
    required TResult orElse(),
  }) {
    if (submitNewPassword != null) {
      return submitNewPassword(this);
    }
    return orElse();
  }
}

abstract class _NewPasswordSubmitted implements PhoneNumberEvent {
  const factory _NewPasswordSubmitted() = _$_NewPasswordSubmitted;
}

/// @nodoc
mixin _$PhoneNumberState {
  FormzStatus get status => throw _privateConstructorUsedError;
  PhoneNumber get phoneNumber => throw _privateConstructorUsedError;
  OtpField get otpCode => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  Password get confirmPassword => throw _privateConstructorUsedError;
  AuthFailure? get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PhoneNumberStateCopyWith<PhoneNumberState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhoneNumberStateCopyWith<$Res> {
  factory $PhoneNumberStateCopyWith(
          PhoneNumberState value, $Res Function(PhoneNumberState) then) =
      _$PhoneNumberStateCopyWithImpl<$Res, PhoneNumberState>;
  @useResult
  $Res call(
      {FormzStatus status,
      PhoneNumber phoneNumber,
      OtpField otpCode,
      Password password,
      Password confirmPassword,
      AuthFailure? failure});

  $AuthFailureCopyWith<$Res>? get failure;
}

/// @nodoc
class _$PhoneNumberStateCopyWithImpl<$Res, $Val extends PhoneNumberState>
    implements $PhoneNumberStateCopyWith<$Res> {
  _$PhoneNumberStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? phoneNumber = null,
    Object? otpCode = null,
    Object? password = null,
    Object? confirmPassword = null,
    Object? failure = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumber,
      otpCode: null == otpCode
          ? _value.otpCode
          : otpCode // ignore: cast_nullable_to_non_nullable
              as OtpField,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as Password,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as AuthFailure?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthFailureCopyWith<$Res>? get failure {
    if (_value.failure == null) {
      return null;
    }

    return $AuthFailureCopyWith<$Res>(_value.failure!, (value) {
      return _then(_value.copyWith(failure: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PhoneNumberStateCopyWith<$Res>
    implements $PhoneNumberStateCopyWith<$Res> {
  factory _$$_PhoneNumberStateCopyWith(
          _$_PhoneNumberState value, $Res Function(_$_PhoneNumberState) then) =
      __$$_PhoneNumberStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {FormzStatus status,
      PhoneNumber phoneNumber,
      OtpField otpCode,
      Password password,
      Password confirmPassword,
      AuthFailure? failure});

  @override
  $AuthFailureCopyWith<$Res>? get failure;
}

/// @nodoc
class __$$_PhoneNumberStateCopyWithImpl<$Res>
    extends _$PhoneNumberStateCopyWithImpl<$Res, _$_PhoneNumberState>
    implements _$$_PhoneNumberStateCopyWith<$Res> {
  __$$_PhoneNumberStateCopyWithImpl(
      _$_PhoneNumberState _value, $Res Function(_$_PhoneNumberState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? phoneNumber = null,
    Object? otpCode = null,
    Object? password = null,
    Object? confirmPassword = null,
    Object? failure = freezed,
  }) {
    return _then(_$_PhoneNumberState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumber,
      otpCode: null == otpCode
          ? _value.otpCode
          : otpCode // ignore: cast_nullable_to_non_nullable
              as OtpField,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as Password,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as AuthFailure?,
    ));
  }
}

/// @nodoc

class _$_PhoneNumberState implements _PhoneNumberState {
  const _$_PhoneNumberState(
      {this.status = FormzStatus.pure,
      this.phoneNumber = const PhoneNumber.pure(),
      this.otpCode = const OtpField.pure(),
      this.password = const Password.pure(),
      this.confirmPassword = const Password.pure(),
      this.failure});

  @override
  @JsonKey()
  final FormzStatus status;
  @override
  @JsonKey()
  final PhoneNumber phoneNumber;
  @override
  @JsonKey()
  final OtpField otpCode;
  @override
  @JsonKey()
  final Password password;
  @override
  @JsonKey()
  final Password confirmPassword;
  @override
  final AuthFailure? failure;

  @override
  String toString() {
    return 'PhoneNumberState(status: $status, phoneNumber: $phoneNumber, otpCode: $otpCode, password: $password, confirmPassword: $confirmPassword, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PhoneNumberState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.otpCode, otpCode) || other.otpCode == otpCode) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, phoneNumber, otpCode,
      password, confirmPassword, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PhoneNumberStateCopyWith<_$_PhoneNumberState> get copyWith =>
      __$$_PhoneNumberStateCopyWithImpl<_$_PhoneNumberState>(this, _$identity);
}

abstract class _PhoneNumberState implements PhoneNumberState {
  const factory _PhoneNumberState(
      {final FormzStatus status,
      final PhoneNumber phoneNumber,
      final OtpField otpCode,
      final Password password,
      final Password confirmPassword,
      final AuthFailure? failure}) = _$_PhoneNumberState;

  @override
  FormzStatus get status;
  @override
  PhoneNumber get phoneNumber;
  @override
  OtpField get otpCode;
  @override
  Password get password;
  @override
  Password get confirmPassword;
  @override
  AuthFailure? get failure;
  @override
  @JsonKey(ignore: true)
  _$$_PhoneNumberStateCopyWith<_$_PhoneNumberState> get copyWith =>
      throw _privateConstructorUsedError;
}
