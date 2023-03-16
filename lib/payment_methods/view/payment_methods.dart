import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fpb/home/view/widgets/custom_appbar.dart';
import 'package:fpb/payment_methods/view/widget/payment_cards_widget.dart';

class PaymentMethodScreen extends StatelessWidget {
  const PaymentMethodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Theme.of(context).colorScheme.surface,
        statusBarIconBrightness: Brightness.dark, // dark icon for iOS
        statusBarBrightness: Brightness.dark, // set dark icon for android
      ),
      child: LayoutBuilder(
        builder: (context, box) {
          return SafeArea(
            child: Scaffold(
              backgroundColor: Theme.of(context).colorScheme.surface,
              appBar: CustomAppBar(
                showArrow: true,
                backgroundColor: Theme.of(context).colorScheme.surface,
                titleChildWidget: Text(
                  'Payment methods',
                ),
              ),
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    PaymentCardsWidget(
                      box: box,
                    ),
                  ],
                ),
                // SliverFixedExtentList(
                //   itemExtent: 50.0,
                //   delegate: SliverChildBuilderDelegate(
                //     (BuildContext context, int index) {
                //       return Container(
                //         alignment: Alignment.center,
                //         color: Colors.lightBlue[100 * (index % 9)],
                //         child: Text('List Item $index'),
                //       );
                //     },
                //   ),
                // ),
              ),
            ),
          );
        },
      ),
    );
  }
}
