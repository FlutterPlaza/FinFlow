import 'package:flutter/material.dart';
import 'package:fpb/l10n/l10n.dart';

class savingsAccountTypeContainer extends StatelessWidget {
  const savingsAccountTypeContainer(
      {super.key,
      required this.l10n,
      required this.box,
      required this.containerSubText1,
      required this.containerSubText2,
      required this.containerText1,
      required this.containerText2,
      required this.containerTitle,
      required this.imageUrl,
      required this.amount1,
      required this.amount2});

  final AppLocalizations l10n;
  final BoxConstraints box;
  final String containerTitle;
  final String containerText1;
  final String containerText2;
  final String containerSubText1;
  final String containerSubText2;
  final String imageUrl;
  final String amount1;
  final String amount2;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final style = theme.textTheme;

    return Container(
      height: box.maxHeight * 0.35,
      width: box.maxWidth * .95,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      child: Padding(
        padding: EdgeInsets.only(
          left: box.maxHeight * 0.025,
          right: box.maxHeight * 0.025,
          top: box.maxHeight * 0.025,
          bottom: box.maxHeight * 0.015,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    imageUrl,
                  ),
                  SizedBox(
                    width: box.maxHeight * 0.02,
                  ),
                  Text(
                    containerTitle,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ],
              ),
              SizedBox(
                height: box.maxHeight * 0.03,
              ),
              Column(
                // ignore: avoid_redundant_argument_values
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        containerText1,
                        style: style.titleMedium
                            ?.copyWith(color: theme.colorScheme.onTertiary),
                      ),
                      Text(
                        amount1,
                        style: style.titleMedium
                            ?.copyWith(fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: box.maxHeight * 0.01,
                  ),
                  Text(
                    containerSubText1,
                    style: style.titleSmall,
                  ),
                ],
              ),
              SizedBox(
                height: box.maxHeight * 0.01,
              ),
              const Divider(),
              SizedBox(
                height: box.maxHeight * 0.01,
              ),
              Column(
                // ignore: avoid_redundant_argument_values
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        containerText2,
                        style: style.titleMedium
                            ?.copyWith(color: theme.colorScheme.onTertiary),
                      ),
                      Text(
                        amount2,
                        style: style.titleMedium
                            ?.copyWith(fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: box.maxHeight * 0.01,
                  ),
                  Text(
                    containerSubText2,
                    style: style.titleSmall,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class savingsAccountTypeContainer2 extends StatelessWidget {
  const savingsAccountTypeContainer2(
      {super.key,
      required this.l10n,
      required this.box,
      // this.containerSubText1,
      // this.containerSubText2,
      required this.containerText1,
      required this.containerText2,
      required this.containerTitle,
      required this.imageUrl,
      required this.amount1,
      required this.amount2});

  final AppLocalizations l10n;
  final BoxConstraints box;
  final String containerTitle;
  final String containerText1;
  final String containerText2;
  // final String containerSubText1;
  //final String containerSubText2;
  final String imageUrl;
  final String amount1;
  final String amount2;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final style = theme.textTheme;

    return Container(
      height: box.maxHeight * 0.35,
      width: box.maxWidth * .95,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      child: Padding(
        padding: EdgeInsets.only(
          left: box.maxHeight * 0.025,
          right: box.maxHeight * 0.025,
          top: box.maxHeight * 0.025,
          bottom: box.maxHeight * 0.015,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  imageUrl,
                ),
                SizedBox(
                  width: box.maxHeight * 0.02,
                ),
                Text(
                  containerTitle,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ],
            ),
            SizedBox(
              height: box.maxHeight * 0.03,
            ),
            Column(
              // ignore: avoid_redundant_argument_values
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      containerText1,
                      style: style.titleMedium
                          ?.copyWith(color: theme.colorScheme.onTertiary),
                    ),
                    Text(
                      amount1,
                      style: style.titleMedium
                          ?.copyWith(fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                SizedBox(
                  height: box.maxHeight * 0.01,
                ),
                //Text(
                //containerSubText1 == null ? null : containerSubText1,
                //style: style.titleSmall,
                //),
              ],
            ),
            SizedBox(
              height: box.maxHeight * 0.01,
            ),
            const Divider(),
            SizedBox(
              height: box.maxHeight * 0.01,
            ),
            Column(
              // ignore: avoid_redundant_argument_values
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      containerText2,
                      style: style.titleMedium
                          ?.copyWith(color: theme.colorScheme.onTertiary),
                    ),
                    Text(
                      amount2,
                      style: style.titleMedium
                          ?.copyWith(fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                SizedBox(
                  height: box.maxHeight * 0.01,
                ),
                // Text(
                //   containerSubText2!,
                //   style: style.titleSmall,
                //),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
