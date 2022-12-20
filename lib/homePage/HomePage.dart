import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fpb/assets/fpb_icons/fpb_icons_icons.dart';
import 'package:fpb/assets/fpb_svg.dart';
import 'package:fpb/core/shared/presentation/theming/colors.dart';
import 'package:fpb/sign_in/view/sign_in_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          SizedBox(
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
                    children: [
                      const Text(
                        'Cash Balance',
                      ),
                      const Text(
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
                        '\$ 1.280.45',
                        //  style: Theme.of(context).textTheme.displayMedium?.copyWith(
                        //   color: AppColors.secondaryColorW,
                        //           fontWeight: FontWeight.bold,
                        //           fontSize: size.width * 0.043,
                        //  ),
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
                          // style: ButtonStyle(
                          //   backgroundColor: MaterialStateProperty<Color>(Colors.grey)
                          // ),
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.add,
                                size: 5,
                                color: Colors.blue,
                              ),
                              const Text(
                                "Add money",
                                style: TextStyle(
                                  fontSize: 7,
                                ),
                              ),
                            ],
                          )),
                      const SizedBox(
                        width: 30,
                      ),
                      ElevatedButton(
                          // style: ButtonStyle(
                          //   backgroundColor: MaterialStateProperty<Color>(Colors.grey)
                          // ),
                          onPressed: () {},
                          child: Row(
                            children: [
                              Icon(
                                Icons.add,
                                size: 5,
                                color: Colors.blue,
                              ),
                              const Text(
                                "Withdraw Funds",
                                style: TextStyle(fontSize: 7),
                              ),
                            ],
                          )),
                    ],
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Stack(
            children: [
              Align(
                alignment: Alignment(1.0, .3),
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
                alignment: Alignment(.2, .2),
                child: Container(
                  height: size.height * 0.3,
                  width: size.width * 0.5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColors.accentColorW,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
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
                                  .displaySmall
                                  ?.copyWith(
                                    color: AppColors.secondaryColorW,
                                    fontWeight: FontWeight.bold,
                                    fontSize: size.width * 0.043,
                                  ),
                            ),
                            Text(
                              "VISA",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text("Card Number"),
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
                            Column(children: [
                              fourDots(),
                              const SizedBox(
                                height: 60,
                              )
                            ]),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text("1234"),
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
      SizedBox(width: 2),
      Container(
        height: 10,
        width: 10,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: AppColors.cardColorW,
        ),
      ),
      SizedBox(width: 2),
      Container(
        height: 10,
        width: 10,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: AppColors.cardColorW,
        ),
      ),
      SizedBox(width: 2),
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
