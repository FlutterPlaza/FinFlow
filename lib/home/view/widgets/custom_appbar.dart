import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;
  final Widget titleChildWidget;
  final List<Widget> actionChildWidget;
  final bool showArrow;
  final Color? backgroundColor;
  final Color? foregroundColor;

  CustomAppBar({
    this.height = kToolbarHeight,
    required this.titleChildWidget,
    required this.actionChildWidget,
    this.showArrow = false,
    this.backgroundColor,
    this.foregroundColor,
  });

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: height,
      automaticallyImplyLeading: showArrow,
      title: titleChildWidget,
      actions: actionChildWidget,
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor,
    );
  }
}
