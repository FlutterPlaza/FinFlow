import 'package:flutter/material.dart';
import 'package:fpb/assets/fpb_icons/fpb_icons_icons.dart';
import 'package:fpb/core/shared/presentation/theming/colors/colors.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    Image? image;
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, BoxConstraints box) {
            return Padding(
              padding: EdgeInsets.only(
                top: box.maxHeight * 0.005,
                left: box.maxWidth * 0.05,
                right: box.maxWidth * 0.05,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Profile',
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                          color: const Color(0xff181818),
                        ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        onPressed: () {},
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
                          child:
                              image ?? FlutterLogo(size: box.maxHeight * 0.1),
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
                        style:
                            Theme.of(context).textTheme.titleMedium?.copyWith(
                                  color: const Color(0xff888888),
                                ),
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
                        children: [
                          Row(
                            children: [
                              Icon(
                                FpbIcons.profile,
                                color: AppColors.accentColorW,
                                size: box.maxHeight * 0.025,
                              ),
                              SizedBox(
                                width: box.maxHeight * 0.03,
                              ),
                              Text(
                                'Account',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium
                                    ?.copyWith(
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ],
                            //),
                          ),
                          SizedBox(
                            height: box.maxHeight * 0.03,
                          ),
                          Row(
                            children: [
                              Icon(
                                FpbIcons.setting,
                                color: AppColors.accentColorW,
                                size: box.maxHeight * 0.025,
                              ),
                              SizedBox(
                                width: box.maxHeight * 0.03,
                              ),
                              Text(
                                'Settings',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium
                                    ?.copyWith(
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: box.maxHeight * 0.03,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.notifications,
                                color: AppColors.accentColorW,
                                size: box.maxHeight * 0.025,
                              ),
                              SizedBox(
                                width: box.maxHeight * 0.03,
                              ),
                              Text(
                                'Notifications',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium
                                    ?.copyWith(
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: box.maxHeight * 0.03,
                          ),
                          Row(
                            children: [
                              Icon(
                                FpbIcons.credit_card,
                                color: AppColors.accentColorW,
                                size: box.maxHeight * 0.025,
                              ),
                              SizedBox(
                                width: box.maxHeight * 0.03,
                              ),
                              Text(
                                'Payment Method',
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium
                                    ?.copyWith(
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: box.maxHeight * 0.015,
                  ),
                  // ignore: avoid_unnecessary_containers, use_decorated_box
                  Container(
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(box.maxHeight * 0.025),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: box.maxHeight * 0.03,
                        top: box.maxHeight * 0.03,
                        bottom: box.maxHeight * 0.03,
                      ),
                      child: Row(
                        children: [
                          Icon(
                            FpbIcons.logout,
                            color: AppColors.accentColorW,
                            size: box.maxHeight * 0.025,
                          ),
                          SizedBox(
                            width: box.maxHeight * 0.03,
                          ),
                          Text(
                            'Log Out',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium
                                ?.copyWith(
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: box.maxHeight * 0.1,
                  ),
                  Center(
                    child: Column(
                      children: [
                        Text(
                          'Version 10.2',
                          style: Theme.of(context)
                              .textTheme
                              .displayMedium
                              ?.copyWith(
                                color: const Color(0xffA9A9A9),
                                fontFamily: 'open sans',
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                        ),
                        SizedBox(
                          height: box.maxHeight * 0.001,
                        ),
                        Text(
                          'Terms and Conditions',
                          style: Theme.of(context)
                              .textTheme
                              .displayMedium
                              ?.copyWith(
                                color: const Color(0xffA9A9A9),
                                fontFamily: 'open sans',
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                        ),
                        Divider(
                          height: .1,
                          thickness: .4,
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
      ),
    );
  }
}
