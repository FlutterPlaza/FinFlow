import 'package:flutter/material.dart';
import 'package:fpb/assets/fpb_icons/fpb_icons_icons.dart';
import 'package:fpb/core/shared/presentation/theming/colors.dart';

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
              padding: const EdgeInsets.only(top: 25, left: 25, right: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Profile',
                    style: Theme.of(context).textTheme.displayMedium?.copyWith(
                          fontFamily: 'open sans',
                          fontSize: 32,
                          fontWeight: FontWeight.w600,
                          color: const Color(0xff181818),
                        ),
                  ),
                  // const SizedBox(
                  //   height: 10,
                  // ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    // crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          FpbIcons.edit,
                          size: 18,
                          color: AppColors.secondaryColorW,
                        ),
                      ),
                    ],
                  ),
                  // const SizedBox(
                  //   height: 10,
                  // ),
                  Column(
                    children: [
                      Center(
                        child: CircleAvatar(
                          radius: 50,
                          child: image ?? const FlutterLogo(size: 50),
                          //Image.network('https://picsum.photos/200/300'),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'John Merry',
                        style:
                            Theme.of(context).textTheme.displaySmall?.copyWith(
                                  fontFamily: 'open sans',
                                  color: AppColors.secondaryColorW,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        '@john.merry',
                        style:
                            Theme.of(context).textTheme.displayMedium?.copyWith(
                                  color: const Color(0xff888888),
                                  fontFamily: 'open sans',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  // ignore: use_decorated_box
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 20, top: 20, bottom: 20),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(
                                FpbIcons.profile,
                                color: AppColors.accentColorW,
                                size: 15,
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Text(
                                'Account',
                                style: Theme.of(context)
                                    .textTheme
                                    .displayMedium
                                    ?.copyWith(
                                      color: AppColors.secondaryColorW,
                                      fontFamily: 'open sans',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ],
                            //),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Icon(
                                FpbIcons.setting,
                                color: AppColors.accentColorW,
                                size: 15,
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Text(
                                'Settings',
                                style: Theme.of(context)
                                    .textTheme
                                    .displayMedium
                                    ?.copyWith(
                                      color: AppColors.secondaryColorW,
                                      fontFamily: 'open sans',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.notifications,
                                color: AppColors.accentColorW,
                                size: 15,
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Text(
                                'Notifications',
                                style: Theme.of(context)
                                    .textTheme
                                    .displayMedium
                                    ?.copyWith(
                                      color: AppColors.secondaryColorW,
                                      fontFamily: 'open sans',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Icon(
                                FpbIcons.credit_card,
                                color: AppColors.accentColorW,
                                size: 15,
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Text(
                                'Payment Method',
                                style: Theme.of(context)
                                    .textTheme
                                    .displayMedium
                                    ?.copyWith(
                                      color: AppColors.secondaryColorW,
                                      fontFamily: 'open sans',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  // ignore: avoid_unnecessary_containers, use_decorated_box
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 20, top: 20, bottom: 20),
                      child: Row(
                        children: [
                          Icon(
                            FpbIcons.logout,
                            color: AppColors.accentColorW,
                            size: 15,
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Text(
                            'Log Out',
                            style: Theme.of(context)
                                .textTheme
                                .displayMedium
                                ?.copyWith(
                                  color: AppColors.secondaryColorW,
                                  fontFamily: 'open sans',
                                  fontSize: 14,
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
                        const SizedBox(
                          height: 5,
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
