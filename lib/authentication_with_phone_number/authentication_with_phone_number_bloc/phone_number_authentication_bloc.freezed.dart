// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'phone_number_authentication_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PhoneAuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() submitted,
    required TResult Function(String phoneNumber) otpSent,
    required TResult Function(String otpCode, String verificationId) verifyOtp,
    required TResult Function(String verificationId, int? token) confirmOtpSent,
    required TResult Function(String error) handleErrors,
    required TResult Function(AuthCredential credential) completeOtpProcess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? phoneNumberChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? submitted,
    TResult? Function(String phoneNumber)? otpSent,
    TResult? Function(String otpCode, String verificationId)? verifyOtp,
    TResult? Function(String verificationId, int? token)? confirmOtpSent,
    TResult? Function(String error)? handleErrors,
    TResult? Function(AuthCredential credential)? completeOtpProcess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? submitted,
    TResult Function(String phoneNumber)? otpSent,
    TResult Function(String otpCode, String verificationId)? verifyOtp,
    TResult Function(String verificationId, int? token)? confirmOtpSent,
    TResult Function(String error)? handleErrors,
    TResult Function(AuthCredential credential)? completeOtpProcess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PhoneNumberChangedEvent value) phoneNumberChanged,
    required TResult Function(PasswordChangedEvent value) passwordChanged,
    required TResult Function(Submitted value) submitted,
    required TResult Function(SendOtpToPhoneEvent value) otpSent,
    required TResult Function(VerifySentOtpEvent value) verifyOtp,
    required TResult Function(PhoneOtpSentEvent value) confirmOtpSent,
    required TResult Function(PhoneAuthErrorEvent value) handleErrors,
    required TResult Function(PhoneAuthVerificationCompleteEvent value)
        completeOtpProcess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PhoneNumberChangedEvent value)? phoneNumberChanged,
    TResult? Function(PasswordChangedEvent value)? passwordChanged,
    TResult? Function(Submitted value)? submitted,
    TResult? Function(SendOtpToPhoneEvent value)? otpSent,
    TResult? Function(VerifySentOtpEvent value)? verifyOtp,
    TResult? Function(PhoneOtpSentEvent value)? confirmOtpSent,
    TResult? Function(PhoneAuthErrorEvent value)? handleErrors,
    TResult? Function(PhoneAuthVerificationCompleteEvent value)?
        completeOtpProcess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PhoneNumberChangedEvent value)? phoneNumberChanged,
    TResult Function(PasswordChangedEvent value)? passwordChanged,
    TResult Function(Submitted value)? submitted,
    TResult Function(SendOtpToPhoneEvent value)? otpSent,
    TResult Function(VerifySentOtpEvent value)? verifyOtp,
    TResult Function(PhoneOtpSentEvent value)? confirmOtpSent,
    TResult Function(PhoneAuthErrorEvent value)? handleErrors,
    TResult Function(PhoneAuthVerificationCompleteEvent value)?
        completeOtpProcess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhoneAuthEventCopyWith<$Res> {
  factory $PhoneAuthEventCopyWith(
          PhoneAuthEvent value, $Res Function(PhoneAuthEvent) then) =
      _$PhoneAuthEventCopyWithImpl<$Res, PhoneAuthEvent>;
}

/// @nodoc
class _$PhoneAuthEventCopyWithImpl<$Res, $Val extends PhoneAuthEvent>
    implements $PhoneAuthEventCopyWith<$Res> {
  _$PhoneAuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PhoneNumberChangedEventCopyWith<$Res> {
  factory _$$PhoneNumberChangedEventCopyWith(_$PhoneNumberChangedEvent value,
          $Res Function(_$PhoneNumberChangedEvent) then) =
      __$$PhoneNumberChangedEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String phoneNumber});
}

