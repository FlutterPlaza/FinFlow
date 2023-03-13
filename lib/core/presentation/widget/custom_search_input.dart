import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomSearchInput extends StatelessWidget {
  const CustomSearchInput({
    @required this.labelText,
    this.errorText,
    this.showSuffix,
    this.showSuffixIcon = false,
    this.assetSvgPath,
    @required this.keyboardType,
    this.controller,
    this.onChanged,
    this.suffixIconWidget,
    this.onTap,
    this.onTapSuffix,
    this.readOnly = false,
    this.obscureText = false,
    this.showlabel = true,
    this.inputFormatters,
    required this.box,
  });

  final BoxConstraints box;
  final String? labelText;
  final String? errorText;
  final bool? showSuffix;
  final bool? showSuffixIcon;
  final String? assetSvgPath;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final void Function(String)? onChanged;
  final Widget? suffixIconWidget;
  final void Function()? onTap;
  final void Function()? onTapSuffix;
  final bool? readOnly;
  final bool? obscureText;
  final bool? showlabel;
  final List<TextInputFormatter>? inputFormatters;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: box.maxHeight * 0.1,
            child: Center(
              child: TextField(
                controller: controller,
                keyboardType: keyboardType,
                obscureText: obscureText!,
                onChanged: onChanged,
                onTap: onTap,
                readOnly: readOnly!,
                cursorColor: Colors.black,
                inputFormatters: inputFormatters,
                decoration: InputDecoration(
                  hintText: labelText,
                  fillColor: Colors.transparent,
                  filled: true,
                  errorText: errorText,
                  enabledBorder: OutlineInputBorder(
                    // width: 0.0 produces a thin "hairline" border
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 0.0,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    // width: 0.0 produces a thin "hairline" border
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                  border: OutlineInputBorder(),
                  hintStyle: TextStyle(
                    fontSize: box.maxWidth * 0.04,
                  ),
                  suffixIcon: showSuffix == true
                      ? InkWell(
                          onTap: onTapSuffix,
                          child: Container(
                            height: 5,
                            margin: EdgeInsets.only(
                              right: 15.0,
                            ),
                            child: Image.asset(
                              assetSvgPath!,
                              height: box.maxHeight * 0.002,
                              width: 2,
                            ),
                          ),
                        )
                      : showSuffixIcon == true
                          ? suffixIconWidget
                          : null,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
