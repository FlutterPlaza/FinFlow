import 'package:mocktail/mocktail.dart';

import 'mocks.dart';

void arrangeCachedReturnsLastView(MockCached cached, int intendedValue) {
  when(
    () => cached.getLastView,
  ).thenReturn(
    intendedValue,
  );
}
