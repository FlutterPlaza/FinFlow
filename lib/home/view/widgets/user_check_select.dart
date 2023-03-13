import 'package:flutter/material.dart';

class UserCheckSelect extends StatelessWidget {
  const UserCheckSelect({
    super.key,
    required this.box,
    required this.username,
    required this.fullName,
    required this.onChanged,
    required this.checked,
    required this.userPhoto,
  });

  final BoxConstraints box;
  final String username;
  final String fullName;
  final String userPhoto;
  final bool checked;
  final void Function(bool?) onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: box.maxWidth,
      height: box.maxHeight * 0.09,
      child: Wrap(
        alignment: WrapAlignment.spaceBetween,
        crossAxisAlignment: WrapCrossAlignment.center,
        runAlignment: WrapAlignment.center,
        children: [
          Container(
            child: Wrap(
              spacing: box.maxWidth * 0.03,
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                    '${userPhoto}',
                  ),
                  radius: box.maxHeight * 0.026,
                  child: userPhoto == ''
                      ? Icon(
                          Icons.person,
                        )
                      : Container(),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '@${username.trim()}',
                        style: TextStyle(
                          fontSize: box.maxHeight * 0.023,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        '${fullName}',
                        style: TextStyle(
                          fontSize: box.maxHeight * 0.02,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // checkbox select button
          SizedBox(
            child: Checkbox(
              value: checked,
              onChanged: onChanged,
            ),
          ),
        ],
      ),
    );
  }
}
