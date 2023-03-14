import 'package:flutter/material.dart';

/// Padding for screens
extension PaddingX on Widget {
  Widget paddingDefault(BoxConstraints box) {
    return Padding(
      padding: EdgeInsets.only(
        left: box.maxHeight * 0.025,
        right: box.maxHeight * 0.025,
        top: box.maxHeight * 0.1,
        bottom: box.maxHeight * 0.025,
      ),
      child: this,
    );
  }
}
