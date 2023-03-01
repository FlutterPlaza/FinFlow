import 'package:flutter/material.dart';
import 'package:fpb/l10n/l10n.dart';

class ProfileInfoOptions extends StatelessWidget {
  const ProfileInfoOptions({
    super.key,
    required this.box,
    required this.icon,
    required this.text
    });

    final BoxConstraints box;
    final String text;
    final IconData icon;

  @override
  Widget build(BuildContext context) {
    //final l10n = context.l10n;
    final theme = Theme.of(context);
    final style = theme.textTheme;
    
    return Container(
      child: Padding(
        padding:   EdgeInsets.symmetric(vertical: box.maxHeight * .007),
        child: Row(
          children: [
            IconButton(
              onPressed: ( ){}, 
              icon: Icon(
                icon,
                color: theme.colorScheme.secondaryContainer,
              )),
              SizedBox(
                width: box.maxWidth * .03,
              ),
              Text(text,
              style: style.titleMedium,)
          ],
        ),
      ),
    );
  }
}