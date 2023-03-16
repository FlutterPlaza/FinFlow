import 'package:flutter/material.dart';

class AccountLinked extends StatelessWidget {
  const AccountLinked({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            'Paypal',
          ),
          Text(
            'Widget for linked account',
          ),
        ],
      ),
    );
  }
}
