import 'package:flutter/material.dart';
import 'package:fpb/core/domain/ActivityCardModel.dart';
import 'package:fpb/home/view/widgets/custom_appbar.dart';
import 'package:fpb/l10n/l10n.dart';
import 'package:fpb/latest_activities/view/widget/list_activities_widget.dart';

class LatestActivitiesPage extends StatelessWidget {
  const LatestActivitiesPage({super.key});

  static const String routeName = '/latestActivities';

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final theme = Theme.of(context);

    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints box) {
        return Scaffold(
          appBar: CustomAppBar(
            showArrow: true,
            titleChildWidget: Text(''),
            actionChildWidget: [],
          ),
          body: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: box.maxHeight * .75,
                  width: box.maxHeight * .9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: box.maxHeight * 0.025,
                      left: box.maxHeight * 0.025,
                      right: box.maxHeight * 0.025,
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              l10n.homeScreenLatestActivitiesTitle,
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                            Container(
                              height: box.maxHeight * 0.03,
                              width: box.maxHeight * 0.03,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: theme.colorScheme.onBackground,
                              ),
                              child: const Center(child: Text('5')),
                            )
                          ],
                        ),
                        SizedBox(
                          height: box.maxHeight * 0.025,
                        ),
                        Expanded(
                          child: ListActivitiesWidget(
                            box: box,
                            activities: [
                              ActivityCardModel(
                                id: 1,
                                dateTime: 'August 3, 3:45pm',
                                isFavorite: true,
                                transactionAmt: '500',
                                username: '@john_merry',
                                type: 'debit',
                              ),
                              ActivityCardModel(
                                id: 2,
                                dateTime: 'August 3, 3:45pm',
                                isFavorite: false,
                                transactionAmt: '120',
                                username: '@amanda',
                                type: 'credit',
                              ),
                              ActivityCardModel(
                                id: 3,
                                dateTime: 'August 3, 3:45pm',
                                isFavorite: false,
                                transactionAmt: '350',
                                username: '@dezzy',
                                type: 'debit',
                              ),
                              ActivityCardModel(
                                id: 4,
                                dateTime: 'August 3, 3:45pm',
                                isFavorite: false,
                                transactionAmt: '300',
                                username: '@jeff',
                                type: 'debit',
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
