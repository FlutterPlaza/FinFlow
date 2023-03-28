import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpb/authentication_with_firebase/application/bloc/auth_bloc.dart';
import 'package:fpb/core/domain/user.dart';
import 'package:fpb/core/domain/virtualCard.dart';
import 'package:fpb/core/presentation/animations/slide_up_route_transition.dart';
import 'package:fpb/core/presentation/widget/vertical_spacing_widget.dart';
import 'package:fpb/core/shared/helpers/value_injector.dart';
import 'package:fpb/home/view/widgets/card_stack_widget.dart';
import 'package:fpb/home/view/widgets/cash_balance_widget.dart';
import 'package:fpb/home/view/widgets/custom_appbar.dart';
import 'package:fpb/home/view/widgets/display_latest_activity.dart';
import 'package:fpb/home/view/widgets/row_header_icons.dart';
import 'package:fpb/latest_activities/view/latest_activities_screen.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    final user = ValueInjector.of<User>(context)?.value ?? User.empty;
    if (user == User.empty) {
      context.read<AuthBloc>()..add(AuthEvent.logoutRequest());
    }
    return LayoutBuilder(
      builder: (context, box) {
        return NotificationListener<ScrollEndNotification>(
          onNotification: (scrollEnd) {
            final metrics = scrollEnd.metrics;
            if (metrics.atEdge) {
              bool isTop = metrics.pixels == 0;
              // check if scroll is at the bottom
              if (!isTop) {
                // run animation on pageRouteBuilder
                Navigator.push(
                  context,
                  SlideUpRoute(
                    widget: LatestActivitiesPage(),
                  ),
                );
              }
            }
            return true;
          },
          child: SafeArea(
            child: Scaffold(
              appBar: CustomAppBar(
                titleChildWidget: CircleAvatar(
                  backgroundImage: NetworkImage('${user.photo}'),
                ),
                actionChildWidget: [
                  RowHeaderIcons(
                    showSearchIcon: true,
                  ),
                ],
              ),
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    CashBalanceWidget(
                      box: box,
                    ),
                    VerticalSpacingWidget(
                      box: box,
                      height: box.maxHeight * 0.02,
                    ),
                    // virtual card display
                    CardStackWidget(
                      cards: [
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
                      ],
                    ),
                    VerticalSpacingWidget(
                      box: box,
                      height: box.maxHeight * 0.02,
                    ),
                    // Latest Activities
                    DisplayLatestActivity(
                      box: box,
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
