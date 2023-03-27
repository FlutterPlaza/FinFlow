// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'contact_us_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ContactUsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) nameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String message) messageChanged,
    required TResult Function() submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? nameChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String message)? messageChanged,
    TResult? Function()? submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String message)? messageChanged,
    TResult Function()? submitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_EmailChange value) emailChanged,
    required TResult Function(_MessageChange value) messageChanged,
    required TResult Function(_Submitted value) submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_EmailChange value)? emailChanged,
    TResult? Function(_MessageChange value)? messageChanged,
    TResult? Function(_Submitted value)? submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_EmailChange value)? emailChanged,
    TResult Function(_MessageChange value)? messageChanged,
    TResult Function(_Submitted value)? submitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactUsEventCopyWith<$Res> {
  factory $ContactUsEventCopyWith(
          ContactUsEvent value, $Res Function(ContactUsEvent) then) =
      _$ContactUsEventCopyWithImpl<$Res, ContactUsEvent>;
}

/// @nodoc
class _$ContactUsEventCopyWithImpl<$Res, $Val extends ContactUsEvent>
    implements $ContactUsEventCopyWith<$Res> {
  _$ContactUsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_NameChangedCopyWith<$Res> {
  factory _$$_NameChangedCopyWith(
          _$_NameChanged value, $Res Function(_$_NameChanged) then) =
      __$$_NameChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$_NameChangedCopyWithImpl<$Res>
    extends _$ContactUsEventCopyWithImpl<$Res, _$_NameChanged>
    implements _$$_NameChangedCopyWith<$Res> {
  __$$_NameChangedCopyWithImpl(
      _$_NameChanged _value, $Res Function(_$_NameChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$_NameChanged(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NameChanged implements _NameChanged {
  const _$_NameChanged(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'ContactUsEvent.nameChanged(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NameChanged &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NameChangedCopyWith<_$_NameChanged> get copyWith =>
      __$$_NameChangedCopyWithImpl<_$_NameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) nameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String message) messageChanged,
    required TResult Function() submitted,
  }) {
    return nameChanged(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? nameChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String message)? messageChanged,
    TResult? Function()? submitted,
  }) {
    return nameChanged?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String message)? messageChanged,
    TResult Function()? submitted,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_EmailChange value) emailChanged,
    required TResult Function(_MessageChange value) messageChanged,
    required TResult Function(_Submitted value) submitted,
  }) {
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_EmailChange value)? emailChanged,
    TResult? Function(_MessageChange value)? messageChanged,
    TResult? Function(_Submitted value)? submitted,
  }) {
    return nameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_EmailChange value)? emailChanged,
    TResult Function(_MessageChange value)? messageChanged,
    TResult Function(_Submitted value)? submitted,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class _NameChanged implements ContactUsEvent {
  const factory _NameChanged(final String name) = _$_NameChanged;

  String get name;
  @JsonKey(ignore: true)
  _$$_NameChangedCopyWith<_$_NameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EmailChangeCopyWith<$Res> {
  factory _$$_EmailChangeCopyWith(
          _$_EmailChange value, $Res Function(_$_EmailChange) then) =
      __$$_EmailChangeCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$_EmailChangeCopyWithImpl<$Res>
    extends _$ContactUsEventCopyWithImpl<$Res, _$_EmailChange>
    implements _$$_EmailChangeCopyWith<$Res> {
  __$$_EmailChangeCopyWithImpl(
      _$_EmailChange _value, $Res Function(_$_EmailChange) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$_EmailChange(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EmailChange implements _EmailChange {
  const _$_EmailChange(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'ContactUsEvent.emailChanged(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmailChange &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EmailChangeCopyWith<_$_EmailChange> get copyWith =>
      __$$_EmailChangeCopyWithImpl<_$_EmailChange>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) nameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String message) messageChanged,
    required TResult Function() submitted,
  }) {
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? nameChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String message)? messageChanged,
    TResult? Function()? submitted,
  }) {
    return emailChanged?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String message)? messageChanged,
    TResult Function()? submitted,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_EmailChange value) emailChanged,
    required TResult Function(_MessageChange value) messageChanged,
    required TResult Function(_Submitted value) submitted,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_EmailChange value)? emailChanged,
    TResult? Function(_MessageChange value)? messageChanged,
    TResult? Function(_Submitted value)? submitted,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_EmailChange value)? emailChanged,
    TResult Function(_MessageChange value)? messageChanged,
    TResult Function(_Submitted value)? submitted,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class _EmailChange implements ContactUsEvent {
  const factory _EmailChange(final String email) = _$_EmailChange;

  String get email;
  @JsonKey(ignore: true)
  _$$_EmailChangeCopyWith<_$_EmailChange> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_MessageChangeCopyWith<$Res> {
  factory _$$_MessageChangeCopyWith(
          _$_MessageChange value, $Res Function(_$_MessageChange) then) =
      __$$_MessageChangeCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_MessageChangeCopyWithImpl<$Res>
    extends _$ContactUsEventCopyWithImpl<$Res, _$_MessageChange>
    implements _$$_MessageChangeCopyWith<$Res> {
  __$$_MessageChangeCopyWithImpl(
      _$_MessageChange _value, $Res Function(_$_MessageChange) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_MessageChange(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_MessageChange implements _MessageChange {
  const _$_MessageChange(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ContactUsEvent.messageChanged(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MessageChange &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MessageChangeCopyWith<_$_MessageChange> get copyWith =>
      __$$_MessageChangeCopyWithImpl<_$_MessageChange>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) nameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String message) messageChanged,
    required TResult Function() submitted,
  }) {
    return messageChanged(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? nameChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String message)? messageChanged,
    TResult? Function()? submitted,
  }) {
    return messageChanged?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String message)? messageChanged,
    TResult Function()? submitted,
    required TResult orElse(),
  }) {
    if (messageChanged != null) {
      return messageChanged(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_EmailChange value) emailChanged,
    required TResult Function(_MessageChange value) messageChanged,
    required TResult Function(_Submitted value) submitted,
  }) {
    return messageChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_EmailChange value)? emailChanged,
    TResult? Function(_MessageChange value)? messageChanged,
    TResult? Function(_Submitted value)? submitted,
  }) {
    return messageChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_EmailChange value)? emailChanged,
    TResult Function(_MessageChange value)? messageChanged,
    TResult Function(_Submitted value)? submitted,
    required TResult orElse(),
  }) {
    if (messageChanged != null) {
      return messageChanged(this);
    }
    return orElse();
  }
}

