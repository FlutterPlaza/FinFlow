import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpb/authentication_with_firebase/application/bloc/auth_bloc.dart';
import 'package:fpb/core/domain/user.dart';
import 'package:fpb/core/shared/helpers/value_injector.dart';
import 'package:fpb/home/view/widgets/navbar_header.dart';
import 'package:fpb/home/view/widgets/search_input.dart';

class UserSearch extends StatelessWidget {
  const UserSearch({super.key});

  @override
  Widget build(BuildContext context) {
    final user = ValueInjector.of<User>(context)?.value ?? User.empty;
    if (user == User.empty) {
      context.read<AuthBloc>()..add(AuthEvent.logoutRequest());
    }
    return LayoutBuilder(builder: (context, box) {
      return Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
              child: Column(
            children: [
              NavHeader(
                box: box,
              ),
              Container(),
              SearchInputWidget(
                box: box,
              ),
            ],
          )),
        ),
      );
    });
  }
}
