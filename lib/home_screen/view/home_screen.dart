import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpb/assets/fpb_icons/fpb_icons_icons.dart';
import 'package:fpb/core/domain/user.dart';
import 'package:fpb/core/shared/presentation/theming/colors/colors.dart';
import 'package:fpb/injection.dart';
import 'package:fpb/l10n/l10n.dart';
import 'package:fpb/sign_in_with_google/application/google_auth_bloc/google_sign_in_bloc.dart';

class Home extends StatelessWidget {
  const Home({super.key, required this.user});
  static const String routeName = '/home';
  final User user;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<GoogleSignInBloc>(),
      child: HomeBody(
        user: user,
      ),
    );
  }
}

class HomeBody extends StatefulWidget {
  const HomeBody({super.key, required this.user});
  final User user;

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
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
    final l10n = context.l10n;
    return Scaffold(
      backgroundColor: AppColors.cardColorW,
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints box) {
          return Padding(
            padding: EdgeInsets.only(
              left: box.maxHeight * 0.02,
              right: box.maxHeight * 0.02,
              bottom: box.maxHeight * 0.02,
              top: box.maxHeight * 0.08,
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const SizedBox(
                            width: 16,
                          ),
                          if (widget.user.photo != null)
                            CircleAvatar(
                              backgroundImage:
                                  NetworkImage('${widget.user.photo}'),
                            )
                          else
                            const InkWell(
                              // onTap: (){
                              //   context.go('/')
                              // },
                              child: CircleAvatar(
                                radius: 25,
                                backgroundColor: Colors.transparent,
                                child: FlutterLogo(),
                              ),
                            ),
                          IconButton(
                            icon: const Icon(
                              Icons.logout,
                            ),
                            color: Colors.blueGrey,
                            onPressed: () => context
                                .read<GoogleSignInBloc>()
                                .add(GoogleSignInEvent.signOut()),
                          ),
                        ],
                      ),
                      Row(
                        //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            FpbIcons.eye_open,
                            size: 20,
                            color: AppColors.secondaryColorW,
                          ),
                          SizedBox(
                            width: box.maxWidth * 0.03,
                          ),
                          Container(
                            height: 42,
                            width: 42,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Image.asset(
                              'assets/fpb-assets/scan_icon.png',
                            ),
                          ),
                          SizedBox(
                            width: box.maxWidth * 0.03,
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
                  SizedBox(
                    height: box.maxWidth * 0.01,
                  ),
                  // ignore: sized_box_for_whitespace
                  Row(
                    children: [
                      const SizedBox(
                        width: 16,
                      ),
                      Text('Name: ${widget.user.name}'),
                    ],
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 16,
                      ),
                      Text('Email: ${widget.user.email}'),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  SizedBox(
                    height: box.maxHeight * 0.22,
                    width: box.maxWidth,
                    //color: Colors.white,
                    child: Card(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                          bottom: box.maxWidth * 0.025,
                          right: box.maxWidth * 0.025,
                          left: box.maxWidth * 0.025,
                          top: box.maxWidth * 0.025,
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  l10n.homeScreenCashBalance,
                                  style: Theme.of(context).textTheme.titleSmall,
                                ),
                                Text(
                                  l10n.homeScreenUnallocated,
                                  style: Theme.of(context).textTheme.titleSmall,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: box.maxHeight * 0.01,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '\$ 1,280.45',
                                  style: Theme.of(context).textTheme.titleLarge,
                                ),
                                const Icon(
                                  FpbIcons.eye_open,
                                  size: 18,
                                  color: Colors.black,
                                )
                              ],
                            ),
                            SizedBox(
                              height: box.maxHeight * 0.02,
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
                                        l10n.homeScreenAddMoney,
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
                                SizedBox(
                                  width: box.maxWidth * 0.08,
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
                                        l10n.homeScreenWithdrawFunds,
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
                  SizedBox(
                    height: box.maxHeight * 0.05,
                  ),
                  // ignore: avoid_unnecessary_containers
                  Container(
                    child: Stack(
                      children: [
                        Transform.translate(
                          offset: const Offset(15, -15),
                          child: Container(
                            height: box.maxHeight * 0.25,
                            width: box.maxWidth - 40,
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
                          height: box.maxHeight * 0.25,
                          width: box.maxWidth - 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color(0xffDF602F),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(
                              top: box.maxHeight * 0.025,
                              left: box.maxHeight * 0.025,
                              bottom: box.maxHeight * 0.025,
                              right: box.maxHeight * 0.025,
                            ),
                            child: Column(
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
                                          .titleLarge
                                          ?.copyWith(
                                            color: AppColors.cardColorW,
                                          ),
                                    ),
                                    Row(
                                      children: [
                                        Image.asset(
                                          'assets/fpb-assets/visa_v_icon.png',
                                          color: AppColors.cardColorW,
                                        ),
                                        Image.asset(
                                          'assets/fpb-assets/visa_i_icon.png',
                                          color: AppColors.cardColorW,
                                        ),
                                        Image.asset(
                                          'assets/fpb-assets/visa_s_icon.png',
                                          color: AppColors.cardColorW,
                                        ),
                                        Image.asset(
                                          'assets/fpb-assets/visa_a_icon.png',
                                          color: AppColors.cardColorW,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: box.maxHeight * 0.02,
                                ),
                                Text(
                                  l10n.homeScreenCardNumber,
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelMedium
                                      ?.copyWith(
                                        color: AppColors.cardColorW,
                                      ),
                                ),
                                SizedBox(
                                  height: box.maxHeight * 0.008,
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
                                              .titleMedium
                                              ?.copyWith(
                                                color: AppColors.cardColorW,
                                              ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: box.maxHeight * 0.015,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          l10n.homeScreenEmpty,
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelMedium
                                              ?.copyWith(
                                                color: AppColors.cardColorW,
                                              ),
                                        ),
                                        Text(
                                          'CCV',
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelMedium
                                              ?.copyWith(
                                                color: AppColors.cardColorW,
                                              ),
                                        ),
                                        const Text('        '),
                                        const Text('  '),
                                      ],
                                    ),
                                    SizedBox(
                                      height: box.maxHeight * 0.001,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          '04/2025',
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleSmall
                                              ?.copyWith(
                                                color: AppColors.cardColorW,
                                              ),
                                        ),
                                        Text(
                                          '123',
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleSmall
                                              ?.copyWith(
                                                color: AppColors.cardColorW,
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
                  SizedBox(
                    height: box.maxHeight * 0.025,
                  ),
                  Container(
                    height: box.maxHeight * 0.25,
                    width: box.maxWidth,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: box.maxHeight * 0.025,
                        top: box.maxHeight * 0.020,
                        bottom: box.maxHeight * 0.01,
                        right: box.maxHeight * 0.025,
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                l10n.homeScreenLatestActivitiesTitle,
                                style: Theme.of(context).textTheme.titleSmall,
                              ),
                              Container(
                                height: box.maxHeight * 0.03,
                                width: box.maxHeight * 0.03,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: const Color(0xffEAEAEA),
                                ),
                                child: const Center(child: Text('2')),
                              )
                            ],
                          ),
                          ActivityCard(
                            context: context,
                            box: box,
                          ),
                          const Divider(),
                          ActivityCard(
                            context: context,
                            box: box,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
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
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints box) {
          return SizedBox(
            height: box.maxHeight * 0.07,
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
                              height: box.maxHeight * 0.005,
                              width: box.maxHeight * 0.005,
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
                              height: box.maxHeight * 0.005,
                              width: box.maxHeight * 0.005,
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
                              height: box.maxHeight * 0.005,
                              width: box.maxHeight * 0.005,
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
                              height: box.maxHeight * 0.005,
                              width: box.maxHeight * 0.005,
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
                              height: box.maxHeight * 0.005,
                              width: box.maxHeight * 0.005,
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
          );
        },
      ),
    );
  }
}

class ActivityCard extends StatelessWidget {
  const ActivityCard({
    super.key,
    required this.context,
    required this.box,
  });

  final BuildContext context;
  final BoxConstraints box;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    // ignore: sized_box_for_whitespace
    return Container(
      height: box.maxHeight * 0.08,
      child: Padding(
        padding: EdgeInsets.only(
          top: box.maxHeight * 0.01,
          bottom: box.maxHeight * 0.005,
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
                  backgroundColor: Colors.transparent,
                  child: FlutterLogo(),
                ),
                SizedBox(
                  width: box.maxWidth * 0.01,
                ),
                Column(
                  //mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '@john_merry',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    SizedBox(
                      height: box.maxHeight * 0.009,
                    ),
                    Text(
                      l10n.homeScreenDateAndTime,
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  r'- $ 14.99',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                SizedBox(
                  height: box.maxHeight * 0.009,
                ),
                const Icon(
                  Icons.favorite_border_sharp,
                  color: Color(0xffC5C5C5),
                  size: 16,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
