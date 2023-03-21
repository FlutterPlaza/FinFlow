import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class KeyPadNumberDisplay extends StatelessWidget {
  const KeyPadNumberDisplay({
    super.key,
    required this.amountController,
    required this.style,
  });

  final TextEditingController amountController;
  final TextTheme style;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: SvgPicture.asset('assets/FpbIcons/dollar_sign.svg'),
          onPressed: () {},
        ),
        Expanded(
          child: Center(
            child: TextFormField(
              controller: amountController,
              readOnly: true,
              style: style.titleLarge?.copyWith(
                fontWeight: FontWeight.w600,
                fontSize: 40,
              ),
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                hintText: "00.0",
                hintStyle: style.titleLarge?.copyWith(
                  fontWeight: FontWeight.w600,
                  fontSize: 40,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
