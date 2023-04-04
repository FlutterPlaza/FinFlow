import 'package:flutter/material.dart';

class FpbButton extends StatelessWidget {
  const FpbButton({
    super.key,
    required this.label,
    required this.onTap,
    this.trailing,
    this.height,
    this.width,
    this.leading,
    this.spaceAround = false,
    this.backgroundColor,
    this.borderSideColor,
    this.textColor,
  });

  final String label;
  final void Function()? onTap;
  final Widget? trailing;
  final double? height;
  final double? width;
  final Widget? leading;
  final bool spaceAround;
  final Color? backgroundColor;
  final Color? borderSideColor;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    final colors = theme.colorScheme;

    return SizedBox(
      width: width ?? size.width,
      height: height ?? size.height * 0.075,
      child: ElevatedButton(
        clipBehavior: Clip.hardEdge,
        onPressed: onTap,
        child: Row(
          mainAxisAlignment: spaceAround
              ? MainAxisAlignment.spaceAround
              : MainAxisAlignment.spaceBetween,
          children: [
            leading ?? const SizedBox.shrink(),
            Text(
              label,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: textColor ?? colors.surface,
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
          backgroundColor:
              MaterialStateProperty.all<Color>(backgroundColor ?? colors.primary),
          side: MaterialStateProperty.all(
            BorderSide(
                color: borderSideColor ?? colors.primary,
                width: 1.0,
                style: BorderStyle.solid),
          ),
          elevation: MaterialStateProperty.all(0.0),
        ),
      ),
    );
  }
}
