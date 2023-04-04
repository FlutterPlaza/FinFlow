import 'package:flutter/material.dart';

extension extString on String {
  bool get isValidEmail {
    final emailRegExp = RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    return emailRegExp.hasMatch(this);
  }

  bool get isValidName {
    final nameRegExp =
        new RegExp(r"^\s*([A-Za-z]{1,}([\.,] |[-']| ))+[A-Za-z]+\.?\s*$");
    return nameRegExp.hasMatch(this);
  }

  bool get isNotNull {
    // ignore: unnecessary_null_comparison
    return this != null;
  }
}

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
