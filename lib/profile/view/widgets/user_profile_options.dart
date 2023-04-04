import 'package:flutter/material.dart';
import 'package:fpb/assets/fpb_icons/fpb_icons_icons.dart';
import 'package:fpb/l10n/l10n.dart';
import 'package:fpb/profile/view/widgets/profileInfoOptions.dart';

class UserProfileOptions extends StatelessWidget {
  const UserProfileOptions({
    super.key,
    required this.l10n,
    required this.box,
  });

  final AppLocalizations l10n;
  final BoxConstraints box;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      child: Padding(
        padding: EdgeInsets.only(
          left: box.maxHeight * 0.03,
          top: box.maxHeight * 0.03,
          bottom: box.maxHeight * 0.03,
        ),
        child: Column(
          children: [
            ProfileInfoOptions(
              text: l10n.profileAccountText,
              icon: FpbIcons.profile,
              box: box,
            ),
            ProfileInfoOptions(
              text: l10n.profileSettingsText,
              icon: FpbIcons.setting,
              box: box,
            ),
            ProfileInfoOptions(
              text: l10n.profileNotificationsText,
              icon: Icons.notifications,
              box: box,
            ),
            ProfileInfoOptions(
              text: l10n.profilePaymentMethodsText,
              icon: FpbIcons.credit_card,
              box: box,
            )
          ],
        ),
      ),
    );
  }
}
