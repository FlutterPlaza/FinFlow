import 'package:flutter/material.dart';
import 'package:fpb/core/presentation/widget/vertical_spacing_widget.dart';
import 'package:fpb/home/view/widgets/activity_card.dart';

class LatestBudgetActivity extends StatelessWidget {
  const LatestBudgetActivity({super.key, required this.box});

  final BoxConstraints box;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: box.maxWidth * 0.03,
        vertical: box.maxHeight * 0.01,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Latest budget activity',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          VerticalSpacingWidget(
            box: box,
            height: box.maxHeight * 0.01,
          ),
          ActivityCard(
            context: context,
            box: box,
            dateTime: 'August 3, 3: 45pm',
            isFavorite: false,
            transactionAmt: '',
            username: '@john_merry',
            type: 'debit',
          ),
          ActivityCard(
            context: context,
            box: box,
            dateTime: 'August 3, 3: 45pm',
            isFavorite: false,
            transactionAmt: '',
            username: '@john_merry',
            type: 'debit',
          ),
          ActivityCard(
            context: context,
            box: box,
            dateTime: 'August 3, 3: 45pm',
            isFavorite: false,
            transactionAmt: '',
            username: '@john_merry',
            type: 'debit',
          ),
          ActivityCard(
            context: context,
            box: box,
            dateTime: 'August 3, 3: 45pm',
            isFavorite: false,
            transactionAmt: '',
            username: '@john_merry',
            type: 'debit',
          ),
        ],
      ),
    );
  }
}
