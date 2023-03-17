import 'package:flutter/material.dart';

class OtpInput extends StatelessWidget {
  const OtpInput({
    super.key,
    required this.box,
  });

  final BoxConstraints box;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colors = theme.colorScheme;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: box.maxHeight * .0065),
      child: Container(
        height: box.maxHeight * .065,
        width: box.maxWidth * .12,
        child: Flexible(
          fit: FlexFit.loose,
          child: TextFormField(
            cursorColor: colors.scrim,
            textAlign: TextAlign.center,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(box.maxHeight * .15))),
          ),
        ),
      ),
    );
  }
}
