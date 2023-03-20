import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fpb/assets/fpb_svg.dart';
import 'package:fpb/core/presentation/widget/vertical_spacing_widget.dart';

class AccountLinked extends StatelessWidget {
  const AccountLinked({
    super.key,
    required this.box,
    required this.assetName,
    required this.onTap,
  });

  final BoxConstraints box;
  final String assetName;
  final dynamic Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: box.maxWidth,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset(
            SvgNames.paypal,
          ),
          VerticalSpacingWidget(box: box),
          Container(
            width: box.maxWidth,
            child: Wrap(
              alignment: WrapAlignment.spaceBetween,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                Container(
                  child: Wrap(
                    spacing: 5.0,
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                          'https://media.istockphoto.com/id/1381221247/photo/beautiful-afro-girl-with-curly-hairstyle.jpg?b=1&s=170667a&w=0&k=20&c=0x91osZOkL8EfhTEEGNa2EeCGN2gdMTNULOsUFW_0i4=',
                        ),
                        radius: box.maxHeight * 0.026,
                      ),
                      SizedBox(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '@john_merry',
                              style: Theme.of(context).textTheme.titleSmall,
                            ),
                            SizedBox(
                              height: box.maxHeight * 0.009,
                            ),
                            Text(
                              'John Merry',
                              style: Theme.of(context).textTheme.labelMedium,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: onTap,
                  child: Icon(
                    Icons.delete,
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
