import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../utils/color_palette_util.dart';

class CTextFormField extends StatelessWidget {
  final String? hintText;
  final String? helperText;
  final bool? enabled;
  final bool? centerText;
  final bool? readOnly;
  final bool? isBorderLess;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final double? hintTextLetterSpacing;
  final VoidCallback? onTap;
  final TextInputType? keyboardType;
  final Function(String)? onChanged;
  final double? fontSize;
  final TextEditingController? controller;
  final TextInputAction? textInputAction;
  final Function(String)? onFieldSubmitted;
  final String? labelText;
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? inputFormatters;

  CTextFormField({
    this.hintText,
    this.isBorderLess = false,
    this.centerText = false,
    this.prefixIcon,
    this.enabled,
    this.onTap,
    this.validator,
    this.labelText,
    this.helperText,
    this.readOnly,
    this.onFieldSubmitted,
    this.onChanged,
    this.fontSize,
    this.controller,
    this.textInputAction,
    this.suffixIcon,
    this.inputFormatters,
    this.keyboardType,
    this.hintTextLetterSpacing,
  });

  @override
  Widget build(BuildContext context) {
    final border = isBorderLess!
        ? InputBorder.none
        : OutlineInputBorder(
            borderSide: BorderSide(
              color: ColorPallete.greyColor,
            ),
          );
    return TextFormField(
      inputFormatters: inputFormatters,
      controller: controller,
      textAlign: centerText! ? TextAlign.center : TextAlign.start,
      onChanged: onChanged,
      onTap: onTap,
      readOnly: readOnly ?? false,
      autofocus: false,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      onFieldSubmitted: (String value) {
        onFieldSubmitted!(value);
      },
      validator: validator,
      enabled: enabled,
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            fontSize: fontSize ?? 16,
            color: Colors.black54,
            letterSpacing: hintTextLetterSpacing,
          ),
          border: border,
          enabledBorder: border,
          labelText: labelText,
          focusedBorder: border,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          helperText: helperText),
    );
  }
}
