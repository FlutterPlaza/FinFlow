import 'package:flutter/material.dart';
import 'package:fpb/assets/fpb_icons/fpb_icons_icons.dart';

class UserPic extends StatelessWidget {
  const UserPic({
    super.key,
    required this.box,
  });

  final BoxConstraints box;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: box.maxWidth,
      child: Stack(
        alignment: Alignment(0.0, -1.5),
        children: [
          Positioned(
            child: CircleAvatar(
              key: Key('UserPic'),
              radius: box.maxHeight * 0.060,
              child: FlutterLogo(size: box.maxHeight * 0.1),
            ),
          ),
          Positioned(
            //top: 0,
            right: box.maxWidth * .001,
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                FpbIcons.edit,
                size: box.maxHeight * 0.028,
                color: theme.colorScheme.secondary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
