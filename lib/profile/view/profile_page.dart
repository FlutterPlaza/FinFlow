import 'package:flutter/material.dart';
import 'package:fpb/assets/fpb_icons/fpb_icons_icons.dart';
import 'package:fpb/core/shared/presentation/theming/colors/colors.dart';
import 'package:fpb/l10n/l10n.dart';

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
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, BoxConstraints box) {
          return Padding(
            padding: EdgeInsets.only(
              top: box.maxHeight * 0.1,
              left: box.maxWidth * 0.03,
              right: box.maxWidth * 0.03,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  l10n.profileTitle,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: () {
                        //context.go('/otherUserProfile');
                      },
                      icon: Icon(
                        FpbIcons.edit,
                        size: box.maxHeight * 0.028,
                        color: AppColors.secondaryColorW,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Center(
                      child: CircleAvatar(
                        radius: box.maxHeight * 0.08,
                        child: FlutterLogo(size: box.maxHeight * 0.1),
                      ),
                    ),
                    SizedBox(
                      height: box.maxHeight * 0.015,
                    ),
                    Text(
                      'John Merry',
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                    SizedBox(
                      height: box.maxHeight * 0.008,
                    ),
                    Text(
                      '@john.merry',
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                  ],
                ),
                SizedBox(
                  height: box.maxHeight * 0.03,
                ),
                // ignore: use_decorated_box
                Container(
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
                      children: const [
                        // SettingsOptions(
                        //   text: l10n.profileAccountText,
                        //   icon: FpbIcons.profile,
                        //   box: box,
                        // ),
                        // SizedBox(
                        //   height: box.maxHeight * 0.03,
                        // ),
                        // SettingsOptions(
                        //   text: l10n.profileSettingsText,
                        //   icon: FpbIcons.setting,
                        //   box: box,
                        // ),
                        // SizedBox(
                        //   height: box.maxHeight * 0.03,
                        // ),
                        // SettingsOptions(
                        //   text: l10n.profileNotificationsText,
                        //   icon: Icons.notifications,
                        //   box: box,
                        // ),
                        // SizedBox(
                        //   height: box.maxHeight * 0.03,
                        // ),
                        // SettingsOptions(
                        //   text: l10n.profilePaymentMethodsText,
                        //   icon: FpbIcons.credit_card,
                        //   box: box,
                        // )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: box.maxHeight * 0.015,
                ),

                // ignore: use_decorated_box
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(box.maxHeight * 0.025),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: box.maxHeight * 0.03,
                      top: box.maxHeight * 0.03,
                      bottom: box.maxHeight * 0.03,
                    ),
                    child: const SizedBox.shrink(),

                    //  SettingsOptions(
                    //   text: l10n.profileLogOutText,
                    //   icon: FpbIcons.logout,
                    //   box: box,
                    // ),
                  ),
                ),
                SizedBox(
                  height: box.maxHeight * 0.05,
                ),
                Center(
                  child: Column(
                    children: [
                      Text(
                        'Version 10.2',
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      SizedBox(
                        height: box.maxHeight * 0.001,
                      ),
                      Text(
                        l10n.profileTermsAndConditionsText,
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      Divider(
                        color: const Color(0xff181818),
                        indent: box.maxWidth / 2 - 100,
                        endIndent: box.maxWidth / 2 - 100,
                      )
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
