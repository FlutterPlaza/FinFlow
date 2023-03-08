import 'package:flutter/material.dart';
import 'package:fpb/qr_code_screen/view/widget/my_qrcode_widget.dart';
import 'package:fpb/qr_code_screen/view/widget/scan_qrcode_widget.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class QrTabBarViewWidget extends StatelessWidget {
  const QrTabBarViewWidget({
    super.key,
    required this.tabController,
    required this.box,
    this.qrKey,
    required this.onCodeCreated,
  });

  final TabController tabController;
  final BoxConstraints box;
  final GlobalKey? qrKey;
  final void Function(QRViewController) onCodeCreated;

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      physics: const BouncingScrollPhysics(),
      controller: tabController,
      children: [
        ScanQrCodeWidget(
          qrKey: qrKey!,
          onCodeCreated: onCodeCreated,
          box: box,
        ),
        MyQrCode(
          box: box,
          qrKey: qrKey!,
        ),
      ],
    );
  }
}
