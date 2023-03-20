import 'package:flutter/material.dart';
import 'package:fpb/core/domain/virtualCard.dart';
import 'package:fpb/core/presentation/widget/fpb_button.dart';
import 'package:fpb/core/presentation/widget/vertical_spacing_widget.dart';
import 'package:fpb/payment_methods/view/widget/mycard_item.dart';

class PaymentCardsWidget extends StatefulWidget {
  const PaymentCardsWidget({
    super.key,
    required this.box,
  });

  final BoxConstraints box;

  @override
  State<PaymentCardsWidget> createState() => _PaymentCardsWidgetState();
}

class _PaymentCardsWidgetState extends State<PaymentCardsWidget> {
  Duration kAnimationDuration = Duration(microseconds: 150);

  List<VirtualCard> cardItems = [
    const VirtualCard(
      index: 0,
      balance: '200',
      cardNumber: '1234 6565 6577',
      expiry: '04/25',
      cvv: '123',
      type: 'visa',
      lastFourDigits: '1232',
    ),
    const VirtualCard(
      index: 0,
      balance: '1000',
      cardNumber: '1234 6565 6577',
      expiry: '04/25',
      cvv: '123',
      type: 'visa',
      lastFourDigits: '5050',
    ),
    const VirtualCard(
      index: 0,
      balance: '550.50',
      cardNumber: '1234 6565 6577',
      expiry: '04/25',
      cvv: '123',
      type: 'visa',
      lastFourDigits: '7070',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colors = theme.colorScheme;
    return Container(
      width: widget.box.maxWidth,
      child: Column(
        children: [
          Container(
            width: widget.box.maxWidth * 0.9,
            child: Wrap(
              alignment: WrapAlignment.spaceBetween,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                Text(
                  'My Cards',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                FpbButton(
                  width: widget.box.maxWidth * 0.5,
                  height: widget.box.maxHeight * 0.055,
                  label: 'Add Card',
                  backgroundColor: Theme.of(context).colorScheme.secondary, 
                  onTap: () => print('Add Card'),
                  spaceAround: true,
                  leading: Icon(
                    Icons.add,
                  ),
                ),
              ],
            ),
          ),
          VerticalSpacingWidget(
            box: widget.box,
            height: widget.box.maxHeight * 0.02,
          ),
          // display cards
          Container(
            width: widget.box.maxWidth,
            height: widget.box.maxHeight * 0.4,
            padding: EdgeInsets.symmetric(
              vertical: widget.box.maxWidth * 0.01,
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  top: 0.0,
                  child: MyCardItem(
                    box: widget.box,
                    cardIndex: 0,
                    bgColor: colors.onTertiaryContainer,
                  ),
                ),
                Positioned(
                  top: 60.0,
                  child: MyCardItem(
                    box: widget.box,
                    bgColor: Color(0xFFC95528),
                    cardIndex: 1,
                  ),
                ),
                Positioned(
                  bottom: 20.0,
                  child: MyCardItem(
                    box: widget.box,
                    // bgColor: Colors.indigo,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
