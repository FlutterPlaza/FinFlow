import 'package:flutter/material.dart';

class FpbButton extends StatelessWidget {
  const FpbButton({
    super.key,
    required this.label,
    required this.onTap,
    this.trailing,
    this.heading,
    this.height,
    this.width,
    this.backgroundColor,
    this.borderSideColor,
    this.textColor,
  });

  final String label;
  final void Function()? onTap;
  final Widget? trailing;
  final Widget? heading;
  final double? height;
  final double? width;
  final Color? backgroundColor;
  final Color? borderSideColor;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: width ?? size.width,
      height: height ?? size.height * 0.075,
      child: ElevatedButton(
        clipBehavior: Clip.hardEdge,
        onPressed: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            heading ?? const SizedBox.shrink(),
            Text(
              label,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: textColor,
                    // fontWeight: FontWeight.w400,
                  ),
            ),
            if (trailing != null)
              Transform.translate(
                offset: const Offset(-15, 0),
                child: trailing,
              )
            else
              const SizedBox.shrink()
          ],
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(backgroundColor!),
          side: MaterialStateProperty.all(
            BorderSide(
                color: borderSideColor!, width: 1.0, style: BorderStyle.solid),
          ),
        ),
      ),
    );
  }
}
