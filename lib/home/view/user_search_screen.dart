import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpb/authentication_with_firebase/application/bloc/auth_bloc.dart';
import 'package:fpb/core/domain/user.dart';
import 'package:fpb/core/shared/helpers/value_injector.dart';
import 'package:fpb/home/view/widgets/custom_appbar.dart';
import 'package:fpb/home/view/widgets/row_header_icons.dart';
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
      return AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle(
          statusBarColor: Theme.of(context).colorScheme.surface,
          statusBarIconBrightness: Brightness.dark, // dark icon for iOS
          statusBarBrightness: Brightness.dark, // set dark icon for android
        ),
        child: SafeArea(
          child: GestureDetector(
            onTap: () {
              // close keyboard
              FocusScope.of(context).unfocus();
            },
            child: Scaffold(
              resizeToAvoidBottomInset: false,
              backgroundColor: Theme.of(context).colorScheme.surface,
              appBar: CustomAppBar(
                backgroundColor: Theme.of(context).colorScheme.surface,
                titleChildWidget: CircleAvatar(
                  backgroundImage: NetworkImage('${user.photo}'),
                ),
                actionChildWidget: [
                  RowHeaderIcons(),
                ],
              ),
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    UserSearchList(
                      box: box,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}
