import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpb/assets/fpb_icons/fpb_icons_icons.dart';
import 'package:fpb/home/view/widgets/card_stack_widget.dart';
import 'package:fpb/home/view/widgets/virtual_card_widget.dart';
import 'package:fpb/l10n/l10n.dart';

import '../../../../test/helpers/helpers.dart';

void virtualCardsStackTest() {
  group("Renders virtual cards and swipe upward, downward, left and right", () {
    testWidgets(
      """
\nShow card with balance in the following order [200, 1000, 200].
When
1. Card is visble initially,
2. swipped downward,
3. and then swipped back upward.
      """,
      (tester) async {
        await tester.pumpWidget(
          getVirtualCardsContainer(),
        );

        await tester.pumpAndSettle();
        await wait();

        expect(
          find.textContaining(listOfVirtualCards[0].balance),
          findsOneWidget,
        );

        // Swipe the card downward.
        await tester.drag(
          find.byType(
            CardStackWidget,
          ),
          Offset(0, 500),
        );

        // Build the widget until the dismiss animation ends.
        await tester.pumpAndSettle();
        await wait();

        expect(
          find.textContaining(listOfVirtualCards[1].balance),
          findsOneWidget,
        );

        // Swipe the card upward.
        await tester.drag(
          find.byType(
            CardStackWidget,
          ),
          Offset(0, -500),
        );

        // Build the widget until the dismiss animation ends.
        await tester.pumpAndSettle();
        await wait();

        expect(
          find.textContaining(listOfVirtualCards[0].balance),
          findsOneWidget,
        );

        await wait();
      },
    );

    testWidgets(
      """
\nShow card with balance in the following order [200, 1000, 200].
When
1. Card is visble initially,
2. swipped left,
3. and then swipped back right.
      """,
      (tester) async {
        await tester.pumpWidget(
          getVirtualCardsContainer(),
        );

        await tester.pumpAndSettle();
        await wait();

        expect(
          find.textContaining(listOfVirtualCards[0].balance),
          findsOneWidget,
        );

        // Swipe the card left.
        await tester.drag(
          find.byType(
            CardStackWidget,
          ),
          Offset(-500, 0),
        );

        // Build the widget until the dismiss animation ends.
        await tester.pumpAndSettle();
        await wait();

        expect(
          find.textContaining(listOfVirtualCards[1].balance),
          findsOneWidget,
        );

        // Swipe the card right.
        await tester.drag(
          find.byType(
            CardStackWidget,
          ),
          Offset(500, 0),
        );

        // Build the widget until the dismiss animation ends.
        await tester.pumpAndSettle();
        await wait();

        expect(
          find.textContaining(listOfVirtualCards[0].balance),
          findsOneWidget,
        );

        await wait();
      },
    );

    testWidgets(
      """
\nToggle between showing the card's complete details and the card's incomplete details.
When button with eye icon is
1. not Tapped initailly less details are shown and Icon(eye_open) visible,
2. Tapped complete details are shown and Icon(eye_closed) visible instead,
    """,
      (tester) async {
        await tester.pumpWidget(
          getVirtualCardsContainer(),
        );

        await tester.pumpAndSettle();
        await wait();

        expect(
          find.textContaining(listOfVirtualCards[0].balance),
          findsOneWidget,
        );

        expect(
          find.descendant(
            of: find.widgetWithText(
              VirtualCardsWidget,
              "\$ " + listOfVirtualCards[0].balance,
            ),
            matching: find.byIcon(
              FpbIcons.eye_open,
            ),
          ),
          findsOneWidget,
        );

        for (var cardNumberPart
            in listOfVirtualCards[0].cardNumber.split(" ")) {
          expect(find.textContaining(cardNumberPart), findsNothing);
        }

        /*
          So here I try to locate the Icon with FpbIcons.eye_open,
          To tap on it. This widget should be found in the Stack first
          VirtualCardsWidget(with text "\$ " + listOfVirtualCards[0].balance)
        */
        await tester.tap(
          find.descendant(
            of: find.widgetWithText(
              VirtualCardsWidget,
              "\$ " + listOfVirtualCards[0].balance,
            ),
            matching: find.byIcon(
              FpbIcons.eye_open,
            ),
          ),
        );

        // Build the widget until the dismiss animation ends.
        await tester.pumpAndSettle();
        await wait();

        expect(
          find.descendant(
            of: find.widgetWithText(
              VirtualCardsWidget,
              "\$ " + listOfVirtualCards[0].balance,
            ),
            matching: find.byIcon(
              FpbIcons.eye_closed,
            ),
          ),
          findsOneWidget,
        );

        for (var cardNumberPart
            in listOfVirtualCards[0].cardNumber.split(" ")) {
          expect(find.textContaining(cardNumberPart), findsOneWidget);
        }

        await wait();
      },
    );
  });
}

MaterialApp getVirtualCardsContainer() {
  return MaterialApp(
    localizationsDelegates: AppLocalizations.localizationsDelegates,
    supportedLocales: AppLocalizations.supportedLocales,
    home: SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              // virtual card display
              CardStackWidget(
                cards: listOfVirtualCards,
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

Future<void> wait() async {
  await Future.delayed(
    const Duration(seconds: 3),
  );
}
