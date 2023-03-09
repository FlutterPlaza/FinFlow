import 'package:flutter/material.dart';
import 'package:fpb/core/presentation/extension/extensions.dart';

class messageTextField extends StatelessWidget {
  const messageTextField(
      {super.key,
      required this.theme,
      required this.box,
      required this.validator});

  final ThemeData theme;
  final BoxConstraints box;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final style = theme.textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Message',
          style: style.titleSmall,
        ),
        TextFormField(
          validator: validator,
          maxLines: 5,
          decoration: InputDecoration(
            hintText: 'leave a message...',
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(box.maxHeight * .025),
              borderSide: BorderSide(
                color: theme.colorScheme.onSurface,
              ),
            ),
          ),
        ).card(padding: EdgeInsets.symmetric(vertical: box.maxHeight * .007)),
      ],
    );
  }
}
