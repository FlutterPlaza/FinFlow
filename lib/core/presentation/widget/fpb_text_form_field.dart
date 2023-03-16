import 'package:flutter/material.dart';
import 'package:fpb/assets/fpb_icons/fpb_icons_icons.dart';
import 'package:fpb/core/presentation/extension/extensions.dart';

class FpbTextFormField extends StatefulWidget {
  const FpbTextFormField(
      {super.key,
      required this.label,
      required this.hint,
      this.textController,
      this.node,
      this.isEmail = false,
      this.isPassword = false,
      this.onChanged,
      this.errorText,
      this.showLabelText = true,
      required this.box,
      this.validator});

  final String label;
  final String hint;
  final bool isEmail;
  final bool isPassword;
  final TextEditingController? textController;
  final FocusNode? node;
  final void Function(String)? onChanged;
  final String? errorText;
  final BoxConstraints box;
  final bool showLabelText;
  final String? Function(String?)? validator;

  @override
  State<FpbTextFormField> createState() => _FpbTextFormFieldState();
}

class _FpbTextFormFieldState extends State<FpbTextFormField> {
  late bool? hidePassword;
  bool? showLabel;

  @override
  void initState() {
    super.initState();
    hidePassword = widget.isPassword ? false : null;
    showLabel = widget.showLabelText ? true : false;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        showLabel == true
            ? Text(
                widget.label,
                style: textTheme.titleSmall,
              )
            : SizedBox(),
        TextFormField(
          autovalidateMode: AutovalidateMode.always,
          validator: (value) => widget.validator?.call(value) != null ? "" : null,
          controller: widget.textController,
          focusNode: widget.node,
          keyboardType: widget.isEmail
              ? TextInputType.emailAddress
              : widget.isPassword
                  ? TextInputType.visiblePassword
                  : TextInputType.text,
          onChanged: widget.onChanged,
          obscureText: hidePassword ?? false,
          style: textTheme
              .titleSmall, //bodyMedium //.copyWith(color: colors.onSurface),
          decoration: InputDecoration(
            errorStyle: const TextStyle(height: 0),
            //errorText: widget.errorText,
            suffixIcon: !widget.isPassword
                ? null
                : hidePassword!
                    ? Padding(
                        padding:
                            EdgeInsets.only(right: widget.box.maxWidth * 0.05),
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
                        padding:
                            EdgeInsets.only(right: widget.box.maxWidth * 0.05),
                        child: IconButton(
                          onPressed: () {
                            setState(() {
                              hidePassword = !hidePassword!;
                            });
                          },
                          icon: const Icon(
                            FpbIcons.eye_open,
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
        )
            .card(
              //height: widget.box.maxHeight * 0.14,
              padding: EdgeInsets.symmetric(
                vertical: widget.box.maxHeight * 0.009,
              )).validatorWidget(
                //widget.textController != null && widget.textController!.text.isEmpty ? null :
                widget.validator?.call(
                  widget.textController?.text)),
           
      ],
    );
  }
}
