import 'package:flutter/material.dart';

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
                  style: theme.textTheme.titleMedium?.copyWith(
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
                  style: theme.textTheme.titleMedium?.copyWith(
                    color: colors.surface,
                  ),
                ),
              ],
            ),
          ),
          // default payment method
          SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Expriy',
                  style: theme.textTheme.titleSmall,
                ),
                Text(
                  expiryDate ?? '04/2025',
                  style: theme.textTheme.titleMedium?.copyWith(
                    color: colors.surface,
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