/// @nodoc
class __$$PhoneNumberChangedEventCopyWithImpl<$Res>
    extends _$PhoneAuthEventCopyWithImpl<$Res, _$PhoneNumberChangedEvent>
    implements _$$PhoneNumberChangedEventCopyWith<$Res> {
  __$$PhoneNumberChangedEventCopyWithImpl(_$PhoneNumberChangedEvent _value,
      $Res Function(_$PhoneNumberChangedEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
  }) {
    return _then(_$PhoneNumberChangedEvent(
      null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PhoneNumberChangedEvent implements PhoneNumberChangedEvent {
  const _$PhoneNumberChangedEvent(this.phoneNumber);

  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'PhoneAuthEvent.phoneNumberChanged(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhoneNumberChangedEvent &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PhoneNumberChangedEventCopyWith<_$PhoneNumberChangedEvent> get copyWith =>
      __$$PhoneNumberChangedEventCopyWithImpl<_$PhoneNumberChangedEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() submitted,
    required TResult Function(String phoneNumber) otpSent,
    required TResult Function(String otpCode, String verificationId) verifyOtp,
    required TResult Function(String verificationId, int? token) confirmOtpSent,
    required TResult Function(String error) handleErrors,
    required TResult Function(AuthCredential credential) completeOtpProcess,
  }) {
    return phoneNumberChanged(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? phoneNumberChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? submitted,
    TResult? Function(String phoneNumber)? otpSent,
    TResult? Function(String otpCode, String verificationId)? verifyOtp,
    TResult? Function(String verificationId, int? token)? confirmOtpSent,
    TResult? Function(String error)? handleErrors,
    TResult? Function(AuthCredential credential)? completeOtpProcess,
  }) {
    return phoneNumberChanged?.call(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? submitted,
    TResult Function(String phoneNumber)? otpSent,
    TResult Function(String otpCode, String verificationId)? verifyOtp,
    TResult Function(String verificationId, int? token)? confirmOtpSent,
    TResult Function(String error)? handleErrors,
    TResult Function(AuthCredential credential)? completeOtpProcess,
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
    required TResult Function(PhoneNumberChangedEvent value) phoneNumberChanged,
    required TResult Function(PasswordChangedEvent value) passwordChanged,
    required TResult Function(Submitted value) submitted,
    required TResult Function(SendOtpToPhoneEvent value) otpSent,
    required TResult Function(VerifySentOtpEvent value) verifyOtp,
    required TResult Function(PhoneOtpSentEvent value) confirmOtpSent,
    required TResult Function(PhoneAuthErrorEvent value) handleErrors,
    required TResult Function(PhoneAuthVerificationCompleteEvent value)
        completeOtpProcess,
  }) {
    return phoneNumberChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PhoneNumberChangedEvent value)? phoneNumberChanged,
    TResult? Function(PasswordChangedEvent value)? passwordChanged,
    TResult? Function(Submitted value)? submitted,
    TResult? Function(SendOtpToPhoneEvent value)? otpSent,
    TResult? Function(VerifySentOtpEvent value)? verifyOtp,
    TResult? Function(PhoneOtpSentEvent value)? confirmOtpSent,
    TResult? Function(PhoneAuthErrorEvent value)? handleErrors,
    TResult? Function(PhoneAuthVerificationCompleteEvent value)?
        completeOtpProcess,
  }) {
    return phoneNumberChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PhoneNumberChangedEvent value)? phoneNumberChanged,
    TResult Function(PasswordChangedEvent value)? passwordChanged,
    TResult Function(Submitted value)? submitted,
    TResult Function(SendOtpToPhoneEvent value)? otpSent,
    TResult Function(VerifySentOtpEvent value)? verifyOtp,
    TResult Function(PhoneOtpSentEvent value)? confirmOtpSent,
    TResult Function(PhoneAuthErrorEvent value)? handleErrors,
    TResult Function(PhoneAuthVerificationCompleteEvent value)?
        completeOtpProcess,
    required TResult orElse(),
  }) {
    if (phoneNumberChanged != null) {
      return phoneNumberChanged(this);
    }
    return orElse();
  }
}

abstract class PhoneNumberChangedEvent implements PhoneAuthEvent {
  const factory PhoneNumberChangedEvent(final String phoneNumber) =
      _$PhoneNumberChangedEvent;

