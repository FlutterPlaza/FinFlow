import 'package:flutter/material.dart';
import 'package:fpb/l10n/l10n.dart';
import 'package:fpb/profile/view/widgets/log_out_option.dart';
import 'package:fpb/profile/view/widgets/title_text.dart';
import 'package:fpb/profile/view/widgets/user_name.dart';
import 'package:fpb/profile/view/widgets/user_pic.dart';
import 'package:fpb/profile/view/widgets/user_profile_options.dart';

import 'widgets/app_version.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});
  static const String routeName = '/userProfile';

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int pageIndex = 4;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    //final theme = Theme.of(context);
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, BoxConstraints box) {
          return Padding(
            padding: EdgeInsets.only(
              top: box.maxHeight * 0.09,
              left: box.maxHeight * 0.03,
              right: box.maxHeight * 0.03,
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TitleText(key: Key('ProfileTitle'), box: box, l10n: l10n),
                  SizedBox(
                    height: box.maxHeight * 0.03,
                  ),
                  UserPic(box: box),
                  SizedBox(
                    height: box.maxHeight * 0.01,
                  ),
                  Center(
                    child: UserName(box: box),
                  ),
                  SizedBox(
                    height: box.maxHeight * 0.03,
                  ),
                  UserProfileOptions(box: box, l10n: l10n),
                  SizedBox(
                    height: box.maxHeight * 0.02,
                  ),
                  LogOutOption(box: box, l10n: l10n),
                  SizedBox(
                    height: box.maxHeight * 0.1,
                  ),
                  AppVersion(box: box, l10n: l10n)
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
