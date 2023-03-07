import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fpb/assets/fpb_icons/fpb_icons_icons.dart';
import 'package:fpb/qr_code_screen/view/qr_code_screen.dart';
import 'package:fpb/router/app_route.gr.dart';

class RowHeaderIcons extends StatelessWidget {
  const RowHeaderIcons({
    super.key,
    this.showSearchIcon = false,
  });

  final bool showSearchIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10.0,
      ),
      child: Center(
        child: Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            showSearchIcon
                ? InkWell(
                    onTap: () {
                      // context.pushRoute(
                      //   HomeRouter(user: user, children: [
                      //     LatestActivitiesPage(),
                      //   ]),
                      // );
                    },
                    child: Icon(
                      FpbIcons.search,
                      size: 20,
                    ),
                  )
                : SizedBox(),
            ElevatedButton(
              onPressed: () {
                context.pushRoute(QrCodeRoute());
              },
              child: Icon(
                FpbIcons.scan_code,
                size: 30,
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                shape: CircleBorder(),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Icon(
                FpbIcons.notification,
                size: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
