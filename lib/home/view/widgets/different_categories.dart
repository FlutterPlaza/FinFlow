import 'package:flutter/material.dart';
import 'package:fpb/core/presentation/widget/vertical_spacing_widget.dart';

import 'budget_item.dart';

class DifferentCategories extends StatelessWidget {
  const DifferentCategories({super.key, required this.box});

  final BoxConstraints box;

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.yellow,
      padding: EdgeInsets.symmetric(
        horizontal: box.maxWidth * 0.03,
        vertical: box.maxHeight * 0.01,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Different Categories',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          VerticalSpacingWidget(
            box: box,
            height: box.maxHeight * 0.01,
          ),
          BudgetItem(
            box: box,
            name: 'Shopping',
            amount: '129.00/300',
          ),
          BudgetItem(
            box: box,
            name: 'Health',
            amount: '129.00/300',
          ),
          BudgetItem(
            box: box,
            name: 'Food',
            amount: '129.00/300',
          ),
          BudgetItem(
            box: box,
            name: 'Shopping',
            amount: '129.00/300',
          ),
        ],
      ),
    );
  }
}
