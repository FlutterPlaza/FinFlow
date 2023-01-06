// ignore_for_file: omit_local_variable_types, prefer_final_locals

import 'package:flutter/material.dart';
import 'package:fpb/core/shared/presentation/theming/colors.dart';
import 'package:fpb/home_screen/view/home_screen.dart';
//import 'package:fpb/home_screen/home_screen.dart';

class LatestActivitiesPage extends StatefulWidget {
  const LatestActivitiesPage({super.key});

  @override
  State<LatestActivitiesPage> createState() => _LatestActivitiesPageState();
}

class _LatestActivitiesPageState extends State<LatestActivitiesPage> {
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              Icon(
                Icons.arrow_back,
                color: AppColors.secondaryColorW,
                size: 25,
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: size.height * .65,
                width: size.width * .9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 25, left: 16, right: 16),
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
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Open Sans',
                                  fontSize: 18,
                                ),
                          ),
                          Container(
                            height: 28,
                            width: 28,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.grey,
                            ),
                            child: const Center(child: Text('5')),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Expanded(
                        child: ListView.builder(
                          itemCount: 15,
                          itemBuilder: (context, index) {
                            // ignore: avoid_unnecessary_containers
                            return Column(
                              children: [
                                ActivityCard(context: context),
                                const Divider(
                                  color: Color(0xffE7E7E7),
                                  thickness: 0.5,
                                  height: 0.5,
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
