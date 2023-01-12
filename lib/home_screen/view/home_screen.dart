// ignore_for_file: avoid_redundant_argument_values,,,, use_raw_strings,
// must_be_immutable
// omit_local_variable_types
//avoid_unnecessary_containers
// omit_local_variable_types,
// use_raw_strings
// omit_local_variable_types, sized_box_for_whitespace
//omit_local_variable_types, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:fpb/assets/fpb_icons/fpb_icons_icons.dart';
import 'package:fpb/core/shared/presentation/theming/colors.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int pageIndex = 0;
  //PageController _pageController = PageController();
  final screens = [];

  void onChanged(int index) {
    setState(() {
      pageIndex = index;
    });
  }

  Widget fourDots() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 10,
          width: 10,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: AppColors.cardColorW,
          ),
        ),
        const SizedBox(width: 2),
        Container(
          height: 10,
          width: 10,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: AppColors.cardColorW,
          ),
        ),
        const SizedBox(width: 2),
        Container(
          height: 10,
          width: 10,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: AppColors.cardColorW,
          ),
        ),
        const SizedBox(width: 2),
        Container(
          height: 10,
          width: 10,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: AppColors.cardColorW,
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    // ignore: omit_local_variable_types
    final Size size = MediaQuery.of(context).size;

    // ignore: omit_local_variable_types
    final ThemeData textStyleTheme = Theme.of(context);

    return Scaffold(
      backgroundColor: AppColors.cardColorW,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CircleAvatar(
                    radius: 25,
                    backgroundImage:
                        NetworkImage('https://picsum.photos/200/300'),
                    backgroundColor: Colors.transparent,
                  ),
                  Row(
                    //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        FpbIcons.eye_open,
                        size: 20,
                        color: AppColors.secondaryColorW,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 42,
                        width: 42,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Image.asset('assets/fpb-assets/scan_icon.png'),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Icon(
                        FpbIcons.notification,
                        size: 20,
                        color: AppColors.secondaryColorW,
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              // ignore: sized_box_for_whitespace
              Container(
                height: size.height * .20,
                width: size.width,
                //color: Colors.white,
                child: Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      bottom: 19,
                      right: 16,
                      left: 16,
                      top: 19,
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              'Cash Balance',
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'SF Pro Display',
                              ),
                            ),
                            Text(
                              'Unallocated',
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'SF Pro Display',
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '\$ 1.280.45',
                              style: textStyleTheme.textTheme.displaySmall
                                  ?.copyWith(
                                color: AppColors.secondaryColorW,
                                fontWeight: FontWeight.w600,
                                fontSize: 28,
                                fontFamily: 'SF pro Displa',
                              ),
                            ),
                            const Icon(
                              FpbIcons.eye_open,
                              size: 18,
                              color: Colors.black,
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                  const Color(0xffF2F8FD),
                                ),
                                textStyle: MaterialStateProperty.all(
                                  const TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'open sans',
                                    color: Color(0xff3AA0E7),
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                              onPressed: () {},
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  const Icon(
                                    Icons.add,
                                    size: 10,
                                    color: Color(0xff3AA0E7),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Add money',
                                    style: Theme.of(context)
                                        .textTheme
                                        .displayMedium
                                        ?.copyWith(
                                          color: AppColors.primaryColorW,
                                          //fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                          fontFamily: 'open sans',
                                        ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 30,
                            ),
                            ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                  const Color(0xffF2F8FD),
                                ),
                                textStyle: MaterialStateProperty.all(
                                  const TextStyle(
                                    fontSize: 12,
                                    color: Color(0xff3AA0E7),
                                    fontFamily: 'open sans',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              onPressed: () {},
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.arrow_drop_down_circle_outlined,
                                    size: 10,
                                    color: Colors.blue,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Withdraw Funds',
                                    style: Theme.of(context)
                                        .textTheme
                                        .displaySmall
                                        ?.copyWith(
                                          color: AppColors.primaryColorW,
                                          //fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              // ignore: avoid_unnecessary_containers
              Container(
                child: Stack(
                  children: [
                    Transform.translate(
                      offset: const Offset(15, -15),
                      child: Container(
                        height: size.height * 0.25,
                        width: size.width * 0.90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color.fromARGB(
                            27,
                            223,
                            96,
                            47,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: size.height * 0.25,
                      width: size.width * 0.90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color(0xffDF602F),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 21,
                          left: 32,
                          bottom: 13,
                          right: 32,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '\$ 320.50',
                                  style: Theme.of(context)
                                      .textTheme
                                      .displayMedium
                                      ?.copyWith(
                                        fontFamily: 'SF Pro Displa',
                                        color: AppColors.cardColorW,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 28,
                                      ),
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/fpb-assets/Vector.png',
                                      color: AppColors.cardColorW,
                                    ),
                                    Image.asset(
                                      'assets/fpb-assets/Vector (1).png',
                                      color: AppColors.cardColorW,
                                    ),
                                    Image.asset(
                                      'assets/fpb-assets/Vector (2).png',
                                      color: AppColors.cardColorW,
                                    ),
                                    Image.asset(
                                      'assets/fpb-assets/Vector (3).png',
                                      color: AppColors.cardColorW,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            Text(
                              'Card Number',
                              style: Theme.of(context)
                                  .textTheme
                                  .displaySmall
                                  ?.copyWith(
                                    color: AppColors.cardColorW,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'open sans',
                                    fontSize: 12,
                                  ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    fourDots(),
                                    fourDots(),
                                    fourDots(),
                                    Text(
                                      '1234',
                                      style: Theme.of(context)
                                          .textTheme
                                          .displaySmall
                                          ?.copyWith(
                                            color: AppColors.cardColorW,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'open sans',
                                            fontSize: 18,
                                          ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Empty',
                                      style: Theme.of(context)
                                          .textTheme
                                          .displaySmall
                                          ?.copyWith(
                                            color: AppColors.cardColorW,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'open sans',
                                            fontSize: 12,
                                          ),
                                    ),
                                    Text(
                                      'CCV',
                                      style: Theme.of(context)
                                          .textTheme
                                          .displaySmall
                                          ?.copyWith(
                                            color: AppColors.cardColorW,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'open sans',
                                            fontSize: 12,
                                          ),
                                    ),
                                    const Text('        '),
                                    const Text('  '),
                                  ],
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '04/2025',
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
                                    Text(
                                      '123',
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
                                    const Text('             '),
                                    Icon(
                                      FpbIcons.eye_open,
                                      color: AppColors.cardColorW,
                                      size: 18,
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: size.height * .23,
                width: size.width - 15,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 14,
                    top: 19,
                    bottom: 19,
                    right: 16,
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Latest Activity',
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall
                                ?.copyWith(
                                  color: AppColors.secondaryColorW,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'SF Pro Display',
                                  fontSize: 14,
                                ),
                          ),
                          Container(
                            height: 28,
                            width: 28,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.grey,
                            ),
                            child: const Center(child: Text('2')),
                          )
                        ],
                      ),
                      ActivityCard(
                        context: context,
                      ),
                      const Divider(
                        height: 0.5,
                        color: Color(0xffE7E7E7),
                        thickness: 0.5,
                      ),
                      ActivityCard(
                        context: context,
                      ),
                    ],
                  ),
                ),
              ),
              // activityCard(),
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

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key, required this.pageIndex, this.onChanged});
  final int pageIndex;

  final void Function(int)? onChanged;

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  //int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      // ignore: sized_box_for_whitespace
      child: Container(
        height: 46,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              enableFeedback: false,
              onPressed: () {
                widget.onChanged!(0);
              },
              icon: widget.pageIndex == 0
                  ? Column(
                      children: [
                        const Icon(
                          FpbIcons.home_selected,
                          color: Colors.black,
                          size: 25,
                        ),
                        Container(
                          height: 5,
                          width: 5,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: AppColors.secondaryColorW,
                          ),
                        )
                      ],
                    )
                  : const Icon(
                      FpbIcons.home,
                      color: Colors.grey,
                      size: 25,
                    ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                widget.onChanged!(1);
              },
              icon: widget.pageIndex == 1
                  ? Column(
                      children: [
                        const Icon(
                          FpbIcons.wallet_selected,
                          color: Colors.black,
                          size: 25,
                        ),
                        Container(
                          height: 5,
                          width: 5,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: AppColors.secondaryColorW,
                          ),
                        )
                      ],
                    )
                  : const Icon(
                      FpbIcons.wallet,
                      color: Colors.grey,
                      size: 25,
                    ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                widget.onChanged!(2);
              },
              icon: widget.pageIndex == 2
                  ? Column(
                      children: [
                        const Icon(
                          FpbIcons.dollar_icon,
                          color: Colors.black,
                          size: 25,
                        ),
                        Container(
                          height: 5,
                          width: 5,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: AppColors.secondaryColorW,
                          ),
                        )
                      ],
                    )
                  : const Icon(
                      FpbIcons.dollar_icon,
                      color: Colors.grey,
                      size: 25,
                    ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                widget.onChanged!(3);
              },
              icon: widget.pageIndex == 3
                  ? Column(
                      children: [
                        const Icon(
                          FpbIcons.graph_selected,
                          color: Colors.black,
                          size: 25,
                        ),
                        Container(
                          height: 5,
                          width: 5,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: AppColors.secondaryColorW,
                          ),
                        )
                      ],
                    )
                  : const Icon(
                      FpbIcons.graph,
                      color: Colors.grey,
                      size: 25,
                    ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                widget.onChanged!(4);
              },
              icon: widget.pageIndex == 4
                  ? Column(
                      children: [
                        const Icon(
                          FpbIcons.search_selected,
                          color: Colors.black,
                          size: 25,
                        ),
                        Container(
                          height: 5,
                          width: 5,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: AppColors.secondaryColorW,
                          ),
                        )
                      ],
                    )
                  : const Icon(
                      FpbIcons.search,
                      color: Colors.grey,
                      size: 25,
                    ),
            ),
          ],
        ),
      ),
    );
  }
}