  String get phoneNumber;
  @JsonKey(ignore: true)
  _$$PhoneNumberChangedEventCopyWith<_$PhoneNumberChangedEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PasswordChangedEventCopyWith<$Res> {
  factory _$$PasswordChangedEventCopyWith(_$PasswordChangedEvent value,
          $Res Function(_$PasswordChangedEvent) then) =
      __$$PasswordChangedEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$PasswordChangedEventCopyWithImpl<$Res>
    extends _$PhoneAuthEventCopyWithImpl<$Res, _$PasswordChangedEvent>
    implements _$$PasswordChangedEventCopyWith<$Res> {
  __$$PasswordChangedEventCopyWithImpl(_$PasswordChangedEvent _value,
      $Res Function(_$PasswordChangedEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$PasswordChangedEvent(
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PasswordChangedEvent implements PasswordChangedEvent {
  const _$PasswordChangedEvent(this.password);

  @override
  final String password;

  @override
  String toString() {
    return 'PhoneAuthEvent.passwordChanged(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordChangedEvent &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordChangedEventCopyWith<_$PasswordChangedEvent> get copyWith =>
      __$$PasswordChangedEventCopyWithImpl<_$PasswordChangedEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() submitted,
    required TResult Function(String phoneNumber) otpSent,
    required TResult Function(String otpCode, String verificationId) verifyOtp,
    required TResult Function(String verificationId, int? token) confirmOtpSent,
    required TResult Function(String error) handleErrors,
    required TResult Function(AuthCredential credential) completeOtpProcess,
  }) {
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? phoneNumberChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? submitted,
    TResult? Function(String phoneNumber)? otpSent,
    TResult? Function(String otpCode, String verificationId)? verifyOtp,
    TResult? Function(String verificationId, int? token)? confirmOtpSent,
    TResult? Function(String error)? handleErrors,
    TResult? Function(AuthCredential credential)? completeOtpProcess,
  }) {
    return passwordChanged?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? submitted,
    TResult Function(String phoneNumber)? otpSent,
    TResult Function(String otpCode, String verificationId)? verifyOtp,
    TResult Function(String verificationId, int? token)? confirmOtpSent,
    TResult Function(String error)? handleErrors,
    TResult Function(AuthCredential credential)? completeOtpProcess,
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
    required TResult Function(PhoneNumberChangedEvent value) phoneNumberChanged,
    required TResult Function(PasswordChangedEvent value) passwordChanged,
    required TResult Function(Submitted value) submitted,
    required TResult Function(SendOtpToPhoneEvent value) otpSent,
    required TResult Function(VerifySentOtpEvent value) verifyOtp,
    required TResult Function(PhoneOtpSentEvent value) confirmOtpSent,
    required TResult Function(PhoneAuthErrorEvent value) handleErrors,
    required TResult Function(PhoneAuthVerificationCompleteEvent value)
        completeOtpProcess,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PhoneNumberChangedEvent value)? phoneNumberChanged,
    TResult? Function(PasswordChangedEvent value)? passwordChanged,
    TResult? Function(Submitted value)? submitted,
    TResult? Function(SendOtpToPhoneEvent value)? otpSent,
    TResult? Function(VerifySentOtpEvent value)? verifyOtp,
    TResult? Function(PhoneOtpSentEvent value)? confirmOtpSent,
    TResult? Function(PhoneAuthErrorEvent value)? handleErrors,
    TResult? Function(PhoneAuthVerificationCompleteEvent value)?
        completeOtpProcess,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PhoneNumberChangedEvent value)? phoneNumberChanged,
    TResult Function(PasswordChangedEvent value)? passwordChanged,
    TResult Function(Submitted value)? submitted,
    TResult Function(SendOtpToPhoneEvent value)? otpSent,
    TResult Function(VerifySentOtpEvent value)? verifyOtp,
    TResult Function(PhoneOtpSentEvent value)? confirmOtpSent,
    TResult Function(PhoneAuthErrorEvent value)? handleErrors,
    TResult Function(PhoneAuthVerificationCompleteEvent value)?
        completeOtpProcess,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChangedEvent implements PhoneAuthEvent {
  const factory PasswordChangedEvent(final String password) =
      _$PasswordChangedEvent;

  String get password;
  @JsonKey(ignore: true)
  _$$PasswordChangedEventCopyWith<_$PasswordChangedEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SubmittedCopyWith<$Res> {
  factory _$$SubmittedCopyWith(
          _$Submitted value, $Res Function(_$Submitted) then) =
      __$$SubmittedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SubmittedCopyWithImpl<$Res>
    extends _$PhoneAuthEventCopyWithImpl<$Res, _$Submitted>
    implements _$$SubmittedCopyWith<$Res> {
  __$$SubmittedCopyWithImpl(
      _$Submitted _value, $Res Function(_$Submitted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Submitted implements Submitted {
  const _$Submitted();

  @override
  String toString() {
    return 'PhoneAuthEvent.submitted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Submitted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() submitted,
    required TResult Function(String phoneNumber) otpSent,
    required TResult Function(String otpCode, String verificationId) verifyOtp,
    required TResult Function(String verificationId, int? token) confirmOtpSent,
    required TResult Function(String error) handleErrors,
    required TResult Function(AuthCredential credential) completeOtpProcess,
  }) {
    return submitted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? phoneNumberChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? submitted,
    TResult? Function(String phoneNumber)? otpSent,
    TResult? Function(String otpCode, String verificationId)? verifyOtp,
    TResult? Function(String verificationId, int? token)? confirmOtpSent,
    TResult? Function(String error)? handleErrors,
    TResult? Function(AuthCredential credential)? completeOtpProcess,
  }) {
    return submitted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? submitted,
    TResult Function(String phoneNumber)? otpSent,
    TResult Function(String otpCode, String verificationId)? verifyOtp,
    TResult Function(String verificationId, int? token)? confirmOtpSent,
    TResult Function(String error)? handleErrors,
    TResult Function(AuthCredential credential)? completeOtpProcess,
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
    required TResult Function(PhoneNumberChangedEvent value) phoneNumberChanged,
    required TResult Function(PasswordChangedEvent value) passwordChanged,
    required TResult Function(Submitted value) submitted,
    required TResult Function(SendOtpToPhoneEvent value) otpSent,
    required TResult Function(VerifySentOtpEvent value) verifyOtp,
    required TResult Function(PhoneOtpSentEvent value) confirmOtpSent,
    required TResult Function(PhoneAuthErrorEvent value) handleErrors,
    required TResult Function(PhoneAuthVerificationCompleteEvent value)
        completeOtpProcess,
  }) {
    return submitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PhoneNumberChangedEvent value)? phoneNumberChanged,
    TResult? Function(PasswordChangedEvent value)? passwordChanged,
    TResult? Function(Submitted value)? submitted,
    TResult? Function(SendOtpToPhoneEvent value)? otpSent,
    TResult? Function(VerifySentOtpEvent value)? verifyOtp,
    TResult? Function(PhoneOtpSentEvent value)? confirmOtpSent,
    TResult? Function(PhoneAuthErrorEvent value)? handleErrors,
    TResult? Function(PhoneAuthVerificationCompleteEvent value)?
        completeOtpProcess,
  }) {
    return submitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PhoneNumberChangedEvent value)? phoneNumberChanged,
    TResult Function(PasswordChangedEvent value)? passwordChanged,
    TResult Function(Submitted value)? submitted,
    TResult Function(SendOtpToPhoneEvent value)? otpSent,
    TResult Function(VerifySentOtpEvent value)? verifyOtp,
    TResult Function(PhoneOtpSentEvent value)? confirmOtpSent,
    TResult Function(PhoneAuthErrorEvent value)? handleErrors,
    TResult Function(PhoneAuthVerificationCompleteEvent value)?
        completeOtpProcess,
    required TResult orElse(),
  }) {
    if (submitted != null) {
      return submitted(this);
    }
    return orElse();
  }
}

abstract class Submitted implements PhoneAuthEvent {
  const factory Submitted() = _$Submitted;
}

/// @nodoc
abstract class _$$SendOtpToPhoneEventCopyWith<$Res> {
  factory _$$SendOtpToPhoneEventCopyWith(_$SendOtpToPhoneEvent value,
          $Res Function(_$SendOtpToPhoneEvent) then) =
      __$$SendOtpToPhoneEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String phoneNumber});
}

