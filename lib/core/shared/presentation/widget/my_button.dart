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
  });

  final String label;
  final void Function()? onTap;
  final Widget? trailing;
  final Widget? heading;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    final text = Text(
      label,
      style: Theme.of(context).textTheme.titleLarge?.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.w400,
          ),
    );
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
            text,
            if (trailing != null)
              Transform.translate(
                offset: const Offset(-15, 0),
                child: trailing,
              )
            else
              const SizedBox.shrink()
          ],
        ),
      ),
    );
  }
}
