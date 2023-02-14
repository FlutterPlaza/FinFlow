import 'package:flutter/material.dart';
import 'package:fpb/core/shared/presentation/theming/theming.dart';

class FourDots extends StatelessWidget {
  const FourDots({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 10,
          width: 10,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: AppColors.cardColorW,
          ),
        ),
        const SizedBox(width: 2),
        Container(
          height: 10,
          width: 10,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: AppColors.cardColorW,
          ),
        ),
        const SizedBox(width: 2),
        Container(
          height: 10,
          width: 10,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: AppColors.cardColorW,
          ),
        ),
        const SizedBox(width: 2),
        Container(
          height: 10,
          width: 10,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: AppColors.cardColorW,
          ),
        )
      ],
    );
  }
}
