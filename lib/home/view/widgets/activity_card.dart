import 'package:flutter/material.dart';
import 'package:fpb/l10n/l10n.dart';

class ActivityCard extends StatelessWidget {
  const ActivityCard({
    super.key,
    required this.context,
    required this.box,
  });

  final BuildContext context;
  final BoxConstraints box;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
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
                      '@john_merry',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    SizedBox(
                      height: box.maxHeight * 0.009,
                    ),
                    Text(
                      l10n.homeScreenDateAndTime,
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
                r'- $ 14.99',
                style: Theme.of(context).textTheme.titleSmall,
              ),
              SizedBox(
                height: box.maxHeight * 0.009,
              ),
              const Icon(
                Icons.favorite_border_sharp,
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