/// @nodoc
class __$$SendOtpToPhoneEventCopyWithImpl<$Res>
    extends _$PhoneAuthEventCopyWithImpl<$Res, _$SendOtpToPhoneEvent>
    implements _$$SendOtpToPhoneEventCopyWith<$Res> {
  __$$SendOtpToPhoneEventCopyWithImpl(
      _$SendOtpToPhoneEvent _value, $Res Function(_$SendOtpToPhoneEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
  }) {
    return _then(_$SendOtpToPhoneEvent(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendOtpToPhoneEvent implements SendOtpToPhoneEvent {
  const _$SendOtpToPhoneEvent({required this.phoneNumber});

  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'PhoneAuthEvent.otpSent(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendOtpToPhoneEvent &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendOtpToPhoneEventCopyWith<_$SendOtpToPhoneEvent> get copyWith =>
      __$$SendOtpToPhoneEventCopyWithImpl<_$SendOtpToPhoneEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() submitted,
    required TResult Function(String phoneNumber) otpSent,
    required TResult Function(String otpCode, String verificationId) verifyOtp,
    required TResult Function(String verificationId, int? token) confirmOtpSent,
    required TResult Function(String error) handleErrors,
    required TResult Function(AuthCredential credential) completeOtpProcess,
  }) {
    return otpSent(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? phoneNumberChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? submitted,
    TResult? Function(String phoneNumber)? otpSent,
    TResult? Function(String otpCode, String verificationId)? verifyOtp,
    TResult? Function(String verificationId, int? token)? confirmOtpSent,
    TResult? Function(String error)? handleErrors,
    TResult? Function(AuthCredential credential)? completeOtpProcess,
  }) {
    return otpSent?.call(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? submitted,
    TResult Function(String phoneNumber)? otpSent,
    TResult Function(String otpCode, String verificationId)? verifyOtp,
    TResult Function(String verificationId, int? token)? confirmOtpSent,
    TResult Function(String error)? handleErrors,
    TResult Function(AuthCredential credential)? completeOtpProcess,
    required TResult orElse(),
  }) {
    if (otpSent != null) {
      return otpSent(phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PhoneNumberChangedEvent value) phoneNumberChanged,
    required TResult Function(PasswordChangedEvent value) passwordChanged,
    required TResult Function(Submitted value) submitted,
    required TResult Function(SendOtpToPhoneEvent value) otpSent,
    required TResult Function(VerifySentOtpEvent value) verifyOtp,
    required TResult Function(PhoneOtpSentEvent value) confirmOtpSent,
    required TResult Function(PhoneAuthErrorEvent value) handleErrors,
    required TResult Function(PhoneAuthVerificationCompleteEvent value)
        completeOtpProcess,
  }) {
    return otpSent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PhoneNumberChangedEvent value)? phoneNumberChanged,
    TResult? Function(PasswordChangedEvent value)? passwordChanged,
    TResult? Function(Submitted value)? submitted,
    TResult? Function(SendOtpToPhoneEvent value)? otpSent,
    TResult? Function(VerifySentOtpEvent value)? verifyOtp,
    TResult? Function(PhoneOtpSentEvent value)? confirmOtpSent,
    TResult? Function(PhoneAuthErrorEvent value)? handleErrors,
    TResult? Function(PhoneAuthVerificationCompleteEvent value)?
        completeOtpProcess,
  }) {
    return otpSent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PhoneNumberChangedEvent value)? phoneNumberChanged,
    TResult Function(PasswordChangedEvent value)? passwordChanged,
    TResult Function(Submitted value)? submitted,
    TResult Function(SendOtpToPhoneEvent value)? otpSent,
    TResult Function(VerifySentOtpEvent value)? verifyOtp,
    TResult Function(PhoneOtpSentEvent value)? confirmOtpSent,
    TResult Function(PhoneAuthErrorEvent value)? handleErrors,
    TResult Function(PhoneAuthVerificationCompleteEvent value)?
        completeOtpProcess,
    required TResult orElse(),
  }) {
    if (otpSent != null) {
      return otpSent(this);
    }
    return orElse();
  }
}

abstract class SendOtpToPhoneEvent implements PhoneAuthEvent {
  const factory SendOtpToPhoneEvent({required final String phoneNumber}) =
      _$SendOtpToPhoneEvent;

  String get phoneNumber;
  @JsonKey(ignore: true)
  _$$SendOtpToPhoneEventCopyWith<_$SendOtpToPhoneEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VerifySentOtpEventCopyWith<$Res> {
  factory _$$VerifySentOtpEventCopyWith(_$VerifySentOtpEvent value,
          $Res Function(_$VerifySentOtpEvent) then) =
      __$$VerifySentOtpEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String otpCode, String verificationId});
}

