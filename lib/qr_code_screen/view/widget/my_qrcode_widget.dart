import 'package:flutter/material.dart';
import 'package:fpb/core/presentation/widget/vertical_spacing_widget.dart';
import 'package:fpb/core/shared/helpers/capture_qrcode.dart';
import 'package:qr_flutter/qr_flutter.dart';

class MyQrCode extends StatelessWidget {
  const MyQrCode({
    super.key,
    required this.box,
    required this.qrKey,
  });

  final BoxConstraints box;
  final GlobalKey qrKey;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            width: box.maxWidth,
            child: Text(
              "My QR Code",
              style: Theme.of(context).textTheme.titleMedium,
              textAlign: TextAlign.center,
            ),
          ),
          RepaintBoundary(
            key: qrKey,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Theme.of(context).primaryColor,
                  width: 3,
                ),
              ),
              child: QrImage(
                data: 'flutterplaza@gmail.com',
                version: QrVersions.auto,
                size: box.maxHeight * 0.3,
                gapless: false,
                foregroundColor: Colors.white,
              ),
            ),
          ),
          SizedBox(
            width: box.maxWidth,
            child: Column(
              children: [
                Text(
                  "La Desmond",
                  style: Theme.of(context).textTheme.titleMedium,
                  textAlign: TextAlign.center,
                ),
                GestureDetector(
                  onTap: () async {
                    await captureAndShareScreen(
                      qrKey,
                    );
                  },
                  child: Text(
                    "@La Desmond",
                    style: Theme.of(context).textTheme.titleMedium,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          VerticalSpacingWidget(
            box: box,
            height: box.maxHeight * 0.03,
          ),
        ],
      ),
    );
  }
}
