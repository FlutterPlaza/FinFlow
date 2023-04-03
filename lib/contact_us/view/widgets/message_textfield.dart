import 'package:flutter/material.dart';
import 'package:fpb/core/presentation/extension/extensions.dart';
import 'package:fpb/l10n/l10n.dart';

class MessageTextField extends StatefulWidget {
  const MessageTextField(
      {super.key,
      required this.theme,
      required this.box,
      required this.validator});

  final ThemeData theme;
  final BoxConstraints box;
  final String? Function(String?)? validator;

  @override
  State<MessageTextField> createState() => _MessageTextFieldState();
}

class _MessageTextFieldState extends State<MessageTextField> {
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
          autovalidateMode: AutovalidateMode.always,
          onChanged: (value) {
            setState(() {});
          },
          maxLength: 500,
          controller: messageController,
          validator: (value) =>
              widget.validator?.call(value) != null ? "" : null,
          maxLines: 3,
          decoration: InputDecoration(
            hintText: l10n.contactUsMessageTextFieldHintText,
            //errorText: '',
            errorStyle: const TextStyle(height: 0),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(widget.box.maxHeight * .025),
              borderSide: BorderSide(
                color: theme.colorScheme.onSurface,
              ),
            ),
          ),
        )
            .card(
              padding:
                  EdgeInsets.symmetric(vertical: widget.box.maxHeight * .007),
            )
            .inputErrorMessage(
              widget.validator?.call(messageController.text),
            ),
      ],
    );
  }
}
