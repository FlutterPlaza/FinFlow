import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fpb/assets/fpb_svg.dart';

class CardInfoWidget extends StatelessWidget {
  const CardInfoWidget({
    super.key,
    required this.box,
    this.expiryDate,
    this.cvv,
    this.defaulPayment,
  });

  final BoxConstraints box;
  final String? expiryDate;
  final String? cvv;
  final bool? defaulPayment;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colors = theme.colorScheme;
    return Container(
      width: box.maxWidth,
      child: Wrap(
        alignment: WrapAlignment.spaceBetween,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          // expiry date
          SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Expriy',
                  style: theme.textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  expiryDate ?? '04/2025',
                  style: theme.textTheme.titleSmall?.copyWith(
                    color: colors.surface,
                  ),
                ),
              ],
            ),
          ),
          // CVV
          SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'CVV',
                  style: theme.textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  cvv ?? '04/2025',
                  style: theme.textTheme.titleSmall?.copyWith(
                    color: colors.surface,
                  ),
                ),
              ],
            ),
          ),
          // default payment method
          SizedBox(
            width: box.maxWidth * 0.4,
            child: Wrap(
              spacing: 2.0,
              crossAxisAlignment: WrapCrossAlignment.start,
              children: [
                SvgPicture.asset(
                  SvgNames.whiteTickCheckbox,
                ),
                SizedBox(
                  width: box.maxWidth * 0.3,
                  child: Flexible(
                    child: Text(
                      'Default payment method',
                      style: theme.textTheme.titleSmall?.copyWith(
                        color: colors.surface,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
