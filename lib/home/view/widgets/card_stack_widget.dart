import 'package:flutter/material.dart';
import 'package:fpb/core/domain/virtualCard.dart';
import 'package:fpb/home/view/widgets/virtual_card_widget.dart';

class CardStackWidget extends StatefulWidget {
  const CardStackWidget({super.key});

  @override
  State<CardStackWidget> createState() => _CardStackWidgetState();
}

class _CardStackWidgetState extends State<CardStackWidget>
    with SingleTickerProviderStateMixin {
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
    const VirtualCard(
      index: 0,
      balance: '240.50',
      cardNumber: '1234 6565 6577',
      expiry: '04/25',
      cvv: '123',
      type: 'visa',
      lastFourDigits: '7070',
    ),
    const VirtualCard(
      index: 0,
      balance: '35.50',
      cardNumber: '1234 6565 6577',
      expiry: '04/25',
      cvv: '123',
      type: 'visa',
      lastFourDigits: '7070',
    ),
  ];

  final borderRadius = BorderRadius.circular(10.0);

  int currentIndex = 0;
  late final AnimationController controller;
  late final CurvedAnimation curvedAnimation;
  late final Animation<Offset> _translationAnim;
  late final Animation<double> _scaleAnim;

  @override
  void initState() {
    super.initState();
    currentIndex = 0;
    controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 150),
    );
    curvedAnimation =
        CurvedAnimation(parent: controller, curve: Curves.easeOut);

    _translationAnim = Tween(begin: Offset(0.0, 0.0), end: Offset(-1000.0, 0.0))
        .animate(controller)
      ..addListener(() {
        setState(() {});
      });

    _scaleAnim = Tween(begin: 0.965, end: 1.0).animate(curvedAnimation);
  }

  @override
  Widget build(BuildContext context) {
    final box = MediaQuery.of(context).size;

    return Container(
      height: box.height * 0.3,
      width: box.width,
      child: Stack(
          children: cardItems.reversed.map((card) {
        if (cardItems.indexOf(card) <= 2) {
          return GestureDetector(
            onHorizontalDragEnd: _horizontalDragEnd,
            onVerticalDragEnd: _verticalDragEnd,
            child: Transform.translate(
              offset: _getFlickTransformOffset(card),
              child: Transform.scale(
                scale: _getStackedCardScale(card),
                child: Center(
                  child: VirtualCardsWidget(
                    cardItem: card,
                  ),
                ),
              ),
            ),
          );
        } else {
          return Container();
        }
      }).toList()),
    );
  }

  double _getStackedCardScale(VirtualCard card) {
    int diff = card.index - currentIndex;
    if (card.index == currentIndex) {
      return 1.0;
    } else if (card.index == currentIndex + 1) {
      return _scaleAnim.value;
    } else {
      return (1 - (0.035 * diff.abs()));
    }
  }

  Offset _getFlickTransformOffset(VirtualCard card) {
    if (card.index == currentIndex) {
      return _translationAnim.value;
    }
    return Offset(0.0, 0.0);
  }

  void _horizontalDragEnd(DragEndDetails details) {
    if (details.primaryVelocity! < 0) {
      // Swiped Right to Left
      controller.forward().whenComplete(() {
        setState(
          () {
            controller.reset();
            VirtualCard removedCard = cardItems.removeAt(0);
            cardItems.add(removedCard);
            currentIndex = cardItems[0].index;
          },
        );
      });
    } else {
      // swipe Left to Right
      controller
          .animateBack(
        1.0,
      )
          .whenComplete(() {
        setState(
          () {
            controller.reset();
            VirtualCard removedCard = cardItems.removeAt(0);
            cardItems.add(removedCard);
            currentIndex = cardItems[0].index;
          },
        );
      });
    }
  }

  void _verticalDragEnd(DragEndDetails details) {
    if (details.primaryVelocity == null) return;
    if (details.primaryVelocity! < 1) {
      // drag from up to down
      controller.forward().whenComplete(() {
        setState(
          () {
            controller.reset();
            VirtualCard removedCard = cardItems.removeAt(0);
            cardItems.add(removedCard);
            currentIndex = cardItems[0].index;
          },
        );
      });
    } else {
      // drag from down to up
      controller
          .animateBack(
        1.0,
      )
          .whenComplete(() {
        setState(
          () {
            controller.reset();
            VirtualCard removedCard = cardItems.removeAt(0);
            cardItems.add(removedCard);
            currentIndex = cardItems[0].index;
          },
        );
      });
    }
  }
}
