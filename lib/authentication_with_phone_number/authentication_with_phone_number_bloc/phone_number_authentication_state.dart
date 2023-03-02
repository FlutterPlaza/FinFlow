part of 'phone_number_authentication_bloc.dart';

@freezed
class PhoneAuthState with _$PhoneAuthState {
  const factory PhoneAuthState({
    @Default(FormzStatus.pure) FormzStatus status,
    @Default(PhoneNumber.pure()) PhoneNumber phoneNumber,
    @Default(Password.pure()) Password password,
    @Default('') String verificationId,
  }) = _PhoneAuthState;
}

class PhoneAuthInitialState implements PhoneAuthState {
  @override
  // TODO: implement password
  Password get password => throw UnimplementedError();

  @override
  // TODO: implement phoneNumber
  PhoneNumber get phoneNumber => throw UnimplementedError();

  @override
  // TODO: implement status
  FormzStatus get status => throw UnimplementedError();

  @override
  // TODO: implement copyWith
  $PhoneAuthStateCopyWith<PhoneAuthState> get copyWith =>
      throw UnimplementedError();

  @override
  // TODO: implement verificationId
  String get verificationId => throw UnimplementedError();
}

// This state is used to show the loading indicator when the phone number is being sent to the server for verification and the user is being redirected to the verification page.
class PhoneAuthLoadingState implements PhoneAuthState {
  @override
  // TODO: implement password
  Password get password => throw UnimplementedError();

  @override
  // TODO: implement phoneNumber
  PhoneNumber get phoneNumber => throw UnimplementedError();

  @override
  // TODO: implement status
  FormzStatus get status => throw UnimplementedError();

  @override
  // TODO: implement copyWith
  $PhoneAuthStateCopyWith<PhoneAuthState> get copyWith =>
      throw UnimplementedError();

  @override
  // TODO: implement verificationId
  String get verificationId => throw UnimplementedError();
}

// This state is used to show the error message.
class PhoneAuthErrorState implements PhoneAuthState {
  final String error;

  const PhoneAuthErrorState({required this.error});

  @override
  // TODO: implement password
  Password get password => throw UnimplementedError();

  @override
  // TODO: implement phoneNumber
  PhoneNumber get phoneNumber => throw UnimplementedError();

  @override
  // TODO: implement status
  FormzStatus get status => throw UnimplementedError();

  @override
  // TODO: implement copyWith
  $PhoneAuthStateCopyWith<PhoneAuthState> get copyWith =>
      throw UnimplementedError();

  @override
  // TODO: implement verificationId
  String get verificationId => throw UnimplementedError();
}

// This state indicates that verification is completed and the user is being redirected to the home page.
class PhoneAuthVerifiedState implements PhoneAuthState {
  @override
  // TODO: implement password
  Password get password => throw UnimplementedError();

  @override
  // TODO: implement phoneNumber
  PhoneNumber get phoneNumber => throw UnimplementedError();

  @override
  // TODO: implement status
  FormzStatus get status => throw UnimplementedError();

  @override
  // TODO: implement copyWith
  $PhoneAuthStateCopyWith<PhoneAuthState> get copyWith =>
      throw UnimplementedError();

  @override
  // TODO: implement verificationId
  String get verificationId => throw UnimplementedError();
}

// This state is used to show the OTP widget in which the user enters the OTP sent to his/her phone number.
class PhoneAuthCodeSentSuccessState implements PhoneAuthState {
  final String verificationId;
  const PhoneAuthCodeSentSuccessState({
    required this.verificationId,
  });

  List<Object> get props => [verificationId];

  @override
  // TODO: implement password
  Password get password => throw UnimplementedError();

  @override
  // TODO: implement phoneNumber
  PhoneNumber get phoneNumber => throw UnimplementedError();

  @override
  // TODO: implement status
  FormzStatus get status => throw UnimplementedError();

  @override
  // TODO: implement copyWith
  $PhoneAuthStateCopyWith<PhoneAuthState> get copyWith =>
      throw UnimplementedError();
}
