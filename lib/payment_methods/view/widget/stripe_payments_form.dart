import 'package:flutter/material.dart';
import 'package:fpb/core/presentation/widget/fpb_button.dart';
import 'package:fpb/core/presentation/widget/fpb_text_form_field_v2.dart';
import 'package:fpb/core/presentation/widget/vertical_spacing_widget.dart';

class StripePaymentsForm extends StatefulWidget {
  const StripePaymentsForm({
    super.key,
    required this.box,
  });

  final BoxConstraints box;

  @override
  State<StripePaymentsForm> createState() => _StripePaymentsFormState();
}

class _StripePaymentsFormState extends State<StripePaymentsForm> {
  bool isDefaultPayments = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.box.maxWidth,
      padding: EdgeInsets.symmetric(
        horizontal: widget.box.maxWidth * 0.02,
        vertical: widget.box.maxHeight * 0.02,
      ),
      child: Column(
        children: [
          // card number input field
          FpbTextFormField(
            onChanged: (value) {},
            label: 'Card Number',
            hintText: '**** **** **** 1234',
            box: widget.box,
            keyboardType: TextInputType.number,
          ),
          // ExpiryDate and CVV
          SizedBox(
            width: widget.box.maxWidth,
            child: Wrap(
              alignment: WrapAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: widget.box.maxWidth * 0.55,
                  child: FpbTextFormField(
                    onChanged: (value) {},
                    label: 'Expiry Date',
                    hintText: 'DD.MM.YY',
                    box: widget.box,
                  ),
                ),
                SizedBox(
                  width: widget.box.maxWidth * 0.3,
                  child: FpbTextFormField(
                    onChanged: (value) {},
                    label: 'CVV',
                    hintText: '000',
                    box: widget.box,
                    keyboardType: TextInputType.number,
                  ),
                ),
              ],
            ),
          ),
          // set payments as default
          Container(
            width: widget.box.maxWidth,
            child: Wrap(
              alignment: WrapAlignment.start,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                Checkbox(
                  value: isDefaultPayments,
                  activeColor: Theme.of(context).colorScheme.primary,
                  onChanged: (bool? value) {
                    print(value);
                    setState(() {
                      isDefaultPayments = value!;
                    });
                  },
                ),
                Text(
                  'Set as your default payment method',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          ),
          VerticalSpacingWidget(box: widget.box),
          // btn submit - Add payments
          FpbButton(
            label: 'Add',
            onTap: () => print('Add Stripe'),
          ),
        ],
      ),
    );
  }
}
