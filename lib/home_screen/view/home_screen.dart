import 'package:flutter/material.dart';
import 'package:fpb/assets/fpb_icons/fpb_icons_icons.dart';
import 'package:fpb/core/shared/helpers/relative_sizing.dart';
import 'package:fpb/core/shared/presentation/theming/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Row(),
          const SizedBox(
            height: 20,
          ),
          //
          Card(
            elevation: 1,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Cash Balance',
                      ),
                      Text(
                        'Unallocated',
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        r'$ 1.280.45',
                      ),
                      Icon(
                        FpbIcons.eye_open,
                        size: 17,
                        color: Colors.black,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            Icon(
                              Icons.add,
                              size: 5,
                              color: Colors.blue,
                            ),
                            Text(
                              'Add money',
                              style: TextStyle(
                                fontSize: 7,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Row(
                          children: const [
                            Icon(
                              Icons.add,
                              size: 5,
                              color: Colors.blue,
                            ),
                            Text(
                              'Withdraw Funds',
                              style: TextStyle(fontSize: 7),
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
          SizedBox(height: 25.of(context)),
          Stack(
            children: [
              Align(
                alignment: const Alignment(1, .3),
                child: Container(
                  height: size.height * 0.3,
                  width: size.width * 0.5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black,
                  ),
                ),
              ),
              Align(
                alignment: const Alignment(.2, .2),
                child: Container(
                  height: size.height * 0.3,
                  width: size.width * 0.5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColors.accentColorW,
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(20.of(context)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              r'$ 320.50',
                              style: Theme.of(context)
                                  .textTheme
                                  .displaySmall
                                  ?.copyWith(
                                    color: AppColors.secondaryColorW,
                                    fontWeight: FontWeight.bold,
                                    fontSize: size.width * 0.043,
                                  ),
                            ),
                            const Text(
                              'VISA',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text('Card Number'),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                fourDots(),
                                const SizedBox(height: 20),
                                const Text('Empty'),
                                const SizedBox(
                                  height: 3,
                                ),
                                const Text('04/2025')
                              ],
                            ),
                            Column(
                              children: [
                                fourDots(),
                                const SizedBox(height: 20),
                                const Text('ccv'),
                                const SizedBox(
                                  height: 3,
                                ),
                                const Text('123')
                              ],
                            ),
                            Column(
                              children: [
                                fourDots(),
                                const SizedBox(
                                  height: 60,
                                )
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text('1234'),
                                const SizedBox(
                                  height: 35,
                                ),
                                Icon(
                                  FpbIcons.eye_open,
                                  color: AppColors.primaryColorW,
                                  size: 20,
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
          )
        ],
      ),
    );
  }
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
