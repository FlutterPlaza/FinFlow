import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fpb/core/presentation/widget/fpb_button.dart';
import 'package:fpb/core/shared/helpers/extensions.dart';
import 'package:fpb/l10n/l10n.dart';
import 'package:fpb/savings/save_money_with_bucket/widgets/bucket_account_dropdown_button.dart';
import 'package:fpb/savings/save_money_with_bucket/widgets/key_pad_number_display.dart';
import 'package:fpb/savings/save_money_with_bucket/widgets/number_pad.dart';

class SaveMoneyScreen extends StatefulWidget {
  const SaveMoneyScreen({super.key});

  static const String routeName = '/saveMoney';

  @override
  State<SaveMoneyScreen> createState() => _SaveMoneyScreenState();
}

class _SaveMoneyScreenState extends State<SaveMoneyScreen> {
  TextEditingController amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final theme = Theme.of(context);
    final style = theme.textTheme;
    final colors = theme.colorScheme;

    return Scaffold(
      backgroundColor: Theme.of(context).cardColor,
      appBar: AppBar(
        title: Text(
          l10n.saveMoneyWithBucketScreenTitle,
          style: style.titleMedium?.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: SvgPicture.asset('assets/FpbIcons/left_arrow.svg'),
          onPressed: () {},
        ),
        backgroundColor: colors.surface,
      ),
      body: LayoutBuilder(
        builder: (context, BoxConstraints box) {
          return Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    KeyPadNumberDisplay(
                        amountController: amountController, style: style),
                    SizedBox(
                      height: box.maxHeight * 0.03,
                    ),
                    BucketAccountWithDropdownButton(),
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
