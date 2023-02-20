import 'package:flutter/material.dart';
import 'package:fpb/assets/fpb_icons/fpb_icons_icons.dart';

class FpbTextFormField extends StatefulWidget {
  const FpbTextFormField({
    super.key,
    required this.label,
    required this.hint,
    this.textController,
    this.node,
    this.isEmail = false,
    this.isPassword = false,
    this.onChanged,
    this.errorText,
  });

  final String label;
  final String hint;
  final bool isEmail;
  final bool isPassword;
  final TextEditingController? textController;
  final FocusNode? node;
  final void Function(String)? onChanged;
  final String? errorText;

  @override
  State<FpbTextFormField> createState() => _FpbTextFormFieldState();
}

class _FpbTextFormFieldState extends State<FpbTextFormField> {
  late bool? hidePassword;
  @override
  void initState() {
    super.initState();
    hidePassword = widget.isPassword ? false : null;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: textTheme.titleLarge,
        ),
        const SizedBox(
          height: 8,
        ),
        TextFormField(
          controller: widget.textController,
          focusNode: widget.node,
          keyboardType: widget.isEmail
              ? TextInputType.emailAddress
              : widget.isPassword
                  ? TextInputType.visiblePassword
                  : TextInputType.none,
          onChanged: widget.onChanged,
          obscureText: hidePassword ?? false,
          decoration: InputDecoration(
            // suffixIconColor:
            errorText: widget.errorText,

            suffixIcon: !widget.isPassword
                ? null
                : hidePassword!
                    ? Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: IconButton(
                          onPressed: () {
                            setState(() {
                              hidePassword = !hidePassword!;
                            });
                          },
                          icon: const Icon(FpbIcons.eye_closed),
                          color: widget.node != null
                              ? widget.node!.hasFocus
                                  ? theme.colorScheme.onSurface
                                  : null
                              : theme.colorScheme.onSurface,
                        ),
                      )
                    : Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: IconButton(
                          onPressed: () {
                            setState(() {
                              hidePassword = !hidePassword!;
                            });
                          },
                          icon: const Icon(
                            FpbIcons.eye_open,
                            size: 17,
                          ),
                          color: widget.node != null
                              ? widget.node!.hasFocus
                                  ? theme.colorScheme.onSurface
                                  : null
                              : theme.colorScheme.onSurface,
                        ),
                      ),
            hintText: widget.hint,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
      ],
    );
  }
}
