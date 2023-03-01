import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;
  final Widget titleChildWidget;
  final List<Widget> actionChildWidget;
  final bool showArrow;

  CustomAppBar({
    // required this.child,
    this.height = kToolbarHeight,
    required this.titleChildWidget,
    required this.actionChildWidget,
    this.showArrow = false,
  });

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
  
    return AppBar(
      toolbarHeight: height,
      automaticallyImplyLeading: showArrow,
      // backgroundColor: Colors.red,
      title: titleChildWidget,
      actions: actionChildWidget,
    );
  }
}
