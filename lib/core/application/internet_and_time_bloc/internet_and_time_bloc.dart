import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:fpb/core/settings/app_settings_helper.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:ntp/ntp.dart';

part 'internet_and_time_event.dart';
part 'internet_and_time_state.dart';
part 'internet_and_time_bloc.freezed.dart';

@injectable
class InternetAndTimeBloc
    extends Bloc<InternetAndTimeEvent, InternetAndTimeState> {
  final AppSettingsHelper appSettings;
  late StreamSubscription<ConnectivityResult> internetSubscription;
  int timeOffset = 0;
  static const maxTimeOffset = 5000;
  InternetAndTimeBloc(
    this.appSettings,
  ) : super(InternetAndTimeState.fresh()) {
    on<InternetAndTimeEvent>((event, emit) {
      event.map(
        checkInternet: (e) {
          internetSubscription = appSettings.connectivity.onConnectivityChanged
              .listen((event) async {
            switch (event) {
              case ConnectivityResult.mobile:
                add(InternetAndTimeEvent.internetUp());
                timeOffset = await NTP.getNtpOffset();
                break;
              case ConnectivityResult.wifi:
                add(InternetAndTimeEvent.internetUp());
                timeOffset = await NTP.getNtpOffset();
                break;
              default:
                add(InternetAndTimeEvent.internetDown());
            }
          });
        },
        checkSyncTime: (e) async {
          if (timeOffset.abs() > maxTimeOffset) {
            add(InternetAndTimeEvent.outOfSync());
          } else {
            add(InternetAndTimeEvent.inSync());
          }
        },
        internetUp: (e) {
          emit(state.copyWith(isConnected: true));
        },
        internetDown: (e) {
          emit(state.copyWith(isConnected: false));
        },
        inSync: (e) {
          emit(state.copyWith(isTimeSynced: true));
        },
        outOfSync: (e) {
          emit(state.copyWith(isTimeSynced: false));
        },
      );
    });
  }

  @override
  Future<void> close() {
    internetSubscription.cancel();
    return super.close();
  }
}
