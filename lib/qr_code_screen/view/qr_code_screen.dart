import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

import 'package:fpb/core/presentation/extension/extensions.dart';
import 'package:fpb/core/presentation/widget/vertical_spacing_widget.dart';
import 'package:fpb/core/shared/helpers/capture_qrcode.dart';
import 'package:fpb/core/presentation/widget/fpb_button.dart';
import 'package:fpb/core/shared/helpers/read_qrcode_data.dart';
import 'package:fpb/home/view/widgets/custom_appbar.dart';
import 'package:fpb/qr_code_screen/view/widget/qr_tabbar_view_widget.dart';
import 'package:fpb/qr_code_screen/view/widget/tabbar_widget.dart';

class QrCodeScreen extends StatefulWidget {
  const QrCodeScreen({super.key});

  @override
  State<QrCodeScreen> createState() => _QrCodeScreenState();
}

class _QrCodeScreenState extends State<QrCodeScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  final GlobalKey qrKey = GlobalKey(debugLabel: 'FlutterPlazaQR');
  bool scanning = false;
  QRViewController? controller;

  @override
  void initState() {
    super.initState();

    tabController = TabController(
      length: 2,
      vsync: this,
    );
  }

  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller!.pauseCamera();
    }
    controller!.resumeCamera();
  }

  @override
  void dispose() {
    super.dispose();
    controller?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints box) {
        return AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle(
            statusBarColor: theme.colorScheme.onSecondary,
            statusBarIconBrightness: Brightness.light, // light icon for iOS
            statusBarBrightness: Brightness.light, // set light icon for android
          ),
          child: SafeArea(
            child: Scaffold(
              backgroundColor: theme.colorScheme.onSecondary,
              appBar: CustomAppBar(
                showArrow: true,
                titleChildWidget: Text(''),
                height: box.maxHeight * 0.06,
                actionChildWidget: [
                  tabController.index == 1
                      ? GestureDetector(
                          onTap: () async {
                            await captureAndShareScreen(
                              qrKey,
                            );
                          },
                          child: Container(
                            width: box.maxWidth * 0.3,
                            height: box.maxHeight * 0.001,
                            margin: EdgeInsets.symmetric(
                              horizontal: box.maxWidth * 0.02,
                              vertical: box.maxHeight * 0.007,
                            ),
                            decoration: BoxDecoration(
                              color: theme.colorScheme.onSecondaryContainer,
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            child: Center(
                              child: Text(
                                'Share code',
                                style: theme.textTheme.titleSmall?.copyWith(
                                  color: Theme.of(context).colorScheme.surface,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                        )
                      : SizedBox.shrink(),
                ],
                backgroundColor: theme.colorScheme.onSecondary,
                foregroundColor: theme.colorScheme.surface,
              ),
              body: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: QrTabBarViewWidget(
                        tabController: tabController,
                        box: box,
                        qrKey: qrKey,
                        onCodeCreated: (QRViewController) {
                          scanning ? _doNothing : readQrcodeData;
                        },
                      ),
                    ),
                    Container(
                      width: box.maxWidth * 0.95,
                      child: Column(
                        children: [
                          TabbarWidget(
                            box: box,
                            tabController: tabController,
                            onTap: (_) {
                              setState(() {
                                tabController.index = _;
                              });
                            },
                          ).card(
                            color: theme.colorScheme.onSecondaryContainer,
                            margin: EdgeInsets.symmetric(
                              vertical: box.maxHeight * 0.008,
                            ),
                            radius: box.maxWidth * 0.02,
                            height: box.maxHeight * 0.065,
                          ),
                          VerticalSpacingWidget(
                            box: box,
                            height: box.maxHeight * 0.02,
                          ),
                          SizedBox(
                            width: box.maxWidth,
                            child: GestureDetector(
                              onTap: () => context.router.navigateBack(),
                              child: Text(
                                "Cancel",
                                style: theme.textTheme.titleLarge?.copyWith(
                                  color: Theme.of(context).colorScheme.surface,
                                  fontWeight: FontWeight.w400,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          VerticalSpacingWidget(
                            box: box,
                            height: box.maxHeight * 0.1,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  void _doNothing(QRViewController controller) {
    print('stopped');
  }
}
