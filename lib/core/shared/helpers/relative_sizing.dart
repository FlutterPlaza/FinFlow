import 'package:flutter/material.dart';

extension SizeXB on num {
  /// true size
  double of(BuildContext context) {
    return MediaQuery.of(context).devicePixelRatio * this;
  }

  /// relative width
  double ofWith(BuildContext context) =>
      (MediaQuery.of(context).devicePixelRatio *
          MediaQuery.of(context).size.width) *
      this;

  /// relative height
  double ofHeight(BuildContext context) {
    return MediaQuery.of(context).devicePixelRatio *
        MediaQuery.of(context).size.height *
        this;
  }
}
