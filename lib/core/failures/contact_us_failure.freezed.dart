// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'contact_us_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ContactUsFailure {
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) invalidEmail,
    required TResult Function(String message) inValidMessage,
    required TResult Function(String message) operationNotAllowed,
    required TResult Function(String message) emailNotFound,
    required TResult Function(String message) unexpected,
    required TResult Function(String message) serverError,
    required TResult Function(String message) withMessage,
    required TResult Function(String message) someFieldsAreRequired,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? invalidEmail,
    TResult? Function(String message)? inValidMessage,
    TResult? Function(String message)? operationNotAllowed,
    TResult? Function(String message)? emailNotFound,
    TResult? Function(String message)? unexpected,
    TResult? Function(String message)? serverError,
    TResult? Function(String message)? withMessage,
    TResult? Function(String message)? someFieldsAreRequired,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? invalidEmail,
    TResult Function(String message)? inValidMessage,
    TResult Function(String message)? operationNotAllowed,
    TResult Function(String message)? emailNotFound,
    TResult Function(String message)? unexpected,
    TResult Function(String message)? serverError,
    TResult Function(String message)? withMessage,
    TResult Function(String message)? someFieldsAreRequired,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(InvalidMessage value) inValidMessage,
    required TResult Function(OperationNotAllowed value) operationNotAllowed,
    required TResult Function(EmailNotFound value) emailNotFound,
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_WithMessage value) withMessage,
    required TResult Function(_RequiredFields value) someFieldsAreRequired,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvalidEmail value)? invalidEmail,
    TResult? Function(InvalidMessage value)? inValidMessage,
    TResult? Function(OperationNotAllowed value)? operationNotAllowed,
    TResult? Function(EmailNotFound value)? emailNotFound,
    TResult? Function(_Unexpected value)? unexpected,
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_WithMessage value)? withMessage,
    TResult? Function(_RequiredFields value)? someFieldsAreRequired,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(InvalidMessage value)? inValidMessage,
    TResult Function(OperationNotAllowed value)? operationNotAllowed,
    TResult Function(EmailNotFound value)? emailNotFound,
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_WithMessage value)? withMessage,
    TResult Function(_RequiredFields value)? someFieldsAreRequired,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ContactUsFailureCopyWith<ContactUsFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactUsFailureCopyWith<$Res> {
  factory $ContactUsFailureCopyWith(
          ContactUsFailure value, $Res Function(ContactUsFailure) then) =
      _$ContactUsFailureCopyWithImpl<$Res, ContactUsFailure>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$ContactUsFailureCopyWithImpl<$Res, $Val extends ContactUsFailure>
    implements $ContactUsFailureCopyWith<$Res> {
  _$ContactUsFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InvalidEmailCopyWith<$Res>
    implements $ContactUsFailureCopyWith<$Res> {
  factory _$$InvalidEmailCopyWith(
          _$InvalidEmail value, $Res Function(_$InvalidEmail) then) =
      __$$InvalidEmailCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$InvalidEmailCopyWithImpl<$Res>
    extends _$ContactUsFailureCopyWithImpl<$Res, _$InvalidEmail>
    implements _$$InvalidEmailCopyWith<$Res> {
  __$$InvalidEmailCopyWithImpl(
      _$InvalidEmail _value, $Res Function(_$InvalidEmail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$InvalidEmail(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InvalidEmail implements InvalidEmail {
  const _$InvalidEmail(
      {this.message = 'Email is not valid or badly formatted.'});

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'ContactUsFailure.invalidEmail(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidEmail &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvalidEmailCopyWith<_$InvalidEmail> get copyWith =>
      __$$InvalidEmailCopyWithImpl<_$InvalidEmail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) invalidEmail,
    required TResult Function(String message) inValidMessage,
    required TResult Function(String message) operationNotAllowed,
    required TResult Function(String message) emailNotFound,
    required TResult Function(String message) unexpected,
    required TResult Function(String message) serverError,
    required TResult Function(String message) withMessage,
    required TResult Function(String message) someFieldsAreRequired,
  }) {
    return invalidEmail(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? invalidEmail,
    TResult? Function(String message)? inValidMessage,
    TResult? Function(String message)? operationNotAllowed,
    TResult? Function(String message)? emailNotFound,
    TResult? Function(String message)? unexpected,
    TResult? Function(String message)? serverError,
    TResult? Function(String message)? withMessage,
    TResult? Function(String message)? someFieldsAreRequired,
  }) {
    return invalidEmail?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? invalidEmail,
    TResult Function(String message)? inValidMessage,
    TResult Function(String message)? operationNotAllowed,
    TResult Function(String message)? emailNotFound,
    TResult Function(String message)? unexpected,
    TResult Function(String message)? serverError,
    TResult Function(String message)? withMessage,
    TResult Function(String message)? someFieldsAreRequired,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(InvalidMessage value) inValidMessage,
    required TResult Function(OperationNotAllowed value) operationNotAllowed,
    required TResult Function(EmailNotFound value) emailNotFound,
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_WithMessage value) withMessage,
    required TResult Function(_RequiredFields value) someFieldsAreRequired,
  }) {
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvalidEmail value)? invalidEmail,
    TResult? Function(InvalidMessage value)? inValidMessage,
    TResult? Function(OperationNotAllowed value)? operationNotAllowed,
    TResult? Function(EmailNotFound value)? emailNotFound,
    TResult? Function(_Unexpected value)? unexpected,
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_WithMessage value)? withMessage,
    TResult? Function(_RequiredFields value)? someFieldsAreRequired,
  }) {
    return invalidEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(InvalidMessage value)? inValidMessage,
    TResult Function(OperationNotAllowed value)? operationNotAllowed,
    TResult Function(EmailNotFound value)? emailNotFound,
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_WithMessage value)? withMessage,
    TResult Function(_RequiredFields value)? someFieldsAreRequired,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class InvalidEmail implements ContactUsFailure {
  const factory InvalidEmail({final String message}) = _$InvalidEmail;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$InvalidEmailCopyWith<_$InvalidEmail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvalidMessageCopyWith<$Res>
    implements $ContactUsFailureCopyWith<$Res> {
  factory _$$InvalidMessageCopyWith(
          _$InvalidMessage value, $Res Function(_$InvalidMessage) then) =
      __$$InvalidMessageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$InvalidMessageCopyWithImpl<$Res>
    extends _$ContactUsFailureCopyWithImpl<$Res, _$InvalidMessage>
    implements _$$InvalidMessageCopyWith<$Res> {
  __$$InvalidMessageCopyWithImpl(
      _$InvalidMessage _value, $Res Function(_$InvalidMessage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$InvalidMessage(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InvalidMessage implements InvalidMessage {
  const _$InvalidMessage(
      {this.message = 'Message is not valid or badly formatted.'});

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'ContactUsFailure.inValidMessage(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidMessage &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvalidMessageCopyWith<_$InvalidMessage> get copyWith =>
      __$$InvalidMessageCopyWithImpl<_$InvalidMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) invalidEmail,
    required TResult Function(String message) inValidMessage,
    required TResult Function(String message) operationNotAllowed,
    required TResult Function(String message) emailNotFound,
    required TResult Function(String message) unexpected,
    required TResult Function(String message) serverError,
    required TResult Function(String message) withMessage,
    required TResult Function(String message) someFieldsAreRequired,
  }) {
    return inValidMessage(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? invalidEmail,
    TResult? Function(String message)? inValidMessage,
    TResult? Function(String message)? operationNotAllowed,
    TResult? Function(String message)? emailNotFound,
    TResult? Function(String message)? unexpected,
    TResult? Function(String message)? serverError,
    TResult? Function(String message)? withMessage,
    TResult? Function(String message)? someFieldsAreRequired,
  }) {
    return inValidMessage?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? invalidEmail,
    TResult Function(String message)? inValidMessage,
    TResult Function(String message)? operationNotAllowed,
    TResult Function(String message)? emailNotFound,
    TResult Function(String message)? unexpected,
    TResult Function(String message)? serverError,
    TResult Function(String message)? withMessage,
    TResult Function(String message)? someFieldsAreRequired,
    required TResult orElse(),
  }) {
    if (inValidMessage != null) {
      return inValidMessage(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(InvalidMessage value) inValidMessage,
    required TResult Function(OperationNotAllowed value) operationNotAllowed,
    required TResult Function(EmailNotFound value) emailNotFound,
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_WithMessage value) withMessage,
    required TResult Function(_RequiredFields value) someFieldsAreRequired,
  }) {
    return inValidMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvalidEmail value)? invalidEmail,
    TResult? Function(InvalidMessage value)? inValidMessage,
    TResult? Function(OperationNotAllowed value)? operationNotAllowed,
    TResult? Function(EmailNotFound value)? emailNotFound,
    TResult? Function(_Unexpected value)? unexpected,
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_WithMessage value)? withMessage,
    TResult? Function(_RequiredFields value)? someFieldsAreRequired,
  }) {
    return inValidMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(InvalidMessage value)? inValidMessage,
    TResult Function(OperationNotAllowed value)? operationNotAllowed,
    TResult Function(EmailNotFound value)? emailNotFound,
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_WithMessage value)? withMessage,
    TResult Function(_RequiredFields value)? someFieldsAreRequired,
    required TResult orElse(),
  }) {
    if (inValidMessage != null) {
      return inValidMessage(this);
    }
    return orElse();
  }
}