/// @nodoc
class __$$VerifySentOtpEventCopyWithImpl<$Res>
    extends _$PhoneAuthEventCopyWithImpl<$Res, _$VerifySentOtpEvent>
    implements _$$VerifySentOtpEventCopyWith<$Res> {
  __$$VerifySentOtpEventCopyWithImpl(
      _$VerifySentOtpEvent _value, $Res Function(_$VerifySentOtpEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otpCode = null,
    Object? verificationId = null,
  }) {
    return _then(_$VerifySentOtpEvent(
      otpCode: null == otpCode
          ? _value.otpCode
          : otpCode // ignore: cast_nullable_to_non_nullable
              as String,
      verificationId: null == verificationId
          ? _value.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$VerifySentOtpEvent implements VerifySentOtpEvent {
  const _$VerifySentOtpEvent(
      {required this.otpCode, required this.verificationId});

  @override
  final String otpCode;
  @override
  final String verificationId;

  @override
  String toString() {
    return 'PhoneAuthEvent.verifyOtp(otpCode: $otpCode, verificationId: $verificationId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifySentOtpEvent &&
            (identical(other.otpCode, otpCode) || other.otpCode == otpCode) &&
            (identical(other.verificationId, verificationId) ||
                other.verificationId == verificationId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, otpCode, verificationId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifySentOtpEventCopyWith<_$VerifySentOtpEvent> get copyWith =>
      __$$VerifySentOtpEventCopyWithImpl<_$VerifySentOtpEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() submitted,
    required TResult Function(String phoneNumber) otpSent,
    required TResult Function(String otpCode, String verificationId) verifyOtp,
    required TResult Function(String verificationId, int? token) confirmOtpSent,
    required TResult Function(String error) handleErrors,
    required TResult Function(AuthCredential credential) completeOtpProcess,
  }) {
    return verifyOtp(otpCode, verificationId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? phoneNumberChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? submitted,
    TResult? Function(String phoneNumber)? otpSent,
    TResult? Function(String otpCode, String verificationId)? verifyOtp,
    TResult? Function(String verificationId, int? token)? confirmOtpSent,
    TResult? Function(String error)? handleErrors,
    TResult? Function(AuthCredential credential)? completeOtpProcess,
  }) {
    return verifyOtp?.call(otpCode, verificationId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? submitted,
    TResult Function(String phoneNumber)? otpSent,
    TResult Function(String otpCode, String verificationId)? verifyOtp,
    TResult Function(String verificationId, int? token)? confirmOtpSent,
    TResult Function(String error)? handleErrors,
    TResult Function(AuthCredential credential)? completeOtpProcess,
    required TResult orElse(),
  }) {
    if (verifyOtp != null) {
      return verifyOtp(otpCode, verificationId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PhoneNumberChangedEvent value) phoneNumberChanged,
    required TResult Function(PasswordChangedEvent value) passwordChanged,
    required TResult Function(Submitted value) submitted,
    required TResult Function(SendOtpToPhoneEvent value) otpSent,
    required TResult Function(VerifySentOtpEvent value) verifyOtp,
    required TResult Function(PhoneOtpSentEvent value) confirmOtpSent,
    required TResult Function(PhoneAuthErrorEvent value) handleErrors,
    required TResult Function(PhoneAuthVerificationCompleteEvent value)
        completeOtpProcess,
  }) {
    return verifyOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PhoneNumberChangedEvent value)? phoneNumberChanged,
    TResult? Function(PasswordChangedEvent value)? passwordChanged,
    TResult? Function(Submitted value)? submitted,
    TResult? Function(SendOtpToPhoneEvent value)? otpSent,
    TResult? Function(VerifySentOtpEvent value)? verifyOtp,
    TResult? Function(PhoneOtpSentEvent value)? confirmOtpSent,
    TResult? Function(PhoneAuthErrorEvent value)? handleErrors,
    TResult? Function(PhoneAuthVerificationCompleteEvent value)?
        completeOtpProcess,
  }) {
    return verifyOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PhoneNumberChangedEvent value)? phoneNumberChanged,
    TResult Function(PasswordChangedEvent value)? passwordChanged,
    TResult Function(Submitted value)? submitted,
    TResult Function(SendOtpToPhoneEvent value)? otpSent,
    TResult Function(VerifySentOtpEvent value)? verifyOtp,
    TResult Function(PhoneOtpSentEvent value)? confirmOtpSent,
    TResult Function(PhoneAuthErrorEvent value)? handleErrors,
    TResult Function(PhoneAuthVerificationCompleteEvent value)?
        completeOtpProcess,
    required TResult orElse(),
  }) {
    if (verifyOtp != null) {
      return verifyOtp(this);
    }
    return orElse();
  }
}

abstract class VerifySentOtpEvent implements PhoneAuthEvent {
  const factory VerifySentOtpEvent(
      {required final String otpCode,
      required final String verificationId}) = _$VerifySentOtpEvent;

  String get otpCode;
  String get verificationId;
  @JsonKey(ignore: true)
  _$$VerifySentOtpEventCopyWith<_$VerifySentOtpEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PhoneOtpSentEventCopyWith<$Res> {
  factory _$$PhoneOtpSentEventCopyWith(
          _$PhoneOtpSentEvent value, $Res Function(_$PhoneOtpSentEvent) then) =
      __$$PhoneOtpSentEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String verificationId, int? token});
}

