part of 'contact_us_bloc.dart';

@freezed
class ContactUsState with _$ContactUsState {
  const factory ContactUsState({
    @Default(Message.pure()) Message message,
    @Default(Email.pure()) Email email,
    @Default(Name.pure()) Name name,
    @Default(FormzStatus.pure) FormzStatus status,
    @Default(ContactUsFailure.withMessage()) ContactUsFailure failure,
  }) = _ContactUsState;
}
