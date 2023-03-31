import 'package:flutter/material.dart';
import 'package:fpb/core/domain/ActivityCardModel.dart';
import 'package:fpb/home/view/widgets/activity_card.dart';

class ListActivitiesWidget extends StatefulWidget {
  const ListActivitiesWidget({
    super.key,
    required this.activities,
    required this.box,
  });

  final List<ActivityCardModel> activities;
  final BoxConstraints box;

  @override
  State<ListActivitiesWidget> createState() => _ListActivitiesWidgetState();
}

class _ListActivitiesWidgetState extends State<ListActivitiesWidget> {
  late List<ActivityCardModel> activityCardItems = [
    ...widget.activities,
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: activityCardItems.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            ActivityCard(
              context: context,
              box: widget.box,
              dateTime: activityCardItems[index].dateTime,
              isFavorite: activityCardItems[index].isFavorite,
              transactionAmt: activityCardItems[index].transactionAmt,
              type: activityCardItems[index].type,
              username: activityCardItems[index].username,
            ),
            const Divider(),
          ],
        );
      },
    );
  }
}