abstract class InvalidMessage implements ContactUsFailure {
  const factory InvalidMessage({final String message}) = _$InvalidMessage;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$InvalidMessageCopyWith<_$InvalidMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OperationNotAllowedCopyWith<$Res>
    implements $ContactUsFailureCopyWith<$Res> {
  factory _$$OperationNotAllowedCopyWith(_$OperationNotAllowed value,
          $Res Function(_$OperationNotAllowed) then) =
      __$$OperationNotAllowedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$OperationNotAllowedCopyWithImpl<$Res>
    extends _$ContactUsFailureCopyWithImpl<$Res, _$OperationNotAllowed>
    implements _$$OperationNotAllowedCopyWith<$Res> {
  __$$OperationNotAllowedCopyWithImpl(
      _$OperationNotAllowed _value, $Res Function(_$OperationNotAllowed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$OperationNotAllowed(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OperationNotAllowed implements OperationNotAllowed {
  const _$OperationNotAllowed(
      {this.message = 'Operation is not allowed.  Please contact support.'});

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'ContactUsFailure.operationNotAllowed(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OperationNotAllowed &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OperationNotAllowedCopyWith<_$OperationNotAllowed> get copyWith =>
      __$$OperationNotAllowedCopyWithImpl<_$OperationNotAllowed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) invalidEmail,
    required TResult Function(String message) inValidMessage,
    required TResult Function(String message) operationNotAllowed,
    required TResult Function(String message) emailNotFound,
    required TResult Function(String message) unexpected,
    required TResult Function(String message) serverError,
    required TResult Function(String message) withMessage,
    required TResult Function(String message) someFieldsAreRequired,
  }) {
    return operationNotAllowed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? invalidEmail,
    TResult? Function(String message)? inValidMessage,
    TResult? Function(String message)? operationNotAllowed,
    TResult? Function(String message)? emailNotFound,
    TResult? Function(String message)? unexpected,
    TResult? Function(String message)? serverError,
    TResult? Function(String message)? withMessage,
    TResult? Function(String message)? someFieldsAreRequired,
  }) {
    return operationNotAllowed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? invalidEmail,
    TResult Function(String message)? inValidMessage,
    TResult Function(String message)? operationNotAllowed,
    TResult Function(String message)? emailNotFound,
    TResult Function(String message)? unexpected,
    TResult Function(String message)? serverError,
    TResult Function(String message)? withMessage,
    TResult Function(String message)? someFieldsAreRequired,
    required TResult orElse(),
  }) {
    if (operationNotAllowed != null) {
      return operationNotAllowed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(InvalidMessage value) inValidMessage,
    required TResult Function(OperationNotAllowed value) operationNotAllowed,
    required TResult Function(EmailNotFound value) emailNotFound,
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_WithMessage value) withMessage,
    required TResult Function(_RequiredFields value) someFieldsAreRequired,
  }) {
    return operationNotAllowed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvalidEmail value)? invalidEmail,
    TResult? Function(InvalidMessage value)? inValidMessage,
    TResult? Function(OperationNotAllowed value)? operationNotAllowed,
    TResult? Function(EmailNotFound value)? emailNotFound,
    TResult? Function(_Unexpected value)? unexpected,
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_WithMessage value)? withMessage,
    TResult? Function(_RequiredFields value)? someFieldsAreRequired,
  }) {
    return operationNotAllowed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(InvalidMessage value)? inValidMessage,
    TResult Function(OperationNotAllowed value)? operationNotAllowed,
    TResult Function(EmailNotFound value)? emailNotFound,
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_WithMessage value)? withMessage,
    TResult Function(_RequiredFields value)? someFieldsAreRequired,
    required TResult orElse(),
  }) {
    if (operationNotAllowed != null) {
      return operationNotAllowed(this);
    }
    return orElse();
  }
}

