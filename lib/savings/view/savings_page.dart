// ignore_for_file: omit_local_variable_types, prefer_final_locals

import 'package:flutter/material.dart';
import 'package:fpb/l10n/l10n.dart';
import 'package:fpb/savings/view/widgets/newSavingsAccountBtn.dart';
import 'package:fpb/savings/view/widgets/savingsAccountType.dart';

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
        return Scaffold(
          backgroundColor: colors.onBackground,
          body: Padding(
            padding: EdgeInsets.only(
              left: box.maxHeight * 0.025,
              right: box.maxHeight * 0.025,
              top: box.maxHeight * 0.1,
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        l10n.savingsTitle,
                        style: theme.textTheme.titleLarge,
                      ),
                      newSavingsAccountBtn(
                        colors: colors,
                        l10n: l10n,
                        box: box,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: box.maxHeight * 0.05,
                  ),
                  savingsAccountTypeContainer(
                    l10n: l10n,
                    box: box,
                    containerTitle: l10n.savingsTimeBlockedAccounts,
                    containerText1: 'My Tesla Model X',
                    containerSubText1:
                        l10n.savingsMyTeslaModelXBlockedTimelineText,
                    containerText2: l10n.savingsNewDroneText,
                    containerSubText2: l10n.savingsNewDroneBlockedTimelineText,
                    imageUrl: 'assets/fpb-assets/orange_clock_icon.png',
                    amount1: r'$ 1,280.45',
                    amount2: r'$ 79.45',
                  ),
                  SizedBox(
                    height: box.maxHeight * 0.025,
                  ),
                  savingsAccountTypeContainer2(
                    l10n: l10n,
                    box: box,
                    containerText1: l10n.savingsMortgageText,
                    containerText2: l10n.savingsNewDroneText,
                    containerTitle: l10n.savingsStandardAccountsLabel,
                    imageUrl: 'assets/fpb-assets/Fill 2.png',
                    amount1: r'$ 22,500.50',
                    amount2: r'$ 79.45',
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
