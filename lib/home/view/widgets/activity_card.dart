import 'package:flutter/material.dart';

class ActivityCard extends StatelessWidget {
  const ActivityCard({
    super.key,
    required this.context,
    required this.box,
    required this.username,
    required this.dateTime,
    required this.transactionAmt,
    required this.isFavorite,
    required this.type,
  });

  final BuildContext context;
  final BoxConstraints box;
  final String username;
  final String dateTime;
  final String transactionAmt;
  final bool isFavorite;
  final String type;

  @override
  Widget build(BuildContext context) {
    // final l10n = context.l10n;
    return Container(
      height: box.maxHeight * 0.08,
      width: box.maxWidth,
      child: Wrap(
        alignment: WrapAlignment.spaceBetween,
        runAlignment: WrapAlignment.center,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          Container(
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              spacing: 6.0,
              children: [
                const CircleAvatar(
                  backgroundColor: Colors.transparent,
                  child: FlutterLogo(),
                ),
                Column(
                  //mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      username,
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    SizedBox(
                      height: box.maxHeight * 0.009,
                    ),
                    Text(
                      // l10n.homeScreenDateAndTime,
                      dateTime,
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Column(
            children: [
              Text(
                // r'- $ 14.99',
                type == 'debit' ? ' -\$ ${transactionAmt}' : transactionAmt,
                style: Theme.of(context).textTheme.titleSmall,
              ),
              SizedBox(
                height: box.maxHeight * 0.009,
              ),
              Icon(
                isFavorite == true
                    ? Icons.favorite
                    : Icons.favorite_border_sharp,
                color: Color(0xffC5C5C5),
                size: 16,
              )
            ],
          )
        ],
      ),
    );
  }
}
