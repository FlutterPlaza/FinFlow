import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpb/core/domain/user.dart';
import 'package:fpb/core/shared/helpers/value_injector.dart';
import 'package:fpb/home/home_screen.dart';
import 'package:fpb/home/view/budget_screen.dart';
import 'package:fpb/home/view/dashboard.dart';
import 'package:fpb/home/view/home_container.dart';
import 'package:fpb/home/view/widgets/bottom_nav_bar.dart';
import 'package:fpb/savings/view/savings_page.dart';

import '../test/helpers/helpers.dart';

void bottomNavBarTest() {
  late MockCached cached;
  late MockIFacebookRepositoryFacade mockIFacebookRepositoryFacade;
  late MockIGoogleRepositoryFacade mockIGoogleRepositoryFacade;
  late MockIAuthFacade mockIAuthFacade;

  setUp(() {
    cached = MockCached();
    mockIAuthFacade = MockIAuthFacade();
    mockIFacebookRepositoryFacade = MockIFacebookRepositoryFacade();
    mockIGoogleRepositoryFacade = MockIGoogleRepositoryFacade();
  });

  testWidgets('renders home bottom nav bar buttons', (tester) async {
    arrangeAuthRepositoryReturnsStreamWithUser(mockIAuthFacade);
    arrangeAuthRepositoryReturnsCurrentUser(mockIAuthFacade);
    arrangeCachedReturnsLastView(cached, 0);

    await tester.pumpApp(
      ValueInjector<User>(
        value: testUser,
        child: HomeBody(
          user: testUser,
        ),
      ),
      mockCachedForHomeBloc: cached,
      mockIAuthFacadeForAuthBloc: mockIAuthFacade,
    );

    await tester.pumpAndSettle();

    // await tester.pump();

    expect(find.byType(HomeContainer), findsOneWidget);
    expect(find.byType(BottomNavBar), findsOneWidget);
    expect(find.byType(DashBoard), findsOneWidget);

    await tester.tap(
      find.byKey(
        Key("BNB-savings-page-button"),
      ),
    );

    await tester.pumpAndSettle();

    expect(find.byType(SavingsPage), findsOneWidget);

    await tester.tap(
      find.byKey(
        Key("BNB-budget-page-button"),
      ),
    );

    await tester.pumpAndSettle();

    expect(find.byType(BudgetScreen), findsOneWidget);

    // await tester.tap(
    //   find.byKey(
    //     Key("BNB-userSearch-page-button"),
    //   ),
    // );

    // await tester.pumpAndSettle();

    // expect(find.byType(UserSearchScreen), findsOneWidget);

    await Future.delayed(
      const Duration(seconds: 3),
    );
  });
}
