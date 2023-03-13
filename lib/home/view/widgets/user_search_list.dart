import 'package:flutter/material.dart';
import 'package:fpb/core/presentation/widget/vertical_spacing_widget.dart';
import 'package:fpb/home/view/widgets/search_input.dart';
import 'package:fpb/core/presentation/widget/selected_user_item.dart';
import 'package:fpb/home/view/widgets/user_check_select.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpb/authentication_with_firebase/application/bloc/auth_bloc.dart';
import 'package:fpb/core/domain/user.dart';
import 'package:fpb/core/shared/helpers/value_injector.dart';

class UserSearchList extends StatefulWidget {
  const UserSearchList({super.key, required this.box});

  final BoxConstraints box;

  @override
  State<UserSearchList> createState() => _UserSearchListState();
}

class _UserSearchListState extends State<UserSearchList> {
  // list users
  List<User> users = [
    User(
      id: '1',
      isNewUser: false,
      photo:
          'https://expertphotography.b-cdn.net/wp-content/uploads/2020/08/profile-photos-4.jpg',
      providerId: '123',
      name: 'Marry smith',
      email: 'mary@smith.com',
      phoneNumber: '15778783',
    ),
    User(
      id: '2',
      isNewUser: false,
      photo:
          'https://marketplace.canva.com/EAFEits4-uw/1/0/1600w/canva-boy-cartoon-gamer-animated-twitch-profile-photo-oEqs2yqaL8s.jpg',
      providerId: '123456',
      name: 'Terry Scotch',
      email: 'mary@smith.com',
      phoneNumber: '177778783',
    ),
    User(
      id: '3',
      isNewUser: false,
      photo:
          'https://media.istockphoto.com/id/1381221247/photo/beautiful-afro-girl-with-curly-hairstyle.jpg?b=1&s=170667a&w=0&k=20&c=0x91osZOkL8EfhTEEGNa2EeCGN2gdMTNULOsUFW_0i4=',
      providerId: '123456789',
      name: 'Amanda',
      email: 'mary@smith.com',
      phoneNumber: '15778783',
    ),
  ];

  // recently sent list
  List<User> recentSentUsers = [];

  // checkbox state
  bool selectUser = false;

  // list of selected users
  List<User> userSelected = [];

  @override
  Widget build(BuildContext context) {
    final user = ValueInjector.of<User>(context)?.value ?? User.empty;
    if (user == User.empty) {
      context.read<AuthBloc>()..add(AuthEvent.logoutRequest());
    }
    return Container(
      width: widget.box.maxWidth,
      padding: EdgeInsets.symmetric(
        horizontal: widget.box.maxWidth * 0.025,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SearchInputWidget(
            box: widget.box,
          ),
          // display list of selected users
          Container(
            padding: EdgeInsets.symmetric(
              vertical: widget.box.maxWidth * 0.02,
            ),
            width: widget.box.maxWidth,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Wrap(
                spacing: 5.0,
                children: userSelected
                    .map(
                      (e) => SelectedUserItem(
                        box: widget.box,
                        userPhoto: e.photo,
                        username: e.name,
                        onTap: () {
                          userSelected.remove(e);
                          setState(() {});
                        },
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
          VerticalSpacingWidget(
            box: widget.box,
            height: widget.box.maxHeight * 0.02,
          ),
          Text(
            'Recently sent',
            style: TextStyle(
              fontSize: widget.box.maxHeight * 0.025,
            ),
          ),
          VerticalSpacingWidget(
            box: widget.box,
            height: widget.box.maxHeight * 0.01,
          ),
          // display user with recent sent transactions
          Container(
            width: widget.box.maxWidth,
            height: widget.box.maxHeight * 0.2,
            padding: EdgeInsets.symmetric(
              horizontal: widget.box.maxWidth * 0.01,
            ),
            child: SingleChildScrollView(
              child: Column(
                children: users
                    .map(
                      (e) => UserCheckSelect(
                        box: widget.box,
                        fullName: e.name,
                        username: e.name,
                        userPhoto: '${e.photo}',
                        checked: userSelected.contains(e) ? true : false,
                        onChanged: (bool? value) {
                          // check if item adde - if yes then remove
                          if (userSelected.contains(e)) {
                            userSelected.remove(e);
                            setState(() {
                              selectUser = value!;
                            });
                          } else {
                            // add use to userSelected
                            userSelected.add(e);
                            setState(() {
                              selectUser = value!;
                            });
                          }
                        },
                      ),
                    )
                    .toList(),
              ),
            ),
          ),

          VerticalSpacingWidget(
            box: widget.box,
            height: widget.box.maxHeight * 0.015,
          ),
          Text(
            'Contacts',
            style: TextStyle(
              fontSize: widget.box.maxHeight * 0.025,
            ),
          ),
          VerticalSpacingWidget(
            box: widget.box,
            height: widget.box.maxHeight * 0.01,
          ),
          // display user with recent sent transactions
          Container(
            width: widget.box.maxWidth,
            height: widget.box.maxHeight * 0.5,
            padding: EdgeInsets.symmetric(
              horizontal: widget.box.maxWidth * 0.01,
            ),
            child: SingleChildScrollView(
              child: Column(
                children: users
                    .map(
                      (e) => UserCheckSelect(
                        box: widget.box,
                        fullName: e.name,
                        username: e.name,
                        userPhoto: '${e.photo}',
                        checked: userSelected.contains(e) ? true : false,
                        onChanged: (bool? value) {
                          // check if item adde - if yes then remove
                          if (userSelected.contains(e)) {
                            userSelected.remove(e);
                            setState(() {
                              selectUser = value!;
                            });
                          } else {
                            // add use to userSelected
                            userSelected.add(e);
                            setState(() {
                              selectUser = value!;
                            });
                          }
                        },
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