abstract class _MessageChange implements ContactUsEvent {
  const factory _MessageChange(final String message) = _$_MessageChange;

  String get message;
  @JsonKey(ignore: true)
  _$$_MessageChangeCopyWith<_$_MessageChange> get copyWith =>
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
    extends _$ContactUsEventCopyWithImpl<$Res, _$_Submitted>
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
    return 'ContactUsEvent.submitted()';
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
    required TResult Function(String name) nameChanged,
    required TResult Function(String email) emailChanged,
    required TResult Function(String message) messageChanged,
    required TResult Function() submitted,
  }) {
    return submitted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? nameChanged,
    TResult? Function(String email)? emailChanged,
    TResult? Function(String message)? messageChanged,
    TResult? Function()? submitted,
  }) {
    return submitted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function(String email)? emailChanged,
    TResult Function(String message)? messageChanged,
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
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_EmailChange value) emailChanged,
    required TResult Function(_MessageChange value) messageChanged,
    required TResult Function(_Submitted value) submitted,
  }) {
    return submitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_EmailChange value)? emailChanged,
    TResult? Function(_MessageChange value)? messageChanged,
    TResult? Function(_Submitted value)? submitted,
  }) {
    return submitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_EmailChange value)? emailChanged,
    TResult Function(_MessageChange value)? messageChanged,
    TResult Function(_Submitted value)? submitted,
    required TResult orElse(),
  }) {
    if (submitted != null) {
      return submitted(this);
    }
    return orElse();
  }
}

