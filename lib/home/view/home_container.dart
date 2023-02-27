import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpb/home/application/home_view_bloc/home_view_bloc.dart';
import 'package:fpb/home/view/dashboard.dart';
import 'package:fpb/home/view/user_seacrh.dart';
import 'package:fpb/savings/view/savings_page.dart';

class HomeContainer extends StatelessWidget {
  const HomeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeViewBloc, HomeViewState>(
      builder: (context, state) {
        return state.map(
          home: (_) => DashBoard(), // -> LatestActivitiesPage(),
          savings: (_) => SavingsPage(),
          quickCash: (_) => Container(child: Center(child: Text('budget'))),
          budget: (_) => Container(child: Center(child: Text('budget'))),
          search: (_) => UserSearch(),
        );
      },
    );
  }
}
