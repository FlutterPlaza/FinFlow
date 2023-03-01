import 'package:flutter/material.dart';
import 'package:fpb/assets/fpb_icons/fpb_icons_icons.dart';
import 'package:fpb/l10n/l10n.dart';
import 'package:fpb/profile/view/widgets/profileInfoOptions.dart';

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
    final theme = Theme.of(context); 
    return Scaffold(
      backgroundColor: theme.colorScheme.onBackground,
      body: LayoutBuilder(
        builder: (context, BoxConstraints box) {
          return Padding(
            padding: EdgeInsets.only(
              top: box.maxHeight * 0.09,
              left: box.maxHeight * 0.03,
              right: box.maxHeight * 0.03,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TitleText(
                  box: box,
                  l10n: l10n), 
                SizedBox(
                  height: box.maxHeight * 0.03,
                ),
                UserPic(
                  box: box),
                SizedBox(
                  height: box.maxHeight * 0.01,
                ),
                Center(
                  child: UserName(
                    box: box),
                ),
                SizedBox(
                  height: box.maxHeight * 0.03,
                ),
                UserProfileOptions(
                  box: box,
                  l10n: l10n),
                SizedBox(
                  height: box.maxHeight * 0.02,
                ),
                LogOutOption(
                  box:box,
                  l10n: l10n),
                SizedBox(
                  height: box.maxHeight * 0.1,
                ),
                AppVersion(
                  box: box,
                  l10n: l10n)
              ],
            ),
          );
        },
      ),
    );
  }
}

class AppVersion extends StatelessWidget {
  const AppVersion({
    super.key,
    required this.l10n,
    required this.box
  });

  final AppLocalizations l10n;
  final BoxConstraints box;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            'Version 10.2', 
            style: Theme.of(context).textTheme.titleSmall,
          ),
          SizedBox(
            height: box.maxHeight * 0.001,
          ),
          Text(
            l10n.profileTermsAndConditionsText,
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

class LogOutOption extends StatelessWidget {
  const LogOutOption({
    super.key,
    required this.l10n,
    required this.box
  });

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
        child:   
         ProfileInfoOptions(
          text: l10n.profileLogOutText,
          icon: FpbIcons.logout,
          box: box,
        ),
      )
    );
  }
}

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
          children:   [
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

class UserPic extends StatelessWidget{
const UserPic({
    super.key,
    required this.box,
  });

final BoxConstraints box;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: box.maxWidth,
      child: Stack(
        alignment: Alignment(0.0, -1.5), 
         children: [ 
          Positioned( 
            child: CircleAvatar(
              radius: box.maxHeight * 0.060,
              child: FlutterLogo(size: box.maxHeight * 0.1),
            ),
          ),
         Positioned(
          //top: 0,
          right: box.maxWidth * .001,
           child: IconButton(
            onPressed: () { },
            icon: Icon(
              FpbIcons.edit,
              size: box.maxHeight * 0.028,
              ),
            ),
         ),
        ],
      ),
    );
  }
}


class UserName extends StatelessWidget {
  const UserName({
    super.key,
    required this.box,
  });

  final BoxConstraints box;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final style = theme.textTheme;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
    Text(
    'John Merry',
    style: style.titleMedium,
    ),
    Text(
    '@john.merry',
    style: style.titleSmall,
    ),
    ],
    );
  }
}

class TitleText extends StatelessWidget {
  const TitleText({
    super.key,
    required this.l10n,
    required this.box,
  });

  final AppLocalizations l10n;
  final BoxConstraints box;

  @override
  Widget build(BuildContext context) {
   // final l10n = context.l10n;
    final theme = Theme.of(context);
    final style = theme.textTheme;
    return Text(
      l10n.profileTitle,
      style: style.titleLarge,
    );
  }
}
