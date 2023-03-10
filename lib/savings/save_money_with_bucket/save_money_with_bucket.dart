import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fpb/core/presentation/widget/my_button.dart';
import 'package:fpb/l10n/l10n.dart';
import 'package:fpb/savings/save_money_with_bucket/number_pad.dart';

class SaveMoneyScreen extends StatefulWidget {
  const SaveMoneyScreen({super.key});

  static const String routeName = '/saveMoney';

  @override
  State<SaveMoneyScreen> createState() => _SaveMoneyScreenState();
}

class _SaveMoneyScreenState extends State<SaveMoneyScreen> {
  TextEditingController amountController = TextEditingController();

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
    final l10n = context.l10n;
    final theme = Theme.of(context);
    final style = theme.textTheme;
    final colors = theme.colorScheme;

    return Scaffold(
      backgroundColor: Theme.of(context).cardColor,
      body: LayoutBuilder(
        builder: (context, BoxConstraints box) {
          return Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: [
                        IconButton(
                          icon: SvgPicture.asset(
                              'assets/FpbIcons/left_arrow.svg'),
                          onPressed: () {},
                        ),
                        Expanded(
                          child: Center(
                            child: Text(
                              l10n.saveMoneyWithBucketScreenTitle,
                              style: style.titleMedium?.copyWith(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: box.maxHeight * 0.05,
                    ),
                    Row(
                      children: [
                        IconButton(
                          icon: SvgPicture.asset(
                              'assets/FpbIcons/dollar_sign.svg'),
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
                    ),
                    SizedBox(
                      height: box.maxHeight * 0.03,
                    ),
                    Card(
                      elevation: 2,
                      color: colors.surface,
                      // ),
                      child: Container(
                        width: box.maxWidth * 1,
                        child: Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              IconButton(
                                icon: SvgPicture.asset(
                                  'assets/fpb-assets/orange-home-icon.svg',
                                ),
                                iconSize: 50,
                                onPressed: () {},
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton(
                                    // Initial Value
                                    value: dropdownValue,
                                    elevation: 16,
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
                                        .map<DropdownMenuItem<String>>(
                                            (String items) {
                                      return DropdownMenuItem<String>(
                                        value: items,
                                        child: Text(items),
                                      );
                                    }).toList(),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: box.maxHeight * 0.04,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        KeyPad(
                          amountController: amountController,
                          onChange: (String amount) {
                            amountController.text = amount;
                            setState(() {});
                          },
                          delete: () {
                            amountController.text = amountController.text
                                .substring(0, amountController.text.length - 1);
                          },
                        ),
                      ],
                    ),
                  ],
                ).paddingDefault(box),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: box.maxHeight * .035,
                    vertical: box.maxHeight * .03,
                  ),
                  child: FpbButton(
                    label: l10n.saveMoneyWithBucketSaveButton,
                    onTap: () {},
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

extension PaddingX on Widget {
  Widget paddingDefault(BoxConstraints box) {
    return Padding(
      padding: EdgeInsets.only(
        left: box.maxHeight * 0.025,
        right: box.maxHeight * 0.025,
        top: box.maxHeight * 0.1,
        bottom: box.maxHeight * 0.025,
      ),
      child: this,
    );
  }
}
