import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fpb/core/presentation/animations/circular_slider_animation/double_circular_slider.dart';
import 'package:fpb/core/presentation/widget/fpb_button.dart';
import 'package:fpb/home/view/widgets/custom_appbar.dart';
import 'package:fpb/home/view/widgets/different_categories.dart';
import 'package:fpb/home/view/widgets/latest_budget_activity.dart';

class BudgetScreen extends StatefulWidget {
  const BudgetScreen({super.key});

  @override
  State<BudgetScreen> createState() => _BudgetScreenState();
}

class _BudgetScreenState extends State<BudgetScreen> {
  int volume = 0;
  bool liked = false;

  final baseColor = Color.fromRGBO(223, 96, 47, 1);

  int initBudget = 0;
  int endBudget = 0;

  int inFinalBudget = 0;
  int outFinalBudget = 0;
  int days = 0;

  @override
  void initState() {
    super.initState();
    _shuffle();
  }

  void _shuffle() {
    setState(() {
      initBudget = _generateRandomAmount();
      inFinalBudget = initBudget;
      outFinalBudget = endBudget;
    });
  }

  void _updateLabels(int init, int end, int laps) {
    setState(() {
      inFinalBudget = init;
      outFinalBudget = end;
      days = laps;
    });
  }

  @override
  Widget build(BuildContext context) {
    // final user = ValueInjector.of<User>(context)?.value ?? User.empty;
    // if (user == User.empty) {
    //   context.read<AuthBloc>()..add(AuthEvent.logoutRequest());
    // }
    final theme = Theme.of(context);
    return LayoutBuilder(
      builder: (context, box) {
        return SafeArea(
          child: Scaffold(
            appBar: CustomAppBar(
              titleChildWidget: Text(
                'Budget',
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: theme.colorScheme.secondary,
                ),
              ),
              height: box.maxHeight * 0.09,
              actionChildWidget: [
                Padding(
                  padding: EdgeInsets.all(
                    box.maxHeight * 0.01,
                  ),
                  child: FpbButton(
                    width: box.maxWidth * 0.5,
                    label: 'New Category',
                    onTap: () => print('New Category'),
                    backgroundColor: theme.colorScheme.secondary,
                    spaceAround: true,
                    leading: Icon(
                      Icons.add,
                    ),
                  ),
                ),
              ],
            ),
            body: Container(
              child: ListView(
                children: [
                  // graph widget
                  Container(
                    height: box.maxHeight * 0.35,
                    width: box.maxWidth,
                    child: DoubleCircularSlider(
                      360, // entire pie-circle amount - totalAmt
                      0,
                      288,
                      height: box.maxHeight * 0.3,
                      width: box.maxWidth * 0.4,
                      primarySectors: 6,
                      secondarySectors: 24,
                      baseColor: Colors.grey[400],
                      selectionColor: baseColor,
                      handlerColor: Colors.white,
                      handlerOutterRadius: 12.0,
                      onSelectionChange: _updateLabels,
                      onSelectionEnd: (a, b, c) =>
                          print('onSelectionEnd $a $b $c'),
                      sliderStrokeWidth: 28.0,
                      child: Padding(
                        padding: const EdgeInsets.all(42.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "84%",
                              style: TextStyle(
                                fontSize: box.maxWidth * 0.08,
                              ),
                            ),
                          ],
                        ),
                      ),
                      shouldCountLaps: true,
                    ),
                  ),
                  // different categories
                  DifferentCategories(
                    box: box,
                  ),
                  // latest budget activity
                  LatestBudgetActivity(
                    box: box,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  int _generateRandomAmount() => Random().nextInt(288);
}
