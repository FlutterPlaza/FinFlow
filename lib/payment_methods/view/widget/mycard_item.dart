import 'package:flutter/material.dart';
import 'package:fpb/core/presentation/widget/vertical_spacing_widget.dart';
import 'package:fpb/payment_methods/view/widget/card_info_widget.dart';
import 'package:fpb/payment_methods/view/widget/card_number_dot.dart';

class MyCardItem extends StatelessWidget {
  const MyCardItem({
    super.key,
    required this.box,
    this.bgColor,
    this.cardIndex,
  });

  final BoxConstraints box;
  final Color? bgColor;
  final int? cardIndex;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colors = Theme.of(context).colorScheme;
    return Container(
      width: box.maxWidth * 0.9,
      height: box.maxHeight * 0.2,
      decoration: BoxDecoration(
        color: bgColor ?? colors.onTertiary,
        borderRadius: BorderRadius.circular(
          10.0,
        ),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: box.maxWidth * 0.04,
        vertical: cardIndex == 0 || cardIndex == 1
            ? box.maxHeight * 0.0
            : box.maxHeight * 0.017,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            width: box.maxWidth,
            // color: Colors.red,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Card Number',
                  style: theme.textTheme.titleSmall,
                ),
                SizedBox(
                  height: 5.0,
                ),
                SizedBox(
                  width: box.maxWidth,
                  child: Wrap(
                    alignment: WrapAlignment.spaceBetween,
                    children: [
                      CardNumberDot(),
                      CardNumberDot(),
                      CardNumberDot(),
                    ],
                  ),
                )
              ],
            ),
          ),
          CardInfoWidget(
            box: box,
          ),
          if (cardIndex == 0 || cardIndex == 1) ...[
            VerticalSpacingWidget(
              box: box,
              height: box.maxHeight * 0.01,
            ),
          ]
        ],
      ),
    );
  }
}
