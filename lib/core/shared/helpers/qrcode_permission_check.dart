import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

void qrCodePermissionCheck(
    BuildContext context, QRViewController ctrl, bool p) {
  if (!p) {
    // show toast message
    final snackBar = SnackBar(
      content: const Text('Permission not allowed'),
      backgroundColor: (Colors.black12),
      action: SnackBarAction(
        label: 'dismiss',
        onPressed: () {},
      ),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
