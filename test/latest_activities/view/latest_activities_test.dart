import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpb/home/view/widgets/activity_card.dart';
import 'package:fpb/home/view/widgets/custom_appbar.dart';
import 'package:fpb/l10n/l10n.dart';
import 'package:fpb/latest_activities/latest_activities_screen.dart';
import 'package:fpb/latest_activities/view/widget/list_activities_widget.dart';

import '../../helpers/helpers.dart';

void main() {
  // check back icon in CustomAppBar
  testWidgets(
    "check for back button icon in CustomAppBar",
    (widgetTester) async {
      // given
      await widgetTester.pumpAppWithoutDependencies(LatestActivitiesPage());
      await widgetTester.pump(); // rebuild widget

      // then
      final getBackIcon =
          widgetTester.widget<CustomAppBar>(find.byType(CustomAppBar));

      // then
      expect(getBackIcon.showArrow, true);
    },
  );

  // A/N check for Latest Activities text
  testWidgets('check for Latest activity text', (widgetTester) async {
    // given the
    await widgetTester.pumpAppWithoutDependencies(LatestActivitiesPage());
    await widgetTester.pump(); // rebuild widget

    // check output
    expect(find.text('Latest Activities'), findsOneWidget);
  });

  // check for activity counter
  testWidgets('Activities counter should have a number', (widgetTester) async {
    // given the
    await widgetTester.pumpAppWithoutDependencies(LatestActivitiesPage());
    await widgetTester.pump(); // rebuild widget

    // check output
    expect(find.text('5'), findsOneWidget);
  });

  // check for list of activities
  testWidgets('List for activities', (widgetTester) async {
    final widget = getActivitiessContainer();

    // given
    await widgetTester.pumpWidget(widget);
    await widgetTester.pump(); // rebuild widget

    expect(widget, findsNWidgets(1)); // atleast expect one list activities
  });

  //
}

MaterialApp getActivitiessContainer() {
  return MaterialApp(
    localizationsDelegates: AppLocalizations.localizationsDelegates,
    supportedLocales: AppLocalizations.supportedLocales,
    home: SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              // latest activities
              ListActivitiesWidget(
                activities: activitiestTestData,
                box: BoxConstraints(),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
