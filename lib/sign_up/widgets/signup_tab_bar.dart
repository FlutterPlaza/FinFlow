
import 'package:flutter/material.dart';
import 'package:fpb/l10n/l10n.dart';

class SignUpTabBar extends StatelessWidget {
  const SignUpTabBar({Key? key, this.box, required this.tabController, required this.onChanged,}) : super(key: key);

  final BoxConstraints? box;
  final TabController tabController;
  final void Function(int index) onChanged;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final theme = Theme.of(context);

    return Container(
      margin: EdgeInsets.symmetric(
        vertical: box!.maxHeight * .008,
      ),
      height: box!.maxHeight * 0.06,
      decoration: BoxDecoration(
        color: theme.cardColor,
        borderRadius:
        BorderRadius.circular(10),
      ),
      // color: Colors.red,
      child: TabBar(
        padding: EdgeInsets.all(
            box!.maxHeight * .008),
        controller: tabController,
        onTap: onChanged,
        tabs: [
          Tab(
            child: Text(
              l10n.signInEmailLogInLabel,
              maxLines: 1,
              overflow:
              TextOverflow.ellipsis,
            ),
          ),
          Tab(
            child: Text(
              l10n.signInPhoneNumberLogInLabel,
              maxLines: 1,
              overflow:
              TextOverflow.ellipsis,
            ),
          )
        ],
      ),
    );
  }
}
