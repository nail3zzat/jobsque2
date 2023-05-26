import 'package:flutter/material.dart';


import '../styles/colors.dart';

class CustomTextField extends StatelessWidget {
  //dimensions
  final double? width;

  //body
  final TextEditingController? controller;
  final TextDirection? textDirection;
  final bool obscureText;
  final TextAlign textAlign;

  //functions
  final GestureTapCallback? onTap;
  final ValueChanged<String>? onChanged;

  //decoration
  final EdgeInsetsGeometry? contentPadding;
  final String? label;
  final String? hintText;
  final IconData? suffixIcon;
  final VoidCallback? suffixOnPressed;
  final Color? suffixIconColor;
  final IconData? prefixIcon;
  final VoidCallback? prefixOnPressed;
  final Color? prefixIconColor;
  final bool? filled;
  final double? borderRadius;
  final Color? fillColor;
  final Color? hintColor;
  final Color? enabledBorderColor;
  final Color? focusedBorderColor;
  final Color? errorBorderColor;
  final double? cursorHeight;
  final Color? cursorColor;
  final TextInputType? keyboardType;

  //control
  final FormFieldValidator? validator;

  const CustomTextField({
    super.key,
    //dimensions
    this.width,
    //body
    this.controller,
    this.textDirection,
    this.obscureText = false,
    this.textAlign = TextAlign.start,
    this.cursorHeight = 22,
    this.cursorColor = Colors.black,
    //functions
    this.onTap,
    this.onChanged,
    //decoration
    this.contentPadding,
    this.label,
    this.hintText,
    this.suffixIcon,
    this.suffixOnPressed,
    this.suffixIconColor,
    this.prefixIcon,
    this.prefixOnPressed,
    this.prefixIconColor,
    this.filled = true,
    this.borderRadius = 5,
    this.enabledBorderColor,
    this.focusedBorderColor,
    this.errorBorderColor,
    this.fillColor = Colors.white70,
    this.hintColor = Colors.black,
    //control
    this.validator,
    this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity,
      child: TextFormField(
        controller: controller,
        textDirection: textDirection,
        onTap: onTap,
        onChanged: onChanged,
        obscureText: obscureText,
        textAlign: textAlign,
        cursorHeight: cursorHeight,
        cursorColor: cursorColor,
        decoration: InputDecoration(
          contentPadding: contentPadding,
          label: label != null ? Text(label!) : null,
          hintText: hintText ?? "",
          suffixIcon: suffixIcon != null
              ? IconButton(onPressed: suffixOnPressed, icon: Icon(suffixIcon,color: suffixIconColor,))
              : null,
          prefixIcon: prefixIcon != null
              ? IconButton(onPressed: prefixOnPressed, icon: Icon(prefixIcon,color: prefixIconColor,))
              : null,
          filled: filled,
          fillColor: fillColor,
          hintStyle: TextStyle(
            height: 1,
            color: hintColor,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius!),
            borderSide: BorderSide(
              color: enabledBorderColor ?? Colors.transparent,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius!),
            borderSide: BorderSide(
              color: focusedBorderColor ?? AppColors.kPrimaryColor,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius!),
            borderSide: BorderSide(
              color: errorBorderColor ?? AppColors.kPrimaryColor,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius!),
            borderSide: BorderSide(
              color: focusedBorderColor ?? AppColors.kPrimaryColor,
            ),
          ),
        ),
        validator: validator,
        keyboardType: keyboardType,
      ),
    );
  }
}