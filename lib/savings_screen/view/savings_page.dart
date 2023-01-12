// ignore_for_file: omit_local_variable_types, prefer_final_locals

import 'package:flutter/material.dart';
import 'package:fpb/core/shared/presentation/theming/colors.dart';
import 'package:fpb/home_screen/home_screen.dart';

class SavingsPage extends StatefulWidget {
  const SavingsPage({super.key});

  @override
  State<SavingsPage> createState() => _SavingsPageState();
}

class _SavingsPageState extends State<SavingsPage> {
  int pageIndex = 1;

  void onChanged(int index) {
    setState(() {
      pageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    ThemeData textStyleTheme = Theme.of(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 25, right: 25, top: 30),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Savings',
                    style: textStyleTheme.textTheme.displaySmall?.copyWith(
                      color: AppColors.secondaryColorW,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Open sans',
                      fontSize: 32,
                    ),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        AppColors.secondaryColorW,
                      ),
                    ),
                    onPressed: () {},
                    child: Row(
                      children: [
                        const Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 12,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          'New Savings Account',
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall
                              ?.copyWith(
                                color: AppColors.cardColorW,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'open sans',
                                fontSize: 14,
                              ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: size.height * 0.3,
                width: size.width * .85,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'assets/fpb-assets/orange_clock_icon.png',
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Time Blocked Accounts',
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall
                                ?.copyWith(
                                  color: AppColors.secondaryColorW,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'open sans',
                                  fontSize: 14,
                                ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Column(
                        // ignore: avoid_redundant_argument_values
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'My Tesla Model X',
                                style: Theme.of(context)
                                    .textTheme
                                    .displaySmall
                                    ?.copyWith(
                                      color: AppColors.secondaryColorW,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'open sans',
                                      fontSize: 14,
                                    ),
                              ),
                              Text(
                                r'$ 1,280.45',
                                style: Theme.of(context)
                                    .textTheme
                                    .displaySmall
                                    ?.copyWith(
                                      color: AppColors.secondaryColorW,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'open sans',
                                      fontSize: 16,
                                    ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Blocked until December 1st 2022',
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall
                                ?.copyWith(
                                  color: const Color(0xffABABAB),
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'open sans',
                                  fontSize: 12,
                                ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Divider(
                        height: 0.5,
                        color: Color(0xffE7E7E7),
                        thickness: 0.5,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Column(
                        // ignore: avoid_redundant_argument_values
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'New Drone',
                                style: Theme.of(context)
                                    .textTheme
                                    .displaySmall
                                    ?.copyWith(
                                      color: AppColors.secondaryColorW,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'open sans',
                                      fontSize: 14,
                                    ),
                              ),
                              Text(
                                r'$ 79.45',
                                style: Theme.of(context)
                                    .textTheme
                                    .displaySmall
                                    ?.copyWith(
                                      color: AppColors.secondaryColorW,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'open sans',
                                      fontSize: 14,
                                    ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Blocked until November 1st 2022',
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall
                                ?.copyWith(
                                  color: const Color(0xffababab),
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'open sans',
                                  fontSize: 12,
                                ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: size.height * 0.3,
                width: size.width * .85,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset('assets/fpb-assets/Fill 2.png'),
                          const SizedBox(
                            width: 20,
                          ),
                          Text(
                            'Standard Accounts',
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall
                                ?.copyWith(
                                  color: AppColors.secondaryColorW,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'open sans',
                                  fontSize: 14,
                                ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Column(
                        // ignore: avoid_redundant_argument_values
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Mortgage',
                                style: Theme.of(context)
                                    .textTheme
                                    .displaySmall
                                    ?.copyWith(
                                      color: AppColors.secondaryColorW,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'open sans',
                                      fontSize: 14,
                                    ),
                              ),
                              Text(
                                r'$ 22,500.50',
                                style: Theme.of(context)
                                    .textTheme
                                    .displaySmall
                                    ?.copyWith(
                                      color: AppColors.secondaryColorW,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'open sans',
                                      fontSize: 16,
                                    ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Divider(
                        height: 0.5,
                        color: Color(0xffE7E7E7),
                        thickness: 0.5,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Column(
                        // ignore: avoid_redundant_argument_values
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'New Drone',
                                style: Theme.of(context)
                                    .textTheme
                                    .displaySmall
                                    ?.copyWith(
                                      color: AppColors.secondaryColorW,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'open sans',
                                      fontSize: 14,
                                    ),
                              ),
                              Text(
                                r'$ 79.45',
                                style: Theme.of(context)
                                    .textTheme
                                    .displaySmall
                                    ?.copyWith(
                                      color: AppColors.secondaryColorW,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'open sans',
                                      fontSize: 14,
                                    ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBar(
        pageIndex: pageIndex,
        onChanged: onChanged,
      ),
    );
  }
}