abstract class OperationNotAllowed implements ContactUsFailure {
  const factory OperationNotAllowed({final String message}) =
      _$OperationNotAllowed;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$OperationNotAllowedCopyWith<_$OperationNotAllowed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmailNotFoundCopyWith<$Res>
    implements $ContactUsFailureCopyWith<$Res> {
  factory _$$EmailNotFoundCopyWith(
          _$EmailNotFound value, $Res Function(_$EmailNotFound) then) =
      __$$EmailNotFoundCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$EmailNotFoundCopyWithImpl<$Res>
    extends _$ContactUsFailureCopyWithImpl<$Res, _$EmailNotFound>
    implements _$$EmailNotFoundCopyWith<$Res> {
  __$$EmailNotFoundCopyWithImpl(
      _$EmailNotFound _value, $Res Function(_$EmailNotFound) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$EmailNotFound(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmailNotFound implements EmailNotFound {
  const _$EmailNotFound(
      {this.message = 'Email is not found, please enter a correct email.'});

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'ContactUsFailure.emailNotFound(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailNotFound &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailNotFoundCopyWith<_$EmailNotFound> get copyWith =>
      __$$EmailNotFoundCopyWithImpl<_$EmailNotFound>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) invalidEmail,
    required TResult Function(String message) inValidMessage,
    required TResult Function(String message) operationNotAllowed,
    required TResult Function(String message) emailNotFound,
    required TResult Function(String message) unexpected,
    required TResult Function(String message) serverError,
    required TResult Function(String message) withMessage,
    required TResult Function(String message) someFieldsAreRequired,
  }) {
    return emailNotFound(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? invalidEmail,
    TResult? Function(String message)? inValidMessage,
    TResult? Function(String message)? operationNotAllowed,
    TResult? Function(String message)? emailNotFound,
    TResult? Function(String message)? unexpected,
    TResult? Function(String message)? serverError,
    TResult? Function(String message)? withMessage,
    TResult? Function(String message)? someFieldsAreRequired,
  }) {
    return emailNotFound?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? invalidEmail,
    TResult Function(String message)? inValidMessage,
    TResult Function(String message)? operationNotAllowed,
    TResult Function(String message)? emailNotFound,
    TResult Function(String message)? unexpected,
    TResult Function(String message)? serverError,
    TResult Function(String message)? withMessage,
    TResult Function(String message)? someFieldsAreRequired,
    required TResult orElse(),
  }) {
    if (emailNotFound != null) {
      return emailNotFound(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(InvalidMessage value) inValidMessage,
    required TResult Function(OperationNotAllowed value) operationNotAllowed,
    required TResult Function(EmailNotFound value) emailNotFound,
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_WithMessage value) withMessage,
    required TResult Function(_RequiredFields value) someFieldsAreRequired,
  }) {
    return emailNotFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvalidEmail value)? invalidEmail,
    TResult? Function(InvalidMessage value)? inValidMessage,
    TResult? Function(OperationNotAllowed value)? operationNotAllowed,
    TResult? Function(EmailNotFound value)? emailNotFound,
    TResult? Function(_Unexpected value)? unexpected,
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_WithMessage value)? withMessage,
    TResult? Function(_RequiredFields value)? someFieldsAreRequired,
  }) {
    return emailNotFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(InvalidMessage value)? inValidMessage,
    TResult Function(OperationNotAllowed value)? operationNotAllowed,
    TResult Function(EmailNotFound value)? emailNotFound,
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_WithMessage value)? withMessage,
    TResult Function(_RequiredFields value)? someFieldsAreRequired,
    required TResult orElse(),
  }) {
    if (emailNotFound != null) {
      return emailNotFound(this);
    }
    return orElse();
  }
}

