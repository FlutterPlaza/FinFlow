import 'package:flutter/material.dart';
import 'package:fpb/home/view/widgets/custom_appbar.dart';
import 'package:fpb/authentication_with_firebase/application/bloc/auth_bloc.dart';
import 'package:fpb/core/domain/user.dart';
import 'package:fpb/core/shared/helpers/value_injector.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpb/home/view/widgets/row_header_icons.dart';

class BudgetScreen extends StatelessWidget {
  const BudgetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final user = ValueInjector.of<User>(context)?.value ?? User.empty;
    if (user == User.empty) {
      context.read<AuthBloc>()..add(AuthEvent.logoutRequest());
    }
    return LayoutBuilder(
      builder: (context, box) {
        return SafeArea(
          child: Scaffold(
            appBar: CustomAppBar(
              titleChildWidget: CircleAvatar(
                backgroundImage: NetworkImage('${user.photo}'),
              ),
              actionChildWidget: [
                RowHeaderIcons(),
              ],
            ),
            body: Container(
              child: Center(
                child: Text('Budget'),
              ),
            ),
          ),
        );
      },
    );
  }
}
