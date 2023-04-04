import 'package:flutter/material.dart';

import '../../../l10n/l10n.dart';

class AppVersion extends StatelessWidget {
  const AppVersion({super.key, required this.l10n, required this.box});

  final AppLocalizations l10n;
  final BoxConstraints box;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            'Version 10.2',
            key: Key('VersionText'),
            style: Theme.of(context).textTheme.titleSmall,
          ),
          SizedBox(
            height: box.maxHeight * 0.001,
          ),
          Text(
            l10n.profileTermsAndConditionsText,
            key: Key('TermsAndConditions'),
            style: Theme.of(context).textTheme.titleSmall,
          ),
          Divider(
            indent: (box.maxWidth / 2) - 100,
            endIndent: (box.maxWidth / 2) - 100,
          )
        ],
      ),
    );
  }
}
