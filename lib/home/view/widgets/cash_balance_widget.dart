import 'package:flutter/material.dart';
import 'package:fpb/assets/fpb_icons/fpb_icons_icons.dart';
import 'package:fpb/l10n/l10n.dart';

class CashBalanceWidget extends StatelessWidget {
  const CashBalanceWidget({super.key, required this.box});

  final BoxConstraints box;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return SizedBox(
      height: box.maxHeight * 0.22,
      width: box.maxWidth * 0.95,
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: box.maxWidth * 0.025,
            vertical: box.maxHeight * 0.025,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    l10n.homeScreenCashBalance,
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  Text(
                    l10n.homeScreenUnallocated,
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ],
              ),
              SizedBox(
                height: box.maxHeight * 0.01,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '\$ 1,280.55',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const Icon(
                    FpbIcons.eye_open,
                    size: 18,
                    color: Colors.black,
                  )
                ],
              ),
              SizedBox(
                height: box.maxHeight * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        const Color(0xffF2F8FD),
                      ),
                      textStyle: MaterialStateProperty.all(
                        const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontFamily: 'open sans',
                          color: Color(0xff3AA0E7),
                          fontSize: 12,
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Icon(
                          Icons.add,
                          size: 10,
                          color: Color(0xff3AA0E7),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          l10n.homeScreenAddMoney,
                          style: Theme.of(context)
                              .textTheme
                              .displayMedium
                              ?.copyWith(
                                // color: _AppColors.primaryColorW,
                                //fontWeight: FontWeight.bold,
                                fontSize: 12,
                                fontFamily: 'open sans',
                              ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: box.maxWidth * 0.08,
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        const Color(0xffF2F8FD),
                      ),
                      textStyle: MaterialStateProperty.all(
                        const TextStyle(
                          fontSize: 12,
                          color: Color(0xff3AA0E7),
                          fontFamily: 'open sans',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: Row(
                      children: [
                        const Icon(
                          Icons.arrow_drop_down_circle_outlined,
                          size: 10,
                          color: Colors.blue,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          l10n.homeScreenWithdrawFunds,
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall
                              ?.copyWith(
                                // color: _AppColors.primaryColorW,
                                //fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
