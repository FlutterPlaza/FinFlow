// ignore_for_file: omit_local_variable_types, prefer_final_locals

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fpb/l10n/l10n.dart';
import 'package:fpb/router/app_route.gr.dart';

class SavingsPage extends StatefulWidget {
  const SavingsPage({super.key});
  static const String routeName = '/savings';

  @override
  State<SavingsPage> createState() => _SavingsPageState();
}

class _SavingsPageState extends State<SavingsPage> {
  int pageIndex = 1;

  void onChanged(int index) {
    setState(() {
      pageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final theme = Theme.of(context);
    final colors = theme.colorScheme;
    return LayoutBuilder(
      builder: (context, box) {
        return Padding(
          padding: EdgeInsets.only(
            left: box.maxHeight * 0.025,
            right: box.maxHeight * 0.025,
            top: box.maxHeight * 0.1,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    l10n.savingsTitle,
                    style: theme.textTheme.titleLarge,
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(colors.secondary),
                    ),
                    onPressed: () {
                      context.router.push(ProfileRoute());
                    },
                    child: Row(
                      children: [
                        const Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 12,
                        ),
                        SizedBox(
                          width: box.maxWidth * 0.03,
                        ),
                        Text(
                          l10n.savingsNewSavingsAccountLabel,
                          style:
                              Theme.of(context).textTheme.titleSmall?.copyWith(
                                  // color: AppColors.onSurfaceW,
                                  ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: box.maxHeight * 0.025,
              ),
              Container(
                height: box.maxHeight * 0.3,
                width: box.maxWidth * .85,
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
                            'assets/fpb-assets/orange_clock_icon.png',
                          ),
                          SizedBox(
                            width: box.maxHeight * 0.02,
                          ),
                          Text(
                            l10n.savingsTimeBlockedAccounts,
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ],
                      ),
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
                                'My Tesla New Model X',
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                              Text(
                                r'$ 1,280.45',
                                style: Theme.of(context).textTheme.titleSmall,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: box.maxHeight * 0.01,
                          ),
                          Text(
                            l10n.savingsMyTeslaModelXBlockedTimelineText,
                            style: Theme.of(context).textTheme.labelMedium,
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
                                l10n.savingsNewDroneText,
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                              Text(
                                r'$ 79.45',
                                style: Theme.of(context).textTheme.titleSmall,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: box.maxHeight * 0.01,
                          ),
                          Text(
                            l10n.savingsNewDroneBlockedTimelineText,
                            style: Theme.of(context).textTheme.labelMedium,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: box.maxHeight * 0.025,
              ),
              Container(
                height: box.maxHeight * 0.3,
                width: box.maxWidth * .85,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                    left: box.maxHeight * 0.025,
                    right: box.maxHeight * 0.025,
                    top: box.maxHeight * 0.025,
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset('assets/fpb-assets/Fill 2.png'),
                          SizedBox(
                            width: box.maxHeight * 0.02,
                          ),
                          Text(
                            l10n.savingsStandardAccountsLabel,
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ],
                      ),
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
                                l10n.savingsMortgageText,
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                              Text(
                                r'$ 22,500.50',
                                style: Theme.of(context).textTheme.titleSmall,
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: box.maxHeight * 0.025,
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
                                l10n.savingsNewDroneText,
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                              Text(
                                r'$ 79.45',
                                style: Theme.of(context).textTheme.titleSmall,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: box.maxHeight * 0.01,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
