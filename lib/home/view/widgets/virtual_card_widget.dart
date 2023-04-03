import 'package:flutter/material.dart';
import 'package:fpb/assets/fpb_icons/fpb_icons_icons.dart';
import 'package:fpb/core/domain/virtualCard.dart';
import 'package:fpb/home/view/widgets/four_dot.dart';
import 'package:fpb/l10n/l10n.dart';

class VirtualCardsWidget extends StatelessWidget {
  final VirtualCard cardItem;

  const VirtualCardsWidget({super.key, required this.cardItem});

  @override
  Widget build(BuildContext context) {
    final box = MediaQuery.of(context).size;
    final l10n = context.l10n;
    final theme = Theme.of(context);

    return Container(
      child: Stack(
        children: [
          Transform.translate(
            offset: const Offset(15, -15),
            child: Container(
              height: box.height * 0.25,
              width: box.width - 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: const Color.fromARGB(
                  27,
                  223,
                  96,
                  47,
                ),
              ),
            ),
          ),
          Container(
            height: box.height * 0.25,
            width: box.width - 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: const Color(0xffDF602F),
            ),
            child: Padding(
              padding: EdgeInsets.only(
                top: box.height * 0.025,
                left: box.height * 0.025,
                bottom: box.height * 0.025,
                right: box.height * 0.025,
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '\$ ${cardItem.balance}',
                          key: Key('CardBalance'),
                          style: theme.textTheme.titleLarge?.copyWith(
                            color: theme.colorScheme.background,
                          ),
                        ),
                        Row(
                          children: [
                            Image.asset(
                              'assets/fpb-assets/visa_v_icon.png',
                              // color: _AppColors.onSurfaceW,
                            ),
                            Image.asset(
                              'assets/fpb-assets/visa_i_icon.png',
                              // color: _AppColors.onSurfaceW,
                            ),
                            Image.asset(
                              'assets/fpb-assets/visa_s_icon.png',
                              // color: _AppColors.onSurfaceW,
                            ),
                            Image.asset(
                              'assets/fpb-assets/visa_a_icon.png',
                              // color: _AppColors.onSurfaceW,
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: box.height * 0.02,
                    ),
                    Text(
                      l10n.homeScreenCardNumber,
                      style: theme.textTheme.labelMedium?.copyWith(
                        color: theme.colorScheme.background,
                      ),
                    ),
                    SizedBox(
                      height: box.height * 0.008,
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            FourDots(),
                            FourDots(),
                            FourDots(),
                            Text(
                              cardItem.lastFourDigits,
                              key: Key('LastFourDigits'),
                              style: theme.textTheme.titleMedium?.copyWith(
                                color: theme.colorScheme.background,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: box.height * 0.015,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              l10n.homeScreenExpiry,
                              style: theme.textTheme.labelMedium?.copyWith(
                                color: theme.colorScheme.background,
                              ),
                            ),
                            Text(
                              'CCV',
                              style: theme.textTheme.labelMedium?.copyWith(
                                color: theme.colorScheme.background,
                              ),
                            ),
                            const Text('        '),
                            const Text('  '),
                          ],
                        ),
                        SizedBox(
                          height: box.height * 0.001,
                        ),
                        SingleChildScrollView(
                          //scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                cardItem.expiry,
                                style: theme.textTheme.titleSmall?.copyWith(
                                  color: theme.colorScheme.background,
                                ),
                              ),
                              Text(
                                cardItem.cvv,
                                style: theme.textTheme.titleSmall?.copyWith(
                                  color: theme.colorScheme.background,
                                ),
                              ),
                              const Text('     '),
                              Icon(
                                FpbIcons.eye_open,
                                color: theme.colorScheme.background,
                                size: 15,
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
