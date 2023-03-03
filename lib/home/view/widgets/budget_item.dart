import 'package:flutter/material.dart';
import 'package:fpb/assets/fpb_icons/fpb_icons_icons.dart';

class BudgetItem extends StatelessWidget {
  const BudgetItem(
      {super.key, required this.box, required this.name, required this.amount});

  final BoxConstraints box;
  final String name;
  final String amount;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: box.maxWidth,
      height: box.maxHeight * 0.08,
      // color: Colors.indigo,
      child: Wrap(
        alignment: WrapAlignment.spaceBetween,
        runAlignment: WrapAlignment.center,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          Container(
            child: Wrap(
              spacing: 5.0,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                SizedBox(
                  width: box.maxWidth * 0.12,
                  height: box.maxHeight * 0.06,
                  child: Center(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Icon(
                        FpbIcons.shopping,
                        size: 18,
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                      ),
                    ),
                  ),
                ),
                Text(name),
              ],
            ),
          ),
          Text(
            '$amount',
          )
        ],
      ),
    );
  }
}