/// @nodoc
class __$$PhoneOtpSentEventCopyWithImpl<$Res>
    extends _$PhoneAuthEventCopyWithImpl<$Res, _$PhoneOtpSentEvent>
    implements _$$PhoneOtpSentEventCopyWith<$Res> {
  __$$PhoneOtpSentEventCopyWithImpl(
      _$PhoneOtpSentEvent _value, $Res Function(_$PhoneOtpSentEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? verificationId = null,
    Object? token = freezed,
  }) {
    return _then(_$PhoneOtpSentEvent(
      verificationId: null == verificationId
          ? _value.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
              as String,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$PhoneOtpSentEvent implements PhoneOtpSentEvent {
  const _$PhoneOtpSentEvent(
      {required this.verificationId, required this.token});

  @override
  final String verificationId;
  @override
  final int? token;

  @override
  String toString() {
    return 'PhoneAuthEvent.confirmOtpSent(verificationId: $verificationId, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhoneOtpSentEvent &&
            (identical(other.verificationId, verificationId) ||
                other.verificationId == verificationId) &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode => Object.hash(runtimeType, verificationId, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PhoneOtpSentEventCopyWith<_$PhoneOtpSentEvent> get copyWith =>
      __$$PhoneOtpSentEventCopyWithImpl<_$PhoneOtpSentEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() submitted,
    required TResult Function(String phoneNumber) otpSent,
    required TResult Function(String otpCode, String verificationId) verifyOtp,
    required TResult Function(String verificationId, int? token) confirmOtpSent,
    required TResult Function(String error) handleErrors,
    required TResult Function(AuthCredential credential) completeOtpProcess,
  }) {
    return confirmOtpSent(verificationId, token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? phoneNumberChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? submitted,
    TResult? Function(String phoneNumber)? otpSent,
    TResult? Function(String otpCode, String verificationId)? verifyOtp,
    TResult? Function(String verificationId, int? token)? confirmOtpSent,
    TResult? Function(String error)? handleErrors,
    TResult? Function(AuthCredential credential)? completeOtpProcess,
  }) {
    return confirmOtpSent?.call(verificationId, token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? submitted,
    TResult Function(String phoneNumber)? otpSent,
    TResult Function(String otpCode, String verificationId)? verifyOtp,
    TResult Function(String verificationId, int? token)? confirmOtpSent,
    TResult Function(String error)? handleErrors,
    TResult Function(AuthCredential credential)? completeOtpProcess,
    required TResult orElse(),
  }) {
    if (confirmOtpSent != null) {
      return confirmOtpSent(verificationId, token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PhoneNumberChangedEvent value) phoneNumberChanged,
    required TResult Function(PasswordChangedEvent value) passwordChanged,
    required TResult Function(Submitted value) submitted,
    required TResult Function(SendOtpToPhoneEvent value) otpSent,
    required TResult Function(VerifySentOtpEvent value) verifyOtp,
    required TResult Function(PhoneOtpSentEvent value) confirmOtpSent,
    required TResult Function(PhoneAuthErrorEvent value) handleErrors,
    required TResult Function(PhoneAuthVerificationCompleteEvent value)
        completeOtpProcess,
  }) {
    return confirmOtpSent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PhoneNumberChangedEvent value)? phoneNumberChanged,
    TResult? Function(PasswordChangedEvent value)? passwordChanged,
    TResult? Function(Submitted value)? submitted,
    TResult? Function(SendOtpToPhoneEvent value)? otpSent,
    TResult? Function(VerifySentOtpEvent value)? verifyOtp,
    TResult? Function(PhoneOtpSentEvent value)? confirmOtpSent,
    TResult? Function(PhoneAuthErrorEvent value)? handleErrors,
    TResult? Function(PhoneAuthVerificationCompleteEvent value)?
        completeOtpProcess,
  }) {
    return confirmOtpSent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PhoneNumberChangedEvent value)? phoneNumberChanged,
    TResult Function(PasswordChangedEvent value)? passwordChanged,
    TResult Function(Submitted value)? submitted,
    TResult Function(SendOtpToPhoneEvent value)? otpSent,
    TResult Function(VerifySentOtpEvent value)? verifyOtp,
    TResult Function(PhoneOtpSentEvent value)? confirmOtpSent,
    TResult Function(PhoneAuthErrorEvent value)? handleErrors,
    TResult Function(PhoneAuthVerificationCompleteEvent value)?
        completeOtpProcess,
    required TResult orElse(),
  }) {
    if (confirmOtpSent != null) {
      return confirmOtpSent(this);
    }
    return orElse();
  }
}

abstract class PhoneOtpSentEvent implements PhoneAuthEvent {
  const factory PhoneOtpSentEvent(
      {required final String verificationId,
      required final int? token}) = _$PhoneOtpSentEvent;

