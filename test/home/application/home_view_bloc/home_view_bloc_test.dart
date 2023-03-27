import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpb/home/application/home_view_bloc/home_view_bloc.dart';
import 'package:mocktail/mocktail.dart';

import '../../../helpers/helpers.dart';

void main() {
  late HomeViewBloc bloc;
  late MockCached cached;

  setUp(() {
    cached = MockCached();

    bloc = HomeViewBloc(cached);
  });

  test("Home View Bloc initial state should be _Home", () {
    //assert
    expect(bloc.state, equals(HomeViewState.home()));
  });

  blocTest<HomeViewBloc, HomeViewState>(
    "emits [_Home] when HomeViewEvent.home is added",
    build: () {
      when(
        () => cached.getLastView,
      ).thenReturn(
        0,
      );
      return bloc;
    },
    act: (_) {
      _.add(HomeViewEvent.home());
    },
    expect: () => contains(HomeViewState.home()),
    verify: (bloc) {
      verify(
        () => cached.setLastView = bloc.lastView ?? 0,
      ).called(1);
    },
  );

  blocTest<HomeViewBloc, HomeViewState>(
    "emits [_Home, _Budget] when HomeViewEvent.home is added, after HomeViewEvent.budget is added, then HomeViewEvent.lastState is added",
    build: () {
      arrangeCachedReturnsLastView(cached, 0);
      return bloc;
    },
    act: (_) {
      _.add(HomeViewEvent.home());
      _.add(HomeViewEvent.budget());
      _.add(HomeViewEvent.lastState());
    },
    expect: () => containsAllInOrder([
      HomeViewState.home(),
      HomeViewState.budget(),
    ]),
    verify: (bloc) {
      verify(
        () => cached.setLastView = bloc.lastView ?? 0,
      ).called(1);
    },
  );
}
