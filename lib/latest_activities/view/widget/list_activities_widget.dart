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
          children: activityCardItems.map((e) {
            return ActivityCard(
              context: context,
              box: widget.box,
              dateTime: e.dateTime,
              isFavorite: e.isFavorite,
              transactionAmt: e.transactionAmt,
              type: e.type,
              username: e.username,
            );
          }).toList(),
          // children: [
          // ActivityCard(
          //   context: context,
          //   box: widget.box,
          // ),
          //   const Divider(),
          // ],
        );
      },
    );
  }
}
