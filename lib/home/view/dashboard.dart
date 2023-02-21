import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpb/assets/fpb_icons/fpb_icons_icons.dart';
import 'package:fpb/authentication_with_firebase/application/bloc/auth_bloc.dart';
import 'package:fpb/authentication_with_google/application/google_auth_bloc/google_sign_in_bloc.dart';
import 'package:fpb/core/domain/user.dart';
import 'package:fpb/core/shared/helpers/value_injector.dart';
import 'package:fpb/home/view/widgets/activity_card.dart';
import 'package:fpb/home/view/widgets/four_dot.dart';
import 'package:fpb/l10n/l10n.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final user = ValueInjector.of<User>(context)?.value ?? User.empty;
    if (user == User.empty) {
      context.read<AuthBloc>()..add(AuthEvent.logoutRequest());
    }
    return LayoutBuilder(builder: (context, box) {
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
                      CircleAvatar(
                        backgroundImage: NetworkImage('${user.photo}'),
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
                        // color: _AppColors.secondaryColorW,
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
                        // color: _AppColors.secondaryColorW,
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
                  Text('Name: ${user.name}'),
                ],
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 16,
                  ),
                  Text('Email: ${user.email}'),
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
                                          // color: _AppColors.primaryColorW,
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
                                          // color: _AppColors.primaryColorW,
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '\$ 320.50',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleLarge
                                      ?.copyWith(
                                        // color: _AppColors.onSurfaceW,
                                      ),
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/fpb-assets/visa_v_icon.png',
                                      // color: _AppColors.onSurfaceW,
                                    ),
                                    Image.asset(
                                      'assets/fpb-assets/visa_i_icon.png',
                                      // color: _AppColors.onSurfaceW,
                                    ),
                                    Image.asset(
                                      'assets/fpb-assets/visa_s_icon.png',
                                      // color: _AppColors.onSurfaceW,
                                    ),
                                    Image.asset(
                                      'assets/fpb-assets/visa_a_icon.png',
                                      // color: _AppColors.onSurfaceW,
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
                                    // color: _AppColors.onSurfaceW,
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
                                    FourDots(),
                                    FourDots(),
                                    FourDots(),
                                    Text(
                                      '1234',
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium
                                          ?.copyWith(
                                            // color: _AppColors.onSurfaceW,
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      l10n.homeScreenEmpty,
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelMedium
                                          ?.copyWith(
                                            // color: _AppColors.onSurfaceW,
                                          ),
                                    ),
                                    Text(
                                      'CCV',
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelMedium
                                          ?.copyWith(
                                            // color: _AppColors.onSurfaceW,
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
                                            // color: _AppColors.onSurfaceW,
                                          ),
                                    ),
                                    Text(
                                      '123',
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleSmall
                                          ?.copyWith(
                                            // color: _AppColors.onSurfaceW,
                                          ),
                                    ),
                                    const Text('             '),
                                    Icon(
                                      FpbIcons.eye_open,
                                      // color: _AppColors.onSurfaceW,
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
    });
  }
}
