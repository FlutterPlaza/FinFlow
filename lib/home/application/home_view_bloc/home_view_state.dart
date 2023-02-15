part of 'home_view_bloc.dart';

@freezed
class HomeViewState with _$HomeViewState {
  const factory HomeViewState.home() = _Home;
  const factory HomeViewState.savings() = _Savings;
  const factory HomeViewState.quickCash() = _QuickCash;
  const factory HomeViewState.budget() = _Budget;
  const factory HomeViewState.search() = _Search;
}
