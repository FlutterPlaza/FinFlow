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
      child: Padding(
        padding: EdgeInsets.only(
          top: box.maxHeight * 0.01,
          bottom: box.maxHeight * 0.005,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const CircleAvatar(
                  radius: 45,
                  backgroundColor: Colors.transparent,
                  child: FlutterLogo(),
                ),
                SizedBox(
                  width: box.maxWidth * 0.01,
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
      ),
    );
  }
}
