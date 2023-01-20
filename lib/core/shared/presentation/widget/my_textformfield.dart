import 'package:flutter/material.dart';
import 'package:fpb/assets/fpb_icons/fpb_icons_icons.dart';
import 'package:fpb/core/shared/presentation/theming/theming.dart';

class FpbTextFormField extends StatefulWidget {
  const FpbTextFormField({
    super.key,
    required this.label,
    required this.hint,
    this.textController,
    this.node,
    this.isEmail = false,
    this.isPassword = false,
  });

  final String label;
  final String hint;
  final bool isEmail;
  final bool isPassword;
  final TextEditingController? textController;
  final FocusNode? node;

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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: Theme.of(context).textTheme.headline6,
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
          obscureText: hidePassword ?? false,
          decoration: InputDecoration(
            // suffixIconColor:
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
                                  ? Theme.of(context).colorScheme.onSurface
                                  : null
                              : AppColors.cardColorW,
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
                                  ? Theme.of(context).colorScheme.onSurface
                                  : null
                              : AppColors.cardColorW,
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
