import 'package:flutter/material.dart';
import 'package:fpb/l10n/l10n.dart';
import 'package:fpb/savings/view/widgets/account_card_title.dart';
import 'package:fpb/savings/view/widgets/account_type_tile.dart';

class AccountsCard extends StatelessWidget {
  const AccountsCard(
      {super.key,
      required this.box,
      required this.l10n,
      required this.accountTypeTiles,
      required this.svgnames,
      required this.accountTitle});

  final BoxConstraints box;
  final AppLocalizations l10n;
  final String svgnames;
  final String accountTitle;
  final List<AccountTypeTile> accountTypeTiles;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colors = theme.colorScheme;

    return Container(
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
            AccountsCardTitle(
              svgname: svgnames,
              box: box,
              containerTitle: accountTitle,
            ),
            SizedBox(
              height: box.maxHeight * .03,
            ),
            for (int i = 0; i < accountTypeTiles.length; i++)
              () {
                final AccountTypeTile tile = accountTypeTiles[i];

                return Column(
                  children: [
                    tile,
                    if (i != accountTypeTiles.length - 1)
                      Divider(
                        color: colors.onBackground,
                        thickness: .5,
                      ),
                  ],
                );
              }()
          ],
        ),
      ),
    );
  }
}
