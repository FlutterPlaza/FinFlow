import 'package:flutter/material.dart';
import 'package:fpb/assets/fpb_icons/fpb_icons_icons.dart';
import 'package:fpb/home/view/widgets/activity_card.dart';
import 'package:fpb/l10n/l10n.dart';

class SendersProfilePage extends StatelessWidget {
  const SendersProfilePage({super.key});
  static const String routeName = '/otherUserProfile';
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final theme = Theme.of(context);
    final style = theme.textTheme;
    final colors = theme.colorScheme;
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, BoxConstraints box) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_back,
                  size: 25,
                  // color: AppColors.secondaryColorW,
                ),
              ),
              Center(
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: box.maxHeight * 0.075,
                      child: FlutterLogo(size: box.maxHeight * 0.1),
                    ),
                    SizedBox(
                      height: box.maxHeight * 0.012,
                    ),
                    Text(
                      'John Merry',
                      style: style.titleLarge?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: box.maxHeight * 0.005,
                    ),
                    Text(
                      '@john.merry',
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                    SizedBox(
                      height: box.maxHeight * 0.01,
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: box.maxHeight * 0.06,
                    width: box.maxWidth * 0.3,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            colors.secondaryContainer),
                      ),
                      onPressed: () {},
                      child: Text(
                        l10n.sendersProfileRequestLabel,
                        style: style.titleMedium?.copyWith(
                          color: colors.secondaryContainer,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: box.maxHeight * 0.06,
                    width: box.maxWidth * 0.3,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          colors.secondaryContainer,
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        l10n.sendersProfilePayLabel,
                        style: style.titleMedium?.copyWith(
                          color: colors.secondaryContainer,
                        ),
                      ),
                    ),
                  ),
                  // ),
                ],
              ),
              SizedBox(
                height: box.maxHeight * 0.075,
              ),
              SettingsOptions(
                icon: FpbIcons.calendar,
                text: 'Joined May 2022',
                box: box,
              ),
              SizedBox(
                height: box.maxHeight * 0.02,
              ),
              SettingsOptions(
                icon: FpbIcons.swap,
                text: l10n.sendersProfileConnectionText,
                box: box,
              ),
              SizedBox(
                height: box.maxHeight * 0.02,
              ),
              SettingsOptions(
                text: l10n.sendersProfileContactsText,
                icon: FpbIcons.tick_square,
                box: box,
              ),
              SizedBox(
                height: box.maxHeight * 0.075,
              ),
              Text(
                l10n.sendersProfileHistoryText,
                style: Theme.of(context).textTheme.labelMedium?.copyWith(
                      fontSize: 16,
                    ),
              ),
              SizedBox(
                height: box.maxHeight * 0.02,
              ),
              ActivityCard(
                context: context,
                box: box,
                dateTime: 'August 3, 3: 45pm',
                isFavorite: false,
                transactionAmt: '',
                username: '@john_merry',
                type: 'debit',
              ),
              ActivityCard(
                context: context,
                box: box,
                dateTime: 'August 3, 3: 45pm',
                isFavorite: false,
                transactionAmt: '',
                username: '@john_merry',
                type: 'debit',
              ),
            ],
          ).paddingDefault(box);
        },
      ),
    );
  }
}

extension PaddingX on Widget {
  Widget paddingDefault(BoxConstraints box) {
    return Padding(
      padding: EdgeInsets.only(
        left: box.maxHeight * 0.025,
        right: box.maxHeight * 0.025,
        top: box.maxHeight * 0.1,
        bottom: box.maxHeight * 0.025,
      ),
      child: this,
    );
  }
}

class SettingsOptions extends StatelessWidget {
  const SettingsOptions({
    super.key,
    required this.text,
    required this.icon,
    required this.box,
  });
  final IconData icon;
  final String text;
  final BoxConstraints box;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          // color: AppColors.accentColorW,
          size: box.maxHeight * 0.025,
        ),
        SizedBox(
          width: box.maxHeight * 0.03,
        ),
        Text(
          text,
          maxLines: 2,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w600,
              ),
        ),
      ],
      //),
    );
  }
}
