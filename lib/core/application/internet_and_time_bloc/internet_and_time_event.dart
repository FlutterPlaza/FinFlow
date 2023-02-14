part of 'internet_and_time_bloc.dart';

@freezed
class InternetAndTimeEvent with _$InternetAndTimeEvent {
  const factory InternetAndTimeEvent.checkInternet() = _CheckInternet;
  const factory InternetAndTimeEvent.internetUp() = _InternetUp;
  const factory InternetAndTimeEvent.internetDown() = _InternetDown;
  const factory InternetAndTimeEvent.inSync() = _InSync;
  const factory InternetAndTimeEvent.outOfSync() = _OutOfSync;
  const factory InternetAndTimeEvent.checkSyncTime() = _CheckSyncTime;
}