abstract class _Submitted implements ContactUsEvent {
  const factory _Submitted() = _$_Submitted;
}

/// @nodoc
mixin _$ContactUsState {
  Message get message => throw _privateConstructorUsedError;
  Email get email => throw _privateConstructorUsedError;
  Name get name => throw _privateConstructorUsedError;
  FormzStatus get status => throw _privateConstructorUsedError;
  ContactUsFailure get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ContactUsStateCopyWith<ContactUsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactUsStateCopyWith<$Res> {
  factory $ContactUsStateCopyWith(
          ContactUsState value, $Res Function(ContactUsState) then) =
      _$ContactUsStateCopyWithImpl<$Res, ContactUsState>;
  @useResult
  $Res call(
      {Message message,
      Email email,
      Name name,
      FormzStatus status,
      ContactUsFailure failure});

  $ContactUsFailureCopyWith<$Res> get failure;
}

/// @nodoc
class _$ContactUsStateCopyWithImpl<$Res, $Val extends ContactUsState>
    implements $ContactUsStateCopyWith<$Res> {
  _$ContactUsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? email = null,
    Object? name = null,
    Object? status = null,
    Object? failure = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as ContactUsFailure,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ContactUsFailureCopyWith<$Res> get failure {
    return $ContactUsFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ContactUsStateCopyWith<$Res>
    implements $ContactUsStateCopyWith<$Res> {
  factory _$$_ContactUsStateCopyWith(
          _$_ContactUsState value, $Res Function(_$_ContactUsState) then) =
      __$$_ContactUsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Message message,
      Email email,
      Name name,
      FormzStatus status,
      ContactUsFailure failure});

  @override
  $ContactUsFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$_ContactUsStateCopyWithImpl<$Res>
    extends _$ContactUsStateCopyWithImpl<$Res, _$_ContactUsState>
    implements _$$_ContactUsStateCopyWith<$Res> {
  __$$_ContactUsStateCopyWithImpl(
      _$_ContactUsState _value, $Res Function(_$_ContactUsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? email = null,
    Object? name = null,
    Object? status = null,
    Object? failure = null,
  }) {
    return _then(_$_ContactUsState(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as ContactUsFailure,
    ));
  }
}

/// @nodoc

class _$_ContactUsState implements _ContactUsState {
  const _$_ContactUsState(
      {this.message = const Message.pure(),
      this.email = const Email.pure(),
      this.name = const Name.pure(),
      this.status = FormzStatus.pure,
      this.failure = const ContactUsFailure.withMessage()});

  @override
  @JsonKey()
  final Message message;
  @override
  @JsonKey()
  final Email email;
  @override
  @JsonKey()
  final Name name;
  @override
  @JsonKey()
  final FormzStatus status;
  @override
  @JsonKey()
  final ContactUsFailure failure;

  @override
  String toString() {
    return 'ContactUsState(message: $message, email: $email, name: $name, status: $status, failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContactUsState &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, message, email, name, status, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ContactUsStateCopyWith<_$_ContactUsState> get copyWith =>
      __$$_ContactUsStateCopyWithImpl<_$_ContactUsState>(this, _$identity);
}

abstract class _ContactUsState implements ContactUsState {
  const factory _ContactUsState(
      {final Message message,
      final Email email,
      final Name name,
      final FormzStatus status,
      final ContactUsFailure failure}) = _$_ContactUsState;

  @override
  Message get message;
  @override
  Email get email;
  @override
  Name get name;
  @override
  FormzStatus get status;
  @override
  ContactUsFailure get failure;
  @override
  @JsonKey(ignore: true)
  _$$_ContactUsStateCopyWith<_$_ContactUsState> get copyWith =>
      throw _privateConstructorUsedError;
}