  String get verificationId;
  int? get token;
  @JsonKey(ignore: true)
  _$$PhoneOtpSentEventCopyWith<_$PhoneOtpSentEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PhoneAuthErrorEventCopyWith<$Res> {
  factory _$$PhoneAuthErrorEventCopyWith(_$PhoneAuthErrorEvent value,
          $Res Function(_$PhoneAuthErrorEvent) then) =
      __$$PhoneAuthErrorEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$PhoneAuthErrorEventCopyWithImpl<$Res>
    extends _$PhoneAuthEventCopyWithImpl<$Res, _$PhoneAuthErrorEvent>
    implements _$$PhoneAuthErrorEventCopyWith<$Res> {
  __$$PhoneAuthErrorEventCopyWithImpl(
      _$PhoneAuthErrorEvent _value, $Res Function(_$PhoneAuthErrorEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$PhoneAuthErrorEvent(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PhoneAuthErrorEvent implements PhoneAuthErrorEvent {
  const _$PhoneAuthErrorEvent({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'PhoneAuthEvent.handleErrors(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhoneAuthErrorEvent &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PhoneAuthErrorEventCopyWith<_$PhoneAuthErrorEvent> get copyWith =>
      __$$PhoneAuthErrorEventCopyWithImpl<_$PhoneAuthErrorEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() submitted,
    required TResult Function(String phoneNumber) otpSent,
    required TResult Function(String otpCode, String verificationId) verifyOtp,
    required TResult Function(String verificationId, int? token) confirmOtpSent,
    required TResult Function(String error) handleErrors,
    required TResult Function(AuthCredential credential) completeOtpProcess,
  }) {
    return handleErrors(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? phoneNumberChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? submitted,
    TResult? Function(String phoneNumber)? otpSent,
    TResult? Function(String otpCode, String verificationId)? verifyOtp,
    TResult? Function(String verificationId, int? token)? confirmOtpSent,
    TResult? Function(String error)? handleErrors,
    TResult? Function(AuthCredential credential)? completeOtpProcess,
  }) {
    return handleErrors?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? submitted,
    TResult Function(String phoneNumber)? otpSent,
    TResult Function(String otpCode, String verificationId)? verifyOtp,
    TResult Function(String verificationId, int? token)? confirmOtpSent,
    TResult Function(String error)? handleErrors,
    TResult Function(AuthCredential credential)? completeOtpProcess,
    required TResult orElse(),
  }) {
    if (handleErrors != null) {
      return handleErrors(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PhoneNumberChangedEvent value) phoneNumberChanged,
    required TResult Function(PasswordChangedEvent value) passwordChanged,
    required TResult Function(Submitted value) submitted,
    required TResult Function(SendOtpToPhoneEvent value) otpSent,
    required TResult Function(VerifySentOtpEvent value) verifyOtp,
    required TResult Function(PhoneOtpSentEvent value) confirmOtpSent,
    required TResult Function(PhoneAuthErrorEvent value) handleErrors,
    required TResult Function(PhoneAuthVerificationCompleteEvent value)
        completeOtpProcess,
  }) {
    return handleErrors(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PhoneNumberChangedEvent value)? phoneNumberChanged,
    TResult? Function(PasswordChangedEvent value)? passwordChanged,
    TResult? Function(Submitted value)? submitted,
    TResult? Function(SendOtpToPhoneEvent value)? otpSent,
    TResult? Function(VerifySentOtpEvent value)? verifyOtp,
    TResult? Function(PhoneOtpSentEvent value)? confirmOtpSent,
    TResult? Function(PhoneAuthErrorEvent value)? handleErrors,
    TResult? Function(PhoneAuthVerificationCompleteEvent value)?
        completeOtpProcess,
  }) {
    return handleErrors?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PhoneNumberChangedEvent value)? phoneNumberChanged,
    TResult Function(PasswordChangedEvent value)? passwordChanged,
    TResult Function(Submitted value)? submitted,
    TResult Function(SendOtpToPhoneEvent value)? otpSent,
    TResult Function(VerifySentOtpEvent value)? verifyOtp,
    TResult Function(PhoneOtpSentEvent value)? confirmOtpSent,
    TResult Function(PhoneAuthErrorEvent value)? handleErrors,
    TResult Function(PhoneAuthVerificationCompleteEvent value)?
        completeOtpProcess,
    required TResult orElse(),
  }) {
    if (handleErrors != null) {
      return handleErrors(this);
    }
    return orElse();
  }
}

abstract class PhoneAuthErrorEvent implements PhoneAuthEvent {
  const factory PhoneAuthErrorEvent({required final String error}) =
      _$PhoneAuthErrorEvent;

  String get error;
  @JsonKey(ignore: true)
  _$$PhoneAuthErrorEventCopyWith<_$PhoneAuthErrorEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PhoneAuthVerificationCompleteEventCopyWith<$Res> {
  factory _$$PhoneAuthVerificationCompleteEventCopyWith(
          _$PhoneAuthVerificationCompleteEvent value,
          $Res Function(_$PhoneAuthVerificationCompleteEvent) then) =
      __$$PhoneAuthVerificationCompleteEventCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthCredential credential});
}

/// @nodoc
class __$$PhoneAuthVerificationCompleteEventCopyWithImpl<$Res>
    extends _$PhoneAuthEventCopyWithImpl<$Res,
        _$PhoneAuthVerificationCompleteEvent>
    implements _$$PhoneAuthVerificationCompleteEventCopyWith<$Res> {
  __$$PhoneAuthVerificationCompleteEventCopyWithImpl(
      _$PhoneAuthVerificationCompleteEvent _value,
      $Res Function(_$PhoneAuthVerificationCompleteEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? credential = null,
  }) {
    return _then(_$PhoneAuthVerificationCompleteEvent(
      credential: null == credential
          ? _value.credential
          : credential // ignore: cast_nullable_to_non_nullable
              as AuthCredential,
    ));
  }
}

/// @nodoc

class _$PhoneAuthVerificationCompleteEvent
    implements PhoneAuthVerificationCompleteEvent {
  const _$PhoneAuthVerificationCompleteEvent({required this.credential});

  @override
  final AuthCredential credential;

  @override
  String toString() {
    return 'PhoneAuthEvent.completeOtpProcess(credential: $credential)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhoneAuthVerificationCompleteEvent &&
            (identical(other.credential, credential) ||
                other.credential == credential));
  }

  @override
  int get hashCode => Object.hash(runtimeType, credential);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PhoneAuthVerificationCompleteEventCopyWith<
          _$PhoneAuthVerificationCompleteEvent>
      get copyWith => __$$PhoneAuthVerificationCompleteEventCopyWithImpl<
          _$PhoneAuthVerificationCompleteEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() submitted,
    required TResult Function(String phoneNumber) otpSent,
    required TResult Function(String otpCode, String verificationId) verifyOtp,
    required TResult Function(String verificationId, int? token) confirmOtpSent,
    required TResult Function(String error) handleErrors,
    required TResult Function(AuthCredential credential) completeOtpProcess,
  }) {
    return completeOtpProcess(credential);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? phoneNumberChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? submitted,
    TResult? Function(String phoneNumber)? otpSent,
    TResult? Function(String otpCode, String verificationId)? verifyOtp,
    TResult? Function(String verificationId, int? token)? confirmOtpSent,
    TResult? Function(String error)? handleErrors,
    TResult? Function(AuthCredential credential)? completeOtpProcess,
  }) {
    return completeOtpProcess?.call(credential);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? submitted,
    TResult Function(String phoneNumber)? otpSent,
    TResult Function(String otpCode, String verificationId)? verifyOtp,
    TResult Function(String verificationId, int? token)? confirmOtpSent,
    TResult Function(String error)? handleErrors,
    TResult Function(AuthCredential credential)? completeOtpProcess,
    required TResult orElse(),
  }) {
    if (completeOtpProcess != null) {
      return completeOtpProcess(credential);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PhoneNumberChangedEvent value) phoneNumberChanged,
    required TResult Function(PasswordChangedEvent value) passwordChanged,
    required TResult Function(Submitted value) submitted,
    required TResult Function(SendOtpToPhoneEvent value) otpSent,
    required TResult Function(VerifySentOtpEvent value) verifyOtp,
    required TResult Function(PhoneOtpSentEvent value) confirmOtpSent,
    required TResult Function(PhoneAuthErrorEvent value) handleErrors,
    required TResult Function(PhoneAuthVerificationCompleteEvent value)
        completeOtpProcess,
  }) {
    return completeOtpProcess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PhoneNumberChangedEvent value)? phoneNumberChanged,
    TResult? Function(PasswordChangedEvent value)? passwordChanged,
    TResult? Function(Submitted value)? submitted,
    TResult? Function(SendOtpToPhoneEvent value)? otpSent,
    TResult? Function(VerifySentOtpEvent value)? verifyOtp,
    TResult? Function(PhoneOtpSentEvent value)? confirmOtpSent,
    TResult? Function(PhoneAuthErrorEvent value)? handleErrors,
    TResult? Function(PhoneAuthVerificationCompleteEvent value)?
        completeOtpProcess,
  }) {
    return completeOtpProcess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PhoneNumberChangedEvent value)? phoneNumberChanged,
    TResult Function(PasswordChangedEvent value)? passwordChanged,
    TResult Function(Submitted value)? submitted,
    TResult Function(SendOtpToPhoneEvent value)? otpSent,
    TResult Function(VerifySentOtpEvent value)? verifyOtp,
    TResult Function(PhoneOtpSentEvent value)? confirmOtpSent,
    TResult Function(PhoneAuthErrorEvent value)? handleErrors,
    TResult Function(PhoneAuthVerificationCompleteEvent value)?
        completeOtpProcess,
    required TResult orElse(),
  }) {
    if (completeOtpProcess != null) {
      return completeOtpProcess(this);
    }
    return orElse();
  }
}