abstract class EmailNotFound implements ContactUsFailure {
  const factory EmailNotFound({final String message}) = _$EmailNotFound;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$EmailNotFoundCopyWith<_$EmailNotFound> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UnexpectedCopyWith<$Res>
    implements $ContactUsFailureCopyWith<$Res> {
  factory _$$_UnexpectedCopyWith(
          _$_Unexpected value, $Res Function(_$_Unexpected) then) =
      __$$_UnexpectedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_UnexpectedCopyWithImpl<$Res>
    extends _$ContactUsFailureCopyWithImpl<$Res, _$_Unexpected>
    implements _$$_UnexpectedCopyWith<$Res> {
  __$$_UnexpectedCopyWithImpl(
      _$_Unexpected _value, $Res Function(_$_Unexpected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_Unexpected(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Unexpected implements _Unexpected {
  const _$_Unexpected(
      {this.message = 'Something went wrong, please try again.'});

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'ContactUsFailure.unexpected(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Unexpected &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UnexpectedCopyWith<_$_Unexpected> get copyWith =>
      __$$_UnexpectedCopyWithImpl<_$_Unexpected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) invalidEmail,
    required TResult Function(String message) inValidMessage,
    required TResult Function(String message) operationNotAllowed,
    required TResult Function(String message) emailNotFound,
    required TResult Function(String message) unexpected,
    required TResult Function(String message) serverError,
    required TResult Function(String message) withMessage,
    required TResult Function(String message) someFieldsAreRequired,
  }) {
    return unexpected(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? invalidEmail,
    TResult? Function(String message)? inValidMessage,
    TResult? Function(String message)? operationNotAllowed,
    TResult? Function(String message)? emailNotFound,
    TResult? Function(String message)? unexpected,
    TResult? Function(String message)? serverError,
    TResult? Function(String message)? withMessage,
    TResult? Function(String message)? someFieldsAreRequired,
  }) {
    return unexpected?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? invalidEmail,
    TResult Function(String message)? inValidMessage,
    TResult Function(String message)? operationNotAllowed,
    TResult Function(String message)? emailNotFound,
    TResult Function(String message)? unexpected,
    TResult Function(String message)? serverError,
    TResult Function(String message)? withMessage,
    TResult Function(String message)? someFieldsAreRequired,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(InvalidMessage value) inValidMessage,
    required TResult Function(OperationNotAllowed value) operationNotAllowed,
    required TResult Function(EmailNotFound value) emailNotFound,
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_WithMessage value) withMessage,
    required TResult Function(_RequiredFields value) someFieldsAreRequired,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvalidEmail value)? invalidEmail,
    TResult? Function(InvalidMessage value)? inValidMessage,
    TResult? Function(OperationNotAllowed value)? operationNotAllowed,
    TResult? Function(EmailNotFound value)? emailNotFound,
    TResult? Function(_Unexpected value)? unexpected,
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_WithMessage value)? withMessage,
    TResult? Function(_RequiredFields value)? someFieldsAreRequired,
  }) {
    return unexpected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(InvalidMessage value)? inValidMessage,
    TResult Function(OperationNotAllowed value)? operationNotAllowed,
    TResult Function(EmailNotFound value)? emailNotFound,
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_WithMessage value)? withMessage,
    TResult Function(_RequiredFields value)? someFieldsAreRequired,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class _Unexpected implements ContactUsFailure {
  const factory _Unexpected({final String message}) = _$_Unexpected;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_UnexpectedCopyWith<_$_Unexpected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ServerErrorCopyWith<$Res>
    implements $ContactUsFailureCopyWith<$Res> {
  factory _$$_ServerErrorCopyWith(
          _$_ServerError value, $Res Function(_$_ServerError) then) =
      __$$_ServerErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_ServerErrorCopyWithImpl<$Res>
    extends _$ContactUsFailureCopyWithImpl<$Res, _$_ServerError>
    implements _$$_ServerErrorCopyWith<$Res> {
  __$$_ServerErrorCopyWithImpl(
      _$_ServerError _value, $Res Function(_$_ServerError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_ServerError(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ServerError implements _ServerError {
  const _$_ServerError({this.message = 'An unknown exception occurred.'});

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'ContactUsFailure.serverError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServerError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ServerErrorCopyWith<_$_ServerError> get copyWith =>
      __$$_ServerErrorCopyWithImpl<_$_ServerError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) invalidEmail,
    required TResult Function(String message) inValidMessage,
    required TResult Function(String message) operationNotAllowed,
    required TResult Function(String message) emailNotFound,
    required TResult Function(String message) unexpected,
    required TResult Function(String message) serverError,
    required TResult Function(String message) withMessage,
    required TResult Function(String message) someFieldsAreRequired,
  }) {
    return serverError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? invalidEmail,
    TResult? Function(String message)? inValidMessage,
    TResult? Function(String message)? operationNotAllowed,
    TResult? Function(String message)? emailNotFound,
    TResult? Function(String message)? unexpected,
    TResult? Function(String message)? serverError,
    TResult? Function(String message)? withMessage,
    TResult? Function(String message)? someFieldsAreRequired,
  }) {
    return serverError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? invalidEmail,
    TResult Function(String message)? inValidMessage,
    TResult Function(String message)? operationNotAllowed,
    TResult Function(String message)? emailNotFound,
    TResult Function(String message)? unexpected,
    TResult Function(String message)? serverError,
    TResult Function(String message)? withMessage,
    TResult Function(String message)? someFieldsAreRequired,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(InvalidMessage value) inValidMessage,
    required TResult Function(OperationNotAllowed value) operationNotAllowed,
    required TResult Function(EmailNotFound value) emailNotFound,
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_WithMessage value) withMessage,
    required TResult Function(_RequiredFields value) someFieldsAreRequired,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvalidEmail value)? invalidEmail,
    TResult? Function(InvalidMessage value)? inValidMessage,
    TResult? Function(OperationNotAllowed value)? operationNotAllowed,
    TResult? Function(EmailNotFound value)? emailNotFound,
    TResult? Function(_Unexpected value)? unexpected,
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_WithMessage value)? withMessage,
    TResult? Function(_RequiredFields value)? someFieldsAreRequired,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(InvalidMessage value)? inValidMessage,
    TResult Function(OperationNotAllowed value)? operationNotAllowed,
    TResult Function(EmailNotFound value)? emailNotFound,
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_WithMessage value)? withMessage,
    TResult Function(_RequiredFields value)? someFieldsAreRequired,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class _ServerError implements ContactUsFailure {
  const factory _ServerError({final String message}) = _$_ServerError;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_ServerErrorCopyWith<_$_ServerError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_WithMessageCopyWith<$Res>
    implements $ContactUsFailureCopyWith<$Res> {
  factory _$$_WithMessageCopyWith(
          _$_WithMessage value, $Res Function(_$_WithMessage) then) =
      __$$_WithMessageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_WithMessageCopyWithImpl<$Res>
    extends _$ContactUsFailureCopyWithImpl<$Res, _$_WithMessage>
    implements _$$_WithMessageCopyWith<$Res> {
  __$$_WithMessageCopyWithImpl(
      _$_WithMessage _value, $Res Function(_$_WithMessage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_WithMessage(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_WithMessage implements _WithMessage {
  const _$_WithMessage(
      {this.message = 'Something went wrong, please try again'});

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'ContactUsFailure.withMessage(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WithMessage &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WithMessageCopyWith<_$_WithMessage> get copyWith =>
      __$$_WithMessageCopyWithImpl<_$_WithMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) invalidEmail,
    required TResult Function(String message) inValidMessage,
    required TResult Function(String message) operationNotAllowed,
    required TResult Function(String message) emailNotFound,
    required TResult Function(String message) unexpected,
    required TResult Function(String message) serverError,
    required TResult Function(String message) withMessage,
    required TResult Function(String message) someFieldsAreRequired,
  }) {
    return withMessage(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? invalidEmail,
    TResult? Function(String message)? inValidMessage,
    TResult? Function(String message)? operationNotAllowed,
    TResult? Function(String message)? emailNotFound,
    TResult? Function(String message)? unexpected,
    TResult? Function(String message)? serverError,
    TResult? Function(String message)? withMessage,
    TResult? Function(String message)? someFieldsAreRequired,
  }) {
    return withMessage?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? invalidEmail,
    TResult Function(String message)? inValidMessage,
    TResult Function(String message)? operationNotAllowed,
    TResult Function(String message)? emailNotFound,
    TResult Function(String message)? unexpected,
    TResult Function(String message)? serverError,
    TResult Function(String message)? withMessage,
    TResult Function(String message)? someFieldsAreRequired,
    required TResult orElse(),
  }) {
    if (withMessage != null) {
      return withMessage(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(InvalidMessage value) inValidMessage,
    required TResult Function(OperationNotAllowed value) operationNotAllowed,
    required TResult Function(EmailNotFound value) emailNotFound,
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_WithMessage value) withMessage,
    required TResult Function(_RequiredFields value) someFieldsAreRequired,
  }) {
    return withMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvalidEmail value)? invalidEmail,
    TResult? Function(InvalidMessage value)? inValidMessage,
    TResult? Function(OperationNotAllowed value)? operationNotAllowed,
    TResult? Function(EmailNotFound value)? emailNotFound,
    TResult? Function(_Unexpected value)? unexpected,
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_WithMessage value)? withMessage,
    TResult? Function(_RequiredFields value)? someFieldsAreRequired,
  }) {
    return withMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(InvalidMessage value)? inValidMessage,
    TResult Function(OperationNotAllowed value)? operationNotAllowed,
    TResult Function(EmailNotFound value)? emailNotFound,
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_WithMessage value)? withMessage,
    TResult Function(_RequiredFields value)? someFieldsAreRequired,
    required TResult orElse(),
  }) {
    if (withMessage != null) {
      return withMessage(this);
    }
    return orElse();
  }
}

