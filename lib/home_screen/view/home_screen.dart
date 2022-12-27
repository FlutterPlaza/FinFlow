import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fpb/assets/fpb_icons/fpb_icons_icons.dart';
import 'package:fpb/assets/fpb_svg.dart';
import 'package:fpb/core/shared/helpers/relative_sizing.dart';
import 'package:fpb/core/shared/presentation/theming/colors.dart';
import 'package:fpb/sign_in/view/sign_in_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int pageIndex = 0;
  //PageController _pageController = PageController();
  final screens = [];

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

  Widget activityCard() {
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
                      "@john_merry",
                      style: Theme.of(context).textTheme.displaySmall?.copyWith(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            fontFamily: 'SF Pro Display',
                          ),
                    ),
                    Text(
                      "August 3, 3:45 pm",
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
                  "- \$ 14.99",
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

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
                              style: Theme.of(context)
                                  .textTheme
                                  .displayMedium
                                  ?.copyWith(
                                      color: AppColors.secondaryColorW,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 28,
                                      fontFamily: 'SF pro Displa'),
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
                                //padding: MaterialStateProperty.all(EdgeInsets.all(50)),
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
              Container(
                child: Stack(
                  children: [
                    Transform.translate(
                      offset: const Offset(15, -15),
                      child: Expanded(
                        child: Container(
                          // constraints: BoxConstraints(minWidth: 0, minHeight: 0),
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
                    ),
                    Transform.translate(
                      offset: const Offset(5, 5),
                      child: Container(
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
                            // ignore: avoid_redundant_argument_values
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Empty",
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
                                        "CCV",
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
                                      const Text("        "),
                                      const Text(" "),
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
                                        "04/2025",
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
                                        "123",
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
                                      const Text("             "),
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
                      activityCard(),
                      const Divider(
                            height: 0.5,
                            color: Color(0xffE7E7E7),
                            thickness: 0.5,
                          ),
                      activityCard(),
                    ],
                  ),
                ),
              ),
              // activityCard(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: bottomnavbarview(context),
    );
  }

  Padding bottomnavbarview(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        height: 46,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 0;
                });
              },
              icon: pageIndex == 0
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
                setState(() {
                  pageIndex = 1;
                });
              },
              icon: pageIndex == 1
                  ? const Icon(
                      FpbIcons.wallet_selected,
                      color: Colors.black,
                      size: 25,
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
                setState(() {
                  pageIndex = 2;
                });
              },
              icon: pageIndex == 2
                  ? const Icon(
                      FpbIcons.dollar_icon,
                      color: Colors.black,
                      size: 25,
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
                setState(() {
                  pageIndex = 3;
                });
              },
              icon: pageIndex == 3
                  ? const Icon(
                      FpbIcons.graph_selected,
                      color: Colors.black,
                      size: 25,
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
                setState(() {
                  pageIndex = 3;
                });
              },
              icon: pageIndex == 3
                  ? const Icon(
                      FpbIcons.search_selected,
                      color: Colors.black,
                      size: 25,
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

// Widget fourDots() {
//   return Row(
//     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//     children: [
//       Container(
//         height: 10,
//         width: 10,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(20),
//           color: AppColors.cardColorW,
//         ),
//       ),
//       SizedBox(width: 2),
//       Container(
//         height: 10,
//         width: 10,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(20),
//           color: AppColors.cardColorW,
//         ),
//       ),
//       SizedBox(width: 2),
//       Container(
//         height: 10,
//         width: 10,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(20),
//           color: AppColors.cardColorW,
//         ),
//       ),
//       SizedBox(width: 2),
//       Container(
//         height: 10,
//         width: 10,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(20),
//           color: AppColors.cardColorW,
//         ),
//       )
//     ],
//   );
// }
