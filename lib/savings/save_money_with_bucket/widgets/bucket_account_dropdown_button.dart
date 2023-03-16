import 'package:flutter/material.dart';
import 'package:fpb/savings/save_money_with_bucket/widgets/svg_icon_button.dart';

class BucketAccountWithDropdownButton extends StatefulWidget {
  const BucketAccountWithDropdownButton({Key? key}) : super(key: key);

  @override
  State<BucketAccountWithDropdownButton> createState() =>
      _BucketAccountWithDropdownButtonState();
}

class _BucketAccountWithDropdownButtonState
    extends State<BucketAccountWithDropdownButton> {
  /// List of items in our dropdown menu
  final dropDownListItems = [
    'Mortgage',
    'Rents',
    'Budget',
    'Savings',
    'Loans',
  ];

  /// Initial Selected Value
  String dropdownValue = 'Mortgage';

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colors = theme.colorScheme;

    return LayoutBuilder(
      builder: (BuildContext, BoxConstraints box) {
        return Container(
          decoration: BoxDecoration(
            color: colors.surface,
            borderRadius: BorderRadius.circular(
              10,
            ),
            boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.08),
                spreadRadius: 0,
                blurRadius: 23,
                offset: Offset(0, 6), // changes position of shadow
              )
            ],
          ),
          padding: EdgeInsets.all(8.0),
          child: Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SvgIconButton(),
                SizedBox(
                  width: 10.0,
                ),
                DropdownButtonHideUnderline(
                  child: DropdownButton(
                    // Initial Value
                    value: dropdownValue,
                    // Down Arrow Icon
                    icon: Row(
                      children: [
                        SizedBox(
                          width: box.maxWidth * 0.37,
                        ),
                        Icon(
                          Icons.keyboard_arrow_down,
                          size: 32,
                        ),
                        SizedBox(
                          width: box.maxWidth * 0.01,
                        )
                      ],
                    ),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownValue = newValue!.toString();
                      });
                    },
                    // Array list of items
                    items: dropDownListItems
                        .map<DropdownMenuItem<String>>((String items) {
                      return DropdownMenuItem<String>(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
