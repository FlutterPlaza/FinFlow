import 'package:flutter/material.dart';
import 'package:fpb/l10n/l10n.dart';

class ErrorToastWidget extends StatelessWidget {
  const ErrorToastWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final theme = Theme.of(context);
    return Material(
      child: LayoutBuilder(builder: (context, box) {
        return ClipRRect(
          child: Padding(
            padding: EdgeInsets.all(box.maxHeight * .025),
            child: Container(
              width: box.maxWidth,
              height: box.maxHeight * .04,
              color: theme.colorScheme.errorContainer,
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.cancel,
                      size: box.maxHeight * .02,
                      color: theme.colorScheme.onError,
                    ),
                  ),
                  SizedBox(
                    height: box.maxWidth * .02,
                  ),
                  Text(
                    l10n.formSubmissionErrorAlertText,
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: theme.colorScheme.onError,
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
