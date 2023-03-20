import 'package:flutter/material.dart';

Future<Future<void>> showCustomDialog(
  BuildContext context,
  BoxConstraints box,
  double? height,
  double? width,
  Widget? widget,
) async {
  return showGeneralDialog(
    context: context,
    barrierDismissible: true,
    barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
    barrierColor: Color.fromARGB(199, 3, 3, 3),
    transitionDuration: const Duration(
      milliseconds: 200,
    ),
    pageBuilder: (
      BuildContext buildContext,
      Animation<dynamic> animation,
      Animation<dynamic> secondaryAnimation,
    ) {
      return CustomDialogWidget(
        height: height ?? box.maxHeight * 0.5,
        width: width ?? box.maxWidth * 0.4,
        childWidget: widget!,
      );
    },
  );
}

class CustomDialogWidget extends StatelessWidget {
  const CustomDialogWidget({
    super.key,
    required this.height,
    required this.width,
    required this.childWidget,
  });

  final double height;
  final double width;
  final Widget childWidget;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        color: Colors.transparent,
        child: GestureDetector(
          onTap: () =>
              FocusScope.of(context).unfocus(), // close keyboard on screen tap
          child: Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              borderRadius: BorderRadius.circular(
                10.0,
              ),
            ),
            child: childWidget,
          ),
        ),
      ),
    );
  }
}
