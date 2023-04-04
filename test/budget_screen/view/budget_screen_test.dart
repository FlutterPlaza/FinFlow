import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpb/core/presentation/widget/fpb_button.dart';
import 'package:fpb/home/view/budget_screen.dart';

import '../../helpers/helpers.dart';

void main() {
  // check for Budget Text
  testWidgets('check for text Budget and color', (widgetTester) async {
    // create and build budget screen into this test
    await widgetTester.pumpAppWithoutDependencies(
      BudgetScreen(),
    );
    await widgetTester.pump(); // rebuild widget

    final textColorFinder = widgetTester.widget<Text>(find.text('Budget'));
    // Capture a BuildContext object
    final BuildContext context = widgetTester.element(find.byType(MaterialApp));

    // check output
    expect(
      textColorFinder.style?.color,
      Theme.of(context).colorScheme.secondary,
    );
  });

  testWidgets('FbButoon has proper title', (widgetTester) async {
    //  given
    await widgetTester.pumpAppWithoutDependencies(BudgetScreen());

    //  when
    final button = widgetTester.widget<FpbButton>(find.byType(FpbButton));

    //  then
    expect(button.label, 'New Category');
  });

  testWidgets("FpbButton bgColor should be black", (widgetTester) async {
    // Capture a BuildContext object
    final BuildContext context = widgetTester.element(find.byType(MaterialApp));

    //  given
    await widgetTester.pumpAppWithoutDependencies(BudgetScreen());

    // when
    final button = widgetTester.widget<FpbButton>(find.byType(FpbButton));

    //  then
    expect(
      button.backgroundColor,
      Theme.of(context).colorScheme.secondary,
    );
  });
}
