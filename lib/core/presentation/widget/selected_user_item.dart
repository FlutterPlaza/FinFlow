import 'package:flutter/material.dart';

class SelectedUserItem extends StatelessWidget {
  const SelectedUserItem({
    super.key,
    required this.box,
    required this.userPhoto,
    required this.username,
    required this.onTap,
  });

  final BoxConstraints box;
  final String username;
  final String userPhoto;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: box.maxWidth * 0.02,
        horizontal: box.maxWidth * 0.02,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.onError.withOpacity(0.1),
        borderRadius: BorderRadius.circular(
          box.maxHeight * 0.01,
        ),
      ),
      child: Wrap(
        spacing: 6.0,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(
              '${userPhoto}',
            ),
            radius: box.maxHeight * 0.02,
            child: userPhoto == ''
                ? Icon(
                    Icons.person,
                  )
                : Container(),
          ),
          Text(
            '${username}',
            style: TextStyle(
              fontSize: box.maxHeight * 0.02,
              fontWeight: FontWeight.w400,
            ),
          ),
          GestureDetector(
            onTap: onTap,
            child: Icon(
              Icons.close,
              size: box.maxHeight * 0.02,
            ),
          )
        ],
      ),
    );
  }
}
