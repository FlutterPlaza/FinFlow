import 'package:flutter/material.dart';
import 'package:fpb/assets/fpb_icons/fpb_icons_icons.dart';
import 'package:fpb/core/presentation/extension/extensions.dart';

class FpbTextFormField extends StatefulWidget {
  final String? label;
  final TextInputType? keyboardType;
  final String? errorMsg;
  final void Function(String text)? onChanged;
  final String? intialValue;
  final bool? enabled;
  final String? hintText;
  final IconData? suffixIcon;
  final bool? autofocus;
  final TextAlign? textAlign;
  final BoxConstraints box;
  final TextEditingController? textController;
  final FocusNode? focusNode;

  const FpbTextFormField({
    super.key,
    this.label,
    this.keyboardType,
    this.errorMsg,
    this.intialValue,
    this.onChanged,
    this.enabled,
    this.hintText,
    this.suffixIcon,
    this.autofocus,
    this.textAlign,
    this.textController,
    this.focusNode,
    required this.box,
  });

  @override
  State<FpbTextFormField> createState() => _FpbTextFormFieldState();
}

class _FpbTextFormFieldState extends State<FpbTextFormField> {
  late FocusNode focusNode = widget.focusNode ?? FocusNode();
  bool obscureText = true;

  bool get isPassword => TextInputType.visiblePassword == widget.keyboardType;

  @override
  void initState() {
    if (isPassword) {
      focusNode.addListener(() {
        setState(() {});
      });
    }

    super.initState();
  }

  late TextEditingController controller =
      TextEditingController(text: widget.intialValue);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final inputTheme = theme.inputDecorationTheme;
    final border = inputTheme.border as OutlineInputBorder;
    final enabledBorder = inputTheme.enabledBorder as OutlineInputBorder;
    final focusedBorder = inputTheme.focusedBorder as OutlineInputBorder;
    final errorBorder = inputTheme.errorBorder as OutlineInputBorder;
    final contentPadding = inputTheme.contentPadding;
    final hintStyle = inputTheme.hintStyle;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.label != null)
          Text(
            widget.label!,
            style: textTheme.titleSmall?.copyWith(
              color: theme.colorScheme.onInverseSurface,
            ),
          ),
        if (widget.label != null)
          SizedBox(
            height: widget.box.maxHeight * 0.00945,
          ),
        SizedBox(
          height: widget.box.maxHeight * 0.07,
          child: ClipRRect(
            borderRadius: border.borderRadius,
            // clipBehavior: Clip.none,
            child: AnimatedContainer(
              duration: const Duration(
                milliseconds: 200,
              ),
              decoration: BoxDecoration(
                // color: theme.colorScheme.background,
                borderRadius: border.borderRadius,
                border: Border.fromBorderSide(
                  () {
                    if (widget.errorMsg != null &&
                        widget.errorMsg!.isNotEmpty) {
                      return errorBorder.borderSide;
                    } else if (focusNode.hasFocus) {
                      return focusedBorder.borderSide;
                    } else if (widget.errorMsg == null) {
                      return enabledBorder.borderSide;
                    } else {
                      return enabledBorder.borderSide;
                    }
                  }(),
                ),
              ),
              padding: contentPadding,
              child: Row(
                children: [
                  Expanded(
                    child: Stack(
                      children: [
                        if (widget.hintText != null && controller.text.isEmpty)
                          Align(
                            alignment: () {
                              switch (widget.textAlign) {
                                case TextAlign.center:
                                  return Alignment.center;
                                case TextAlign.right:
                                case TextAlign.end:
                                  return Alignment.centerRight;
                                case TextAlign.left:
                                case TextAlign.start:
                                case TextAlign.justify:
                                default:
                                  return Alignment.centerLeft;
                              }
                            }(),
                            child: Text(
                              widget.hintText!,
                              style: hintStyle,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                            ),
                          ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            EditableText(
                              focusNode: focusNode,
                              // initialValue: widget.intialValue,
                              controller: controller,
                              // style: textTheme.bodyMedium,
                              keyboardType: widget.keyboardType,
                              textAlign: widget.textAlign ?? TextAlign.start,
                              autofocus: widget.autofocus ?? false,
                              textInputAction: TextInputAction.next,
                              // textAlignVertical: TextAlignVertical.center,
                              backgroundCursorColor: Colors.transparent,

                              style: textTheme.bodyLarge!,
                              // cursorHeight: 35 / 2,
                              obscureText: isPassword ? obscureText : false,
                              cursorColor: theme.colorScheme.secondary,
                              onChanged: (value) {
                                setState(() {});
                                widget.onChanged?.call(value);
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    child: () {
                      if (widget.suffixIcon != null) {
                        return Container(
                          child: Icon(widget.suffixIcon,
                              size: widget.box.maxHeight * 0.03),
                        );
                      } else if (!isPassword) {
                        return null;
                      }
                      return IconButton(
                        onPressed: () {
                          setState(() {
                            obscureText = !obscureText;
                          });
                        },
                        padding: EdgeInsets.zero,
                        icon: Icon(
                          obscureText ? FpbIcons.eye_open : FpbIcons.eye_closed,
                          color: theme.colorScheme.secondary,
                          size: obscureText
                              ? widget.box.maxHeight * 0.02
                              : widget.box.maxHeight * 0.03,
                        ),
                        color: theme.colorScheme.onSurface,
                      );
                    }(),
                  ),
                ],
              ),
            ),
          ),
        ).inputErrorMessage(widget.errorMsg)
      ],
    );
  }
}
