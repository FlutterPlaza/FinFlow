import 'package:flutter/material.dart';

class KeyPad extends StatelessWidget {
  final TextEditingController amountController;
  final Function onChange;
  final Function delete;

  KeyPad({
    required this.onChange,
    required this.amountController,
    required this.delete,
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Container(
      margin: EdgeInsets.only(left: 30, right: 30),
      child: Expanded(
        child: Column(
          children: [
            SizedBox(
              height: height / 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buttonKey('1', controller: amountController),
                buttonKey('2', controller: amountController),
                buttonKey('3', controller: amountController),
              ],
            ),
            SizedBox(
              height: height / 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buttonKey('4', controller: amountController),
                buttonKey('5', controller: amountController),
                buttonKey('6', controller: amountController),
              ],
            ),
            SizedBox(
              height: height / 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buttonKey('7', controller: amountController),
                buttonKey('8', controller: amountController),
                buttonKey('9', controller: amountController),
              ],
            ),
            SizedBox(
              height: height / 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buttonKey('.', controller: amountController),
                buttonKey('0', controller: amountController),
                iconButtonKey(
                  icon: Icon(Icons.backspace),
                  size: 24,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buttonKey(String buttonText, {TextEditingController? controller}) {
    return Expanded(
      child: Center(
        child: TextButton(
          child: Text(
            buttonText.toString(),
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: Color(0xff181818),
              fontSize: 36,
            ),
          ),
          onPressed: () {
            controller?.text += buttonText.toString();
          },
        ),
      ),
    );
  }

  Widget iconButtonKey(
      {Widget? icon,
      Function? function,
      double? size,
      TextEditingController? controller}) {
    return Expanded(
      child: Container(
        height: 60,
        width: 60,
        child: Center(
          child: IconButton(
            icon: icon!,
            iconSize: size,
            color: Colors.black,
            onPressed: () {
              delete();
            },
          ),
        ),
      ),
    );
  }
}
