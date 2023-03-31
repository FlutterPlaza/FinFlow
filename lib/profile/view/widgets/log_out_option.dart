import 'package:flutter/material.dart';
import 'package:fpb/assets/fpb_icons/fpb_icons_icons.dart';
import 'package:fpb/l10n/l10n.dart';
import 'package:fpb/profile/view/widgets/profileInfoOptions.dart';

class LogOutOption extends StatelessWidget {
  const LogOutOption({super.key, required this.l10n, required this.box});

  final AppLocalizations l10n;
  final BoxConstraints box;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(box.maxHeight * 0.025),
          color: Colors.white,
        ),
        child: Padding(
          padding: EdgeInsets.only(
            left: box.maxHeight * 0.03,
            top: box.maxHeight * 0.01,
            bottom: box.maxHeight * 0.01,
          ),
          child: ProfileInfoOptions(
            text: l10n.profileLogOutText,
            icon: FpbIcons.logout,
            box: box,
          ),
        ));
  }
}
