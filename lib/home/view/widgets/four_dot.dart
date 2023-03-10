import 'package:flutter/material.dart';

class FourDots extends StatelessWidget {
  const FourDots({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colors = theme.colorScheme;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 10,
          width: 10,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: colors.onSurface,
          ),
        ),
        const SizedBox(width: 2),
        Container(
          height: 10,
          width: 10,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: colors.onSurface,
          ),
        ),
        const SizedBox(width: 2),
        Container(
          height: 10,
          width: 10,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: colors.onSurface,
          ),
        ),
        const SizedBox(width: 2),
        Container(
          height: 10,
          width: 10,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: colors.onSurface,
          ),
        )
      ],
    );
  }
}
