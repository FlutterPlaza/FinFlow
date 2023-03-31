import 'package:flutter/material.dart';
import 'package:fpb/home/view/widgets/activity_card.dart';
import 'package:fpb/l10n/l10n.dart';

class DisplayLatestActivity extends StatelessWidget {
  const DisplayLatestActivity({super.key, required this.box});

  final BoxConstraints box;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Container(
      height: box.maxHeight * 0.4,
      width: box.maxWidth * 0.95,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: EdgeInsets.only(
          left: box.maxHeight * 0.025,
          top: box.maxHeight * 0.020,
          bottom: box.maxHeight * 0.01,
          right: box.maxHeight * 0.025,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  l10n.homeScreenLatestActivitiesTitle,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                Container(
                  height: box.maxHeight * 0.03,
                  width: box.maxHeight * 0.03,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: const Color(0xffEAEAEA),
                  ),
                  child: const Center(child: Text('2')),
                )
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 15,
                itemBuilder: (context, index) {
                  // ignore: avoid_unnecessary_containers
                  return Column(
                    children: [
                      ActivityCard(
                        context: context,
                        box: box,
                        dateTime: 'August 3, 3: 45pm',
                        isFavorite: false,
                        transactionAmt: '',
                        username: '@john_merry',
                        type: 'debit',
                      ),
                      const Divider(),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
