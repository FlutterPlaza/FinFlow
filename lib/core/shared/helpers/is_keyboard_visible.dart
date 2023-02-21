import 'package:flutter/material.dart';

bool isKeyboardVisible(BuildContext context) {
  final mediaQueryData = MediaQuery.of(context);
  return !(mediaQueryData.viewInsets.bottom == 0.0);
}
