import 'package:flutter/material.dart';
import 'package:fpb/l10n/l10n.dart';
import 'package:fpb/core/presentation/extension/extensions.dart';

class messageTextField extends StatefulWidget {
  const messageTextField(
      {super.key,
      required this.theme,
      required this.box,
      required this.validator});

  final ThemeData theme;
  final BoxConstraints box;
  final String? Function(String?)? validator;

  @override
  State<messageTextField> createState() => _messageTextFieldState();
}

class _messageTextFieldState extends State<messageTextField> {
  final messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final theme = Theme.of(context);
    final style = theme.textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          l10n.contactUsMessageTextFieldLabel,
          style: style.titleSmall,
        ),
        TextFormField(
          onChanged: (value) {
            setState(() {});
          },
          maxLength: 500,
          controller: messageController,
          //validator: widget.validator,
          maxLines: 3,
          decoration: InputDecoration(
            hintText: l10n.contactUsMessageTextFieldHintText,
            errorStyle: TextStyle(
              color: theme.colorScheme.secondaryContainer,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(widget.box.maxHeight * .025),
              borderSide: BorderSide(
                color: theme.colorScheme.onSurface,
              ),
            ),
          ),
        ).validatorWidget(widget.validator?.call(messageController.text)).card(
            padding:
                EdgeInsets.symmetric(vertical: widget.box.maxHeight * .007)),
      ],
    );
  }
}
