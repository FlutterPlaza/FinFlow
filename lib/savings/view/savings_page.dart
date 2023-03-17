// ignore_for_file: omit_local_variable_types, prefer_final_locals

import 'package:flutter/material.dart';
import 'package:fpb/assets/fpb_svg.dart';
import 'package:fpb/l10n/l10n.dart';
import 'package:fpb/savings/view/widgets/account_card.dart';
import 'package:fpb/savings/view/widgets/account_type_tile.dart';
import 'package:fpb/savings/view/widgets/savings_screen_title.dart';

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
    return LayoutBuilder(
      builder: (context, box) {
        return Scaffold(
          body: Padding(
            padding: EdgeInsets.only(
              left: box.maxHeight * 0.025,
              right: box.maxHeight * 0.025,
              top: box.maxHeight * 0.1,
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SavingsScreenTitle(
                    box: box,
                  ),
                  SizedBox(
                    height: box.maxHeight * 0.05,
                  ),
                  AccountsCard(
                    accountTitle: l10n.savingsTimeBlockedAccounts,
                    svgnames: SvgNames.timeCircle,
                    box: box,
                    l10n: l10n,
                    accountTypeTiles: [
                      AccountTypeTile(
                        tileText: 'My Tesla Model X',
                        amount: '\$ 1,280.45',
                        tileSubText:
                            l10n.savingsMyTeslaModelXBlockedTimelineText,
                        box: box,
                      ),
                      AccountTypeTile(
                        tileText: l10n.savingsNewDroneText,
                        amount: '\$ 79.45',
                        box: box,
                        tileSubText: l10n.savingsNewDroneBlockedTimelineText,
                      )
                    ],
                  ),
                  SizedBox(
                    height: box.maxHeight * 0.025,
                  ),
                  AccountsCard(
                    accountTitle: l10n.savingsStandardAccountsLabel,
                    svgnames: SvgNames.wallet,
                    box: box,
                    l10n: l10n,
                    accountTypeTiles: [
                      AccountTypeTile(
                        tileText: l10n.savingsMortgageText,
                        amount: '\$ 22,500.50',
                        tileSubText: '',
                        box: box,
                      ),
                      AccountTypeTile(
                        tileText: l10n.savingsNewDroneText,
                        amount: '\$ 79.45',
                        box: box,
                        tileSubText: '',
                      )
                    ],
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
