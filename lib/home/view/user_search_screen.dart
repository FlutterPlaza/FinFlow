import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpb/authentication_with_firebase/application/bloc/auth_bloc.dart';
import 'package:fpb/core/domain/user.dart';
import 'package:fpb/core/shared/helpers/value_injector.dart';
import 'package:fpb/home/view/widgets/navbar_header.dart';
import 'package:fpb/home/view/widgets/search_input.dart';
import 'package:fpb/home/view/widgets/user_search_list.dart';

class UserSearchScreen extends StatelessWidget {
  const UserSearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final user = ValueInjector.of<User>(context)?.value ?? User.empty;
    if (user == User.empty) {
      context.read<AuthBloc>()..add(AuthEvent.logoutRequest());
    }
    return LayoutBuilder(builder: (context, box) {
      return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: SingleChildScrollView(
              child: Column(
            children: [
              NavHeader(
                box: box,
              ),
              SearchInputWidget(
                box: box,
              ),
              UserSearchList(
                box: box,
              ),
            ],
          )),
        ),
      );
    });
  }
}
