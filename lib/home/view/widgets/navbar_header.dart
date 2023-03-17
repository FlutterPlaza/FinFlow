import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpb/assets/fpb_icons/fpb_icons_icons.dart';
import 'package:fpb/authentication_with_firebase/application/bloc/auth_bloc.dart';
import 'package:fpb/core/domain/user.dart';
import 'package:fpb/core/shared/helpers/value_injector.dart';
import 'package:fpb/router/app_route.gr.dart';

class NavHeader extends StatelessWidget {
  const NavHeader({
    super.key,
    required this.box,
    this.showSearchIcon = false,
  });

  final BoxConstraints box;
  final bool showSearchIcon;

  @override
  Widget build(BuildContext context) {
    final user = ValueInjector.of<User>(context)?.value ?? User.empty;
    if (user == User.empty) {
      context.read<AuthBloc>()..add(AuthEvent.logoutRequest());
    }
    return Container(
      width: box.maxWidth,
      padding: EdgeInsets.symmetric(
        horizontal: box.maxWidth * 0.04,
        vertical: box.maxHeight * 0.025,
      ),
      // color: Colors.red,
      child: Wrap(
        alignment: WrapAlignment.spaceBetween,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage('${user.photo}'),
          ),
          Container(
            child: Wrap(
              spacing: box.maxWidth * 0.02,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                showSearchIcon
                    ? InkWell(
                        onTap: () {
                          context.pushRoute(
                            LatestActivitiesPage(),
                          );
                        },
                        child: Icon(
                          FpbIcons.search,
                          size: 20,
                        ),
                      )
                    : SizedBox(),
                SizedBox(
                  height: box.maxHeight * 0.05,
                  child: Image.asset(
                    'assets/fpb-assets/scan_icon.png',
                  ),
                ),
                Icon(
                  FpbIcons.notification,
                  size: 20,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
