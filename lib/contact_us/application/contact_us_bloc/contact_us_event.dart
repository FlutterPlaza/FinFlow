part of 'contact_us_bloc.dart';

@freezed
class ContactUsEvent with _$ContactUsEvent {
  const factory ContactUsEvent.nameChanged(String name) = _NameChanged;
  const factory ContactUsEvent.emailChanged(String email) = _EmailChange;
  const factory ContactUsEvent.messageChanged(String message) = _MessageChange;

  const factory ContactUsEvent.submitted() = _Submitted;
}
