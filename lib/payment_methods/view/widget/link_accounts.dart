import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fpb/assets/fpb_svg.dart';
import 'package:fpb/core/presentation/widget/custom_btn_outline.dart';
import 'package:fpb/core/presentation/widget/custom_dialog_widget.dart';
import 'package:fpb/core/presentation/widget/vertical_spacing_widget.dart';

class LinkAccounts extends StatelessWidget {
  const LinkAccounts({
    super.key,
    required this.box,
  });

  final BoxConstraints box;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final style = theme.textTheme;

    return Container(
      width: box.maxWidth * 0.9,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Other accounts',
            style: theme.textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.w400,
            ),
          ),
          VerticalSpacingWidget(box: box),
          // btn link account - apple pay
          CustomBtnOutline(
            style: style,
            box: box,
            backgroundColor: theme.colorScheme.background,
            borderColor: theme.colorScheme.secondary,
            text: 'Link my Apple Pay',
            textColor: theme.colorScheme.secondary,
            leading: SvgPicture.asset(
              SvgNames.applePay,
            ),
            onPressed: () => print('action'),
          ),
          VerticalSpacingWidget(box: box),
          // btn link account - google pay
          CustomBtnOutline(
            style: style,
            box: box,
            backgroundColor: theme.colorScheme.background,
            borderColor: theme.colorScheme.secondary,
            text: 'Link my Google Pay',
            textColor: theme.colorScheme.secondary,
            leading: SvgPicture.asset(
              SvgNames.googlePay,
            ),
            onPressed: () => print('action'),
          ),
          VerticalSpacingWidget(
            box: box,
          ),
          // btn link account - paypal
          CustomBtnOutline(
            style: style,
            box: box,
            backgroundColor: theme.colorScheme.background,
            borderColor: theme.colorScheme.secondary,
            text: 'Link Paypal ',
            textColor: theme.colorScheme.secondary,
            leading: SvgPicture.asset(
              SvgNames.paypal,
            ),
            onPressed: () => print('action'),
          ),
          // link stripe
          VerticalSpacingWidget(
            box: box,
          ),
          // btn link account - google pay
          CustomBtnOutline(
            style: style,
            box: box,
            backgroundColor: theme.colorScheme.background,
            borderColor: theme.colorScheme.secondary,
            text: 'Link Stripe account',
            textColor: theme.colorScheme.secondary,
            onPressed: () => {
              showCustomDialog(
                context,
                box.maxHeight * 0.4,
                box.maxWidth * 0.95,
                Column(
                  children: [
                    Text('Hello'),
                    Text('Hello man'),
                  ],
                ),
              )
            },
          ),
          VerticalSpacingWidget(
            box: box,
          ),
          // btn link account - bank
          CustomBtnOutline(
            style: style,
            box: box,
            backgroundColor: theme.colorScheme.background,
            borderColor: theme.colorScheme.secondary,
            text: 'Link bank account',
            textColor: theme.colorScheme.secondary,
            onPressed: () => print('action'),
          ),
        ],
      ),
    );
  }
}