abstract class _WithMessage implements ContactUsFailure {
  const factory _WithMessage({final String message}) = _$_WithMessage;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_WithMessageCopyWith<_$_WithMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RequiredFieldsCopyWith<$Res>
    implements $ContactUsFailureCopyWith<$Res> {
  factory _$$_RequiredFieldsCopyWith(
          _$_RequiredFields value, $Res Function(_$_RequiredFields) then) =
      __$$_RequiredFieldsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_RequiredFieldsCopyWithImpl<$Res>
    extends _$ContactUsFailureCopyWithImpl<$Res, _$_RequiredFields>
    implements _$$_RequiredFieldsCopyWith<$Res> {
  __$$_RequiredFieldsCopyWithImpl(
      _$_RequiredFields _value, $Res Function(_$_RequiredFields) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_RequiredFields(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RequiredFields implements _RequiredFields {
  const _$_RequiredFields({this.message = 'Please fill the required fields'});

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'ContactUsFailure.someFieldsAreRequired(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RequiredFields &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RequiredFieldsCopyWith<_$_RequiredFields> get copyWith =>
      __$$_RequiredFieldsCopyWithImpl<_$_RequiredFields>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) invalidEmail,
    required TResult Function(String message) inValidMessage,
    required TResult Function(String message) operationNotAllowed,
    required TResult Function(String message) emailNotFound,
    required TResult Function(String message) unexpected,
    required TResult Function(String message) serverError,
    required TResult Function(String message) withMessage,
    required TResult Function(String message) someFieldsAreRequired,
  }) {
    return someFieldsAreRequired(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? invalidEmail,
    TResult? Function(String message)? inValidMessage,
    TResult? Function(String message)? operationNotAllowed,
    TResult? Function(String message)? emailNotFound,
    TResult? Function(String message)? unexpected,
    TResult? Function(String message)? serverError,
    TResult? Function(String message)? withMessage,
    TResult? Function(String message)? someFieldsAreRequired,
  }) {
    return someFieldsAreRequired?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? invalidEmail,
    TResult Function(String message)? inValidMessage,
    TResult Function(String message)? operationNotAllowed,
    TResult Function(String message)? emailNotFound,
    TResult Function(String message)? unexpected,
    TResult Function(String message)? serverError,
    TResult Function(String message)? withMessage,
    TResult Function(String message)? someFieldsAreRequired,
    required TResult orElse(),
  }) {
    if (someFieldsAreRequired != null) {
      return someFieldsAreRequired(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail value) invalidEmail,
    required TResult Function(InvalidMessage value) inValidMessage,
    required TResult Function(OperationNotAllowed value) operationNotAllowed,
    required TResult Function(EmailNotFound value) emailNotFound,
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_WithMessage value) withMessage,
    required TResult Function(_RequiredFields value) someFieldsAreRequired,
  }) {
    return someFieldsAreRequired(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvalidEmail value)? invalidEmail,
    TResult? Function(InvalidMessage value)? inValidMessage,
    TResult? Function(OperationNotAllowed value)? operationNotAllowed,
    TResult? Function(EmailNotFound value)? emailNotFound,
    TResult? Function(_Unexpected value)? unexpected,
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_WithMessage value)? withMessage,
    TResult? Function(_RequiredFields value)? someFieldsAreRequired,
  }) {
    return someFieldsAreRequired?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail value)? invalidEmail,
    TResult Function(InvalidMessage value)? inValidMessage,
    TResult Function(OperationNotAllowed value)? operationNotAllowed,
    TResult Function(EmailNotFound value)? emailNotFound,
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_WithMessage value)? withMessage,
    TResult Function(_RequiredFields value)? someFieldsAreRequired,
    required TResult orElse(),
  }) {
    if (someFieldsAreRequired != null) {
      return someFieldsAreRequired(this);
    }
    return orElse();
  }
}

abstract class _RequiredFields implements ContactUsFailure {
  const factory _RequiredFields({final String message}) = _$_RequiredFields;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_RequiredFieldsCopyWith<_$_RequiredFields> get copyWith =>
      throw _privateConstructorUsedError;
}