class ActivityCard extends StatelessWidget {
  const ActivityCard({
    super.key,
    required this.context,
    // required this.context,
    // required this.context,
  });

  final BuildContext context;
  // final BuildContext context;
  // final BuildContext context;

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
      height: 55,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 10,
          bottom: 5,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const CircleAvatar(
                  radius: 45,
                  backgroundImage:
                      NetworkImage('https://picsum.photos/200/300'),
                  backgroundColor: Colors.transparent,
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  //mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '@john_merry',
                      style: Theme.of(context).textTheme.displaySmall?.copyWith(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            fontFamily: 'SF Pro Display',
                          ),
                    ),
                    Text(
                      'August 3, 3:45 pm',
                      style: Theme.of(context).textTheme.displaySmall?.copyWith(
                            color: const Color(0xffABABAB),
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            fontFamily: 'SF Pro Display',
                          ),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  r'- $ 14.99',
                  style: Theme.of(context).textTheme.displaySmall?.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        fontFamily: 'SF Pro Display',
                      ),
                ),
                const Icon(
                  Icons.favorite_border_sharp,
                  color: Color(0xffC5C5C5),
                  size: 16,
                )
              ],
            )

            // SvgPicture.asset(
            //   SvgNames.authBackground )
          ],
        ),
      ),
    );
  }
}
