import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpb/assets/fpb_icons/fpb_icons_icons.dart';
import 'package:fpb/core/shared/presentation/theming/colors/colors.dart';
import 'package:fpb/home/application/home_view_bloc/home_view_bloc.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints box) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 0;
                });
                context.read<HomeViewBloc>().add(HomeViewEvent.home());
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
                setState(() {
                  pageIndex = 1;
                });
                context.read<HomeViewBloc>().add(HomeViewEvent.savings());
              },
              icon: pageIndex == 1
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
                setState(() {
                  pageIndex = 2;
                });
                context.read<HomeViewBloc>().add(HomeViewEvent.quickCash());
              },
              icon: pageIndex == 2
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
                setState(() {
                  pageIndex = 3;
                });
                context.read<HomeViewBloc>().add(HomeViewEvent.budget());
              },
              icon: pageIndex == 3
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
                setState(() {
                  pageIndex = 4;
                });
                context.read<HomeViewBloc>().add(HomeViewEvent.search());
              },
              icon: pageIndex == 4
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
        );
      },
    );
  }
}
