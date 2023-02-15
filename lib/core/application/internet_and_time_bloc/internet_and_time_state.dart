part of 'internet_and_time_bloc.dart';

@freezed
class InternetAndTimeState with _$InternetAndTimeState {
  const factory InternetAndTimeState({
    @Default(true) bool isConnected,
    @Default(true) bool isTimeSynced,
  }) = _InternetAndTimeState;
  factory InternetAndTimeState.fresh() => InternetAndTimeState();
}
