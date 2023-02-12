part of 'home_view_bloc.dart';

@freezed
class HomeViewEvent with _$HomeViewEvent {
  const factory HomeViewEvent.home() = _HomeE;
  const factory HomeViewEvent.savings() = _SavingsE;
  const factory HomeViewEvent.quickCash() = _QuickCashE;
  const factory HomeViewEvent.budget() = _BudgetE;
  const factory HomeViewEvent.search() = _SearchE;
  const factory HomeViewEvent.lastState() = _LastStateE;
}