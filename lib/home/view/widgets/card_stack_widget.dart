import 'package:flutter/material.dart';
import 'package:fpb/core/domain/virtualCard.dart';
import 'package:fpb/home/view/widgets/drag_widget.dart';

class CardStackWidget extends StatefulWidget {
  const CardStackWidget({super.key});

  @override
  State<CardStackWidget> createState() => _CardStackWidgetState();
}

class _CardStackWidgetState extends State<CardStackWidget>
    with SingleTickerProviderStateMixin {
  List<VirtualCard> draggableItems = [
    const VirtualCard(
      balance: '200',
      cardNumber: '1234 6565 6577',
      expiry: '04/25',
      cvv: '123',
      type: 'visa',
      lastFourDigits: '1232',
    ),
    const VirtualCard(
      balance: '1000',
      cardNumber: '1234 6565 6577',
      expiry: '04/25',
      cvv: '123',
      type: 'visa',
      lastFourDigits: '5050',
    ),
    const VirtualCard(
      balance: '550.50',
      cardNumber: '1234 6565 6577',
      expiry: '04/25',
      cvv: '123',
      type: 'visa',
      lastFourDigits: '7070',
    ),
    const VirtualCard(
      balance: '240.50',
      cardNumber: '1234 6565 6577',
      expiry: '04/25',
      cvv: '123',
      type: 'visa',
      lastFourDigits: '7070',
    ),
    const VirtualCard(
      balance: '35.50',
      cardNumber: '1234 6565 6577',
      expiry: '04/25',
      cvv: '123',
      type: 'visa',
      lastFourDigits: '7070',
    ),
  ];

  ValueNotifier<Swipe> swipeNotifier = ValueNotifier(Swipe.none);
  late final AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
    _animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        draggableItems.removeLast();
        _animationController.reset();

        swipeNotifier.value = Swipe.none;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final box = MediaQuery.of(context).size;

    return Stack(
      clipBehavior: Clip.none,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: ValueListenableBuilder(
            valueListenable: swipeNotifier,
            builder: (context, swipe, _) => Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: List.generate(draggableItems.length, (index) {
                if (index == draggableItems.length - 1) {
                  return PositionedTransition(
                    rect: RelativeRectTween(
                      begin: RelativeRect.fromSize(
                          const Rect.fromLTWH(0, 0, 580, 340),
                          const Size(580, 340)),
                      end: RelativeRect.fromSize(
                        Rect.fromLTWH(
                            swipe != Swipe.none
                                ? swipe == Swipe.left
                                    ? -300
                                    : 300
                                : 0,
                            0,
                            580,
                            340),
                        const Size(580, 340),
                      ),
                    ).animate(CurvedAnimation(
                      parent: _animationController,
                      curve: Curves.easeInOut,
                    )),
                    child: RotationTransition(
                      turns: Tween<double>(
                              begin: 0,
                              end: swipe != Swipe.none
                                  ? swipe == Swipe.left
                                      ? -0.1 * 0.3
                                      : 0.1 * 0.3
                                  : 0.0)
                          .animate(
                        CurvedAnimation(
                          parent: _animationController,
                          curve:
                              const Interval(0, 0.4, curve: Curves.easeInOut),
                        ),
                      ),
                      child: DragWidget(
                        cardItem: draggableItems[index],
                        index: index,
                        swipeNotifier: swipeNotifier,
                        isLastCard: true,
                      ),
                    ),
                  );
                } else {
                  return DragWidget(
                    cardItem: draggableItems[index],
                    index: index,
                    swipeNotifier: swipeNotifier,
                  );
                }
              }),
            ),
          ),
        ),
        Positioned(
          left: 0,
          child: DragTarget<int>(
            builder: (
              BuildContext context,
              List<dynamic> accepted,
              List<dynamic> rejected,
            ) {
              return IgnorePointer(
                child: Container(
                  // height: 700.0,
                  // width: 80.0,
                  height: box.height * 0.25,
                  width: 80,
                  color: Colors.transparent,
                ),
              );
            },
            onAccept: (int index) {
              setState(() {
                draggableItems.removeAt(index);
              });
            },
          ),
        ),
      ],
    );
  }
}

enum Swipe { left, right, none }
