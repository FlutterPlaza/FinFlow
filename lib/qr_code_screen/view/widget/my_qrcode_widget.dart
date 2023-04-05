import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

import 'package:fpb/core/presentation/widget/vertical_spacing_widget.dart';
import 'package:fpb/core/shared/helpers/capture_qrcode.dart';

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
    final theme = Theme.of(context);
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            width: box.maxWidth,
            child: Text(
              "My QR Code",
              style: theme.textTheme.titleLarge?.copyWith(
                color: Theme.of(context).colorScheme.surface,
                fontWeight: FontWeight.w400,
              ),
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
                  color: theme.colorScheme.primary,
                  width: 1,
                ),
              ),
              child: QrImage(
                data: 'flutterplaza@gmail.com',
                version: QrVersions.auto,
                size: box.maxHeight * 0.3,
                gapless: false,
                foregroundColor: theme.colorScheme.surface,
              ),
            ),
          ),
          SizedBox(
            width: box.maxWidth,
            child: Column(
              children: [
                Text(
                  "John Doe",
                  style: theme.textTheme.bodyLarge?.copyWith(
                    color: Theme.of(context).colorScheme.surface,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.italic,
                  ),
                  textAlign: TextAlign.center,
                ),
                GestureDetector(
                  onTap: () async {
                    await captureAndShareScreen(
                      qrKey,
                    );
                  },
                  child: Text(
                    "@johndoe",
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: Theme.of(context).colorScheme.onInverseSurface,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.italic,
                      fontSize: box.maxWidth * 0.030,
                    ),
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
