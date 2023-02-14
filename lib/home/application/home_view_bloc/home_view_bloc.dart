// ignore_for_file: inference_failure_on_untyped_parameter

import 'package:bloc/bloc.dart';
import 'package:fpb/core/settings/app_settings_helper.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'home_view_event.dart';
part 'home_view_state.dart';
part 'home_view_bloc.freezed.dart';

@injectable
class HomeViewBloc extends Bloc<HomeViewEvent, HomeViewState> {
  final AppSettingsHelper _appSettingsHelper;
  HomeViewBloc(this._appSettingsHelper) : super(HomeViewState.home()) {
    on<_HomeE>(_home);
    on<_SavingsE>(_savings);
    on<_QuickCashE>(_quickCash);
    on<_LastStateE>(_lastState);
    on<_BudgetE>(_budget);
    on<_SearchE>(_search);
  }

  void _search(event, Emitter<HomeViewState> emit) {
    emit(HomeViewState.search());
    _appSettingsHelper.appCache.setLastView = 4;
  }

  void _home(event, Emitter<HomeViewState> emit) {
    emit(HomeViewState.home());
    _appSettingsHelper.appCache.setLastView = 0;
  }

  void _savings(event, Emitter<HomeViewState> emit) {
    emit(HomeViewState.savings());
    _appSettingsHelper.appCache.setLastView = 1;
  }

  void _quickCash(event, Emitter<HomeViewState> emit) {
    emit(HomeViewState.quickCash());
    _appSettingsHelper.appCache.setLastView = 2;
  }

  void _budget(event, Emitter<HomeViewState> emit) {
    emit(HomeViewState.budget());
    _appSettingsHelper.appCache.setLastView = 3;
  }

  void _lastState(event, Emitter<HomeViewState> emit) {
    final lastState = _appSettingsHelper.appCache.getLastView;
    switch (lastState) {
      case 0:
        _home(event, emit);
        break;
      case 1:
        _savings(event, emit);
        break;
      case 2:
        _quickCash(event, emit);
        break;
      case 3:
        _budget(event, emit);
        break;
      case 4:
        _search(event, emit);
        break;
      default:
        _home(event, emit);
        break;
    }
  }
}
