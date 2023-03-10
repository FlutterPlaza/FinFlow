import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpb/assets/fpb_icons/fpb_icons_icons.dart';
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
    final theme = Theme.of(context);
    final colors = theme.colorScheme;
    final readBloc = context.read<HomeViewBloc>();
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints box) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              enableFeedback: false,
              padding: EdgeInsets.zero,
              onPressed: () {
                setState(() {
                  pageIndex = 0;
                });
                readBloc.add(HomeViewEvent.home());
              },
              icon: pageIndex == 0
                  ? Column(
                      children: [
                        Icon(
                          FpbIcons.home_selected,
                          color: colors.secondary,
                          // size: ,
                        ),
                        Container(
                          height: box.maxHeight * 0.05,
                          width: box.maxHeight * 0.05,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: colors.secondary,
                          ),
                        )
                      ],
                    )
                  : Icon(
                      FpbIcons.home,
                    ),
            ),
            IconButton(
              enableFeedback: false,
              padding: EdgeInsets.zero,
              onPressed: () {
                setState(() {
                  pageIndex = 1;
                });
                readBloc.add(HomeViewEvent.savings());
              },
              icon: pageIndex == 1
                  ? Column(
                      children: [
                        Icon(
                          FpbIcons.wallet_selected,
                          color: colors.secondary,
                        ),
                        Container(
                          height: box.maxHeight * 0.05,
                          width: box.maxHeight * 0.05,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: colors.secondary,
                          ),
                        )
                      ],
                    )
                  : Icon(
                      FpbIcons.wallet,
                    ),
            ),
            IconButton(
              enableFeedback: false,
              padding: EdgeInsets.zero,
              onPressed: () {
                setState(() {
                  pageIndex = 2;
                });
                readBloc.add(HomeViewEvent.quickCash());
              },
              icon: pageIndex == 2
                  ? Column(
                      children: [
                        Icon(
                          FpbIcons.dollar_icon,
                          color: colors.secondary,
                        ),
                        Container(
                          height: box.maxHeight * 0.05,
                          width: box.maxHeight * 0.05,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: colors.secondary,
                          ),
                        )
                      ],
                    )
                  : Icon(
                      FpbIcons.dollar_icon,
                    ),
            ),
            IconButton(
              enableFeedback: false,
              padding: EdgeInsets.zero,
              onPressed: () {
                setState(() {
                  pageIndex = 3;
                });
                readBloc.add(HomeViewEvent.budget());
              },
              icon: pageIndex == 3
                  ? Column(
                      children: [
                        Icon(
                          FpbIcons.graph_selected,
                          color: colors.secondary,
                        ),
                        Container(
                          height: box.maxHeight * 0.05,
                          width: box.maxHeight * 0.05,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: colors.secondary,
                          ),
                        )
                      ],
                    )
                  : Icon(
                      FpbIcons.graph,
                      //
                    ),
            ),
            IconButton(
              enableFeedback: false,
              padding: EdgeInsets.zero,
              onPressed: () {
                setState(() {
                  pageIndex = 4;
                });
                readBloc.add(HomeViewEvent.search());
              },
              icon: pageIndex == 4
                  ? Column(
                      children: [
                        const Icon(
                          FpbIcons.search_selected,
                          color: Colors.black,
                        ),
                        Container(
                          height: box.maxHeight * 0.05,
                          width: box.maxHeight * 0.05,
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(box.maxWidth * 0.005),
                            color: colors.secondary,
                          ),
                        )
                      ],
                    )
                  : Icon(
                      FpbIcons.search,
                    ),
            ),
          ],
        );
      },
    );
  }
}
