import 'package:qr_code_scanner/qr_code_scanner.dart';

void readQrcodeData(QRViewController controller) {
  // this.controller = controller;
  controller.scannedDataStream.listen(
    (scanData) {
      // check if scan data length is greater than 12 and if it is a number
      print('QR Code: ${scanData.code}');
    },
  );
}
