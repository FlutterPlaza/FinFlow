import 'package:flutter/material.dart';
import 'package:fpb/core/presentation/widget/vertical_spacing_widget.dart';
import 'package:fpb/core/shared/helpers/qrcode_permission_check.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class ScanQrCodeWidget extends StatelessWidget {
  const ScanQrCodeWidget({
    super.key,
    required this.qrKey,
    required this.onCodeCreated,
    required this.box,
  });

  final GlobalKey qrKey;
  final void Function(QRViewController) onCodeCreated;
  final BoxConstraints box;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      child: Column(
        children: [
          SizedBox(
            width: box.maxWidth,
            child: Text(
              "Scan a code",
              style: theme.textTheme.titleLarge?.copyWith(
                color: Theme.of(context).colorScheme.surface,
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          VerticalSpacingWidget(
            box: box,
          ),
          Expanded(
            child: QRView(
              key: qrKey,
              onQRViewCreated: onCodeCreated,
              cameraFacing: CameraFacing.back,
              overlay: QrScannerOverlayShape(
                borderColor: theme.colorScheme.primary,
                borderRadius: 10,
                borderLength: 30,
                borderWidth: 3,
                // cutOutSize: (MediaQuery.of(context).size.width < 400 ||
                //         MediaQuery.of(context).size.height < 400)
                //     ? 260.0
                //     : 260.0,
              ),
              onPermissionSet: (ctrl, p) => qrCodePermissionCheck(
                context,
                ctrl,
                p,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
