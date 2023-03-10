import 'package:flutter/material.dart';
import 'package:fpb/core/presentation/widget/vertical_spacing_widget.dart';
import 'package:fpb/home/view/widgets/user_radio_select.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpb/authentication_with_firebase/application/bloc/auth_bloc.dart';
import 'package:fpb/core/domain/user.dart';
import 'package:fpb/core/shared/helpers/value_injector.dart';

class UserSearchList extends StatelessWidget {
  const UserSearchList({super.key, required this.box});

  final BoxConstraints box;

  @override
  Widget build(BuildContext context) {
    final user = ValueInjector.of<User>(context)?.value ?? User.empty;
    if (user == User.empty) {
      context.read<AuthBloc>()..add(AuthEvent.logoutRequest());
    }
    return Container(
      width: box.maxWidth,
      padding: EdgeInsets.symmetric(
        horizontal: box.maxWidth * 0.025,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Recently sent',
            style: TextStyle(
              fontSize: box.maxHeight * 0.025,
            ),
          ),
          VerticalSpacingWidget(
            box: box,
            height: box.maxHeight * 0.01,
          ),
          // display user with recent sent transactions
          Container(
            width: box.maxWidth,
            height: box.maxHeight * 0.2,
            padding: EdgeInsets.symmetric(
              horizontal: box.maxWidth * 0.01,
            ),
            child: SingleChildScrollView(
              child: Column(
                // list will be coming from an API - this is just for demo UI
                children: [
                  UserRadioSelect(
                    box: box,
                    fullName: 'Tambe desmond',
                    username: 'dezzy',
                    userPhoto: '${user.photo}',
                    onChanged: (value) {
                      print(value);
                    },
                  ),
                  UserRadioSelect(
                    box: box,
                    fullName: 'Rudy Mendy',
                    username: 'rudy',
                    userPhoto: '${user.photo}',
                    onChanged: (value) {
                      print(value);
                    },
                  ),
                  UserRadioSelect(
                    box: box,
                    fullName: 'Gaelle Tiku',
                    username: 'gaelle',
                    userPhoto: '${user.photo}',
                    onChanged: (value) {
                      print(value);
                    },
                  ),
                ],
              ),
            ),
          ),

          VerticalSpacingWidget(
            box: box,
            height: box.maxHeight * 0.015,
          ),
          Text(
            'Contacts',
            style: TextStyle(
              fontSize: box.maxHeight * 0.025,
            ),
          ),
          VerticalSpacingWidget(
            box: box,
            height: box.maxHeight * 0.01,
          ),
          // display user with recent sent transactions
          Container(
            width: box.maxWidth,
            height: box.maxHeight * 0.5,
            padding: EdgeInsets.symmetric(
              horizontal: box.maxWidth * 0.01,
            ),
            child: SingleChildScrollView(
              child: Column(
                // list will be coming from an API - this is just for demo UI
                children: [
                  UserRadioSelect(
                    box: box,
                    fullName: 'Loic Fonkam',
                    username: 'loic',
                    userPhoto: '',
                    onChanged: (value) {
                      print(value);
                    },
                  ),
                  UserRadioSelect(
                    box: box,
                    fullName: 'Tambe desmond',
                    username: 'dezzy',
                    userPhoto: '${user.photo}',
                    onChanged: (value) {
                      print(value);
                    },
                  ),
                  UserRadioSelect(
                    box: box,
                    fullName: 'Amanda',
                    username: 'amanda',
                    userPhoto: '',
                    onChanged: (value) {
                      print(value);
                    },
                  ),
                  UserRadioSelect(
                    box: box,
                    fullName: 'Desking La',
                    username: 'desking',
                    userPhoto: '',
                    onChanged: (value) {
                      print(value);
                    },
                  ),
                  UserRadioSelect(
                    box: box,
                    fullName: 'Desking La',
                    username: 'desking',
                    userPhoto: '',
                    onChanged: (value) {
                      print(value);
                    },
                  ),
                  UserRadioSelect(
                    box: box,
                    fullName: 'Desking La',
                    username: 'desking',
                    userPhoto: '',
                    onChanged: (value) {
                      print(value);
                    },
                  ),
                  UserRadioSelect(
                    box: box,
                    fullName: 'Desking La',
                    username: 'desking',
                    userPhoto: '',
                    onChanged: (value) {
                      print(value);
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