abstract class PhoneAuthVerificationCompleteEvent implements PhoneAuthEvent {
  const factory PhoneAuthVerificationCompleteEvent(
          {required final AuthCredential credential}) =
      _$PhoneAuthVerificationCompleteEvent;

  AuthCredential get credential;
  @JsonKey(ignore: true)
  _$$PhoneAuthVerificationCompleteEventCopyWith<
          _$PhoneAuthVerificationCompleteEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PhoneAuthState {
  FormzStatus get status => throw _privateConstructorUsedError;
  PhoneNumber get phoneNumber => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  String get verificationId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PhoneAuthStateCopyWith<PhoneAuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhoneAuthStateCopyWith<$Res> {
  factory $PhoneAuthStateCopyWith(
          PhoneAuthState value, $Res Function(PhoneAuthState) then) =
      _$PhoneAuthStateCopyWithImpl<$Res, PhoneAuthState>;
  @useResult
  $Res call(
      {FormzStatus status,
      PhoneNumber phoneNumber,
      Password password,
      String verificationId});
}

/// @nodoc
class _$PhoneAuthStateCopyWithImpl<$Res, $Val extends PhoneAuthState>
    implements $PhoneAuthStateCopyWith<$Res> {
  _$PhoneAuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? phoneNumber = null,
    Object? password = null,
    Object? verificationId = null,
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
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      verificationId: null == verificationId
          ? _value.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PhoneAuthStateCopyWith<$Res>
    implements $PhoneAuthStateCopyWith<$Res> {
  factory _$$_PhoneAuthStateCopyWith(
          _$_PhoneAuthState value, $Res Function(_$_PhoneAuthState) then) =
      __$$_PhoneAuthStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {FormzStatus status,
      PhoneNumber phoneNumber,
      Password password,
      String verificationId});
}

/// @nodoc
class __$$_PhoneAuthStateCopyWithImpl<$Res>
    extends _$PhoneAuthStateCopyWithImpl<$Res, _$_PhoneAuthState>
    implements _$$_PhoneAuthStateCopyWith<$Res> {
  __$$_PhoneAuthStateCopyWithImpl(
      _$_PhoneAuthState _value, $Res Function(_$_PhoneAuthState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? phoneNumber = null,
    Object? password = null,
    Object? verificationId = null,
  }) {
    return _then(_$_PhoneAuthState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumber,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      verificationId: null == verificationId
          ? _value.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PhoneAuthState implements _PhoneAuthState {
  const _$_PhoneAuthState(
      {this.status = FormzStatus.pure,
      this.phoneNumber = const PhoneNumber.pure(),
      this.password = const Password.pure(),
      this.verificationId = ''});

  @override
  @JsonKey()
  final FormzStatus status;
  @override
  @JsonKey()
  final PhoneNumber phoneNumber;
  @override
  @JsonKey()
  final Password password;
  @override
  @JsonKey()
  final String verificationId;

  @override
  String toString() {
    return 'PhoneAuthState(status: $status, phoneNumber: $phoneNumber, password: $password, verificationId: $verificationId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PhoneAuthState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.verificationId, verificationId) ||
                other.verificationId == verificationId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, status, phoneNumber, password, verificationId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PhoneAuthStateCopyWith<_$_PhoneAuthState> get copyWith =>
      __$$_PhoneAuthStateCopyWithImpl<_$_PhoneAuthState>(this, _$identity);
}

abstract class _PhoneAuthState implements PhoneAuthState {
  const factory _PhoneAuthState(
      {final FormzStatus status,
      final PhoneNumber phoneNumber,
      final Password password,
      final String verificationId}) = _$_PhoneAuthState;

  @override
  FormzStatus get status;
  @override
  PhoneNumber get phoneNumber;
  @override
  Password get password;
  @override
  String get verificationId;
  @override
  @JsonKey(ignore: true)
  _$$_PhoneAuthStateCopyWith<_$_PhoneAuthState> get copyWith =>
      throw _privateConstructorUsedError;
}
