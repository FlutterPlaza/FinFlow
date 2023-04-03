import 'package:flutter/material.dart';
import 'package:fpb/assets/fpb_icons/fpb_icons_icons.dart';
import 'package:fpb/core/presentation/extension/extensions.dart';

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
    this.showLabelText = true,
    required this.box,
    this.validator,
    this.keyboardType = TextInputType.text,
  });

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
  final TextInputType? keyboardType;

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
                style: textTheme.titleSmall?.copyWith(
                  color: theme.colorScheme.onInverseSurface,
                ),
              )
            : SizedBox(),
        TextFormField(
          autovalidateMode: AutovalidateMode.always,
          validator: (value) =>
              widget.validator?.call(value) != null ? "" : null,
          controller: widget.textController,
          focusNode: widget.node,
          keyboardType: widget.isEmail
              ? TextInputType.emailAddress
              : widget.isPassword
                  ? TextInputType.visiblePassword
                  : widget.keyboardType,
          onChanged: widget.onChanged,
          obscureText: hidePassword ?? false,
          style: textTheme.titleSmall?.copyWith(
            color: theme.colorScheme.secondary,
            fontFamily: 'Open Sans',
          ),
          decoration: InputDecoration(
            errorStyle: const TextStyle(height: 0),
            // fillColor: Colors.black,
            // focusedBorder: OutlineInputBorder(
            //   borderSide: const BorderSide(color: Colors.red, width: 2.0),
            //   borderRadius: BorderRadius.circular(25.0),
            // ),
            //errorText: widget.errorText,
            suffixIcon: !widget.isPassword
                ? null
                : Padding(
                    padding:
                        EdgeInsets.only(right: widget.box.maxWidth * 0.015),
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          hidePassword = !hidePassword!;
                        });
                      },
                      icon: Icon(
                        hidePassword == true
                            ? FpbIcons.eye_open
                            : FpbIcons.eye_closed,
                        color: theme.colorScheme.secondary,
                        size: hidePassword == true
                            ? widget.box.maxHeight * 0.02
                            : widget.box.maxHeight * 0.03,
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
              height: widget.box.maxHeight * 0.08,
            )
            .validatorWidget(
                //widget.textController != null && widget.textController!.text.isEmpty ? null :
                widget.validator?.call(widget.textController?.text)),
      ],
    );
  }
}
