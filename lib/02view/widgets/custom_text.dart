import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;

  //--------------------Style
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  final FontStyle? fontStyle;
  final TextDecoration? decoration;
  final String? fontFamily;
  final TextOverflow? overflow;
  final double? height;
  final TextAlign? textAlign;

  const CustomText({
    Key? key,
    required this.text,
    //--------------------Style
    this.color,
    this.fontSize,
    this.fontWeight,
    this.fontStyle,
    this.decoration,
    this.fontFamily,
    this.overflow,
    this.height,  this.textAlign,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign ,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
        fontStyle: fontStyle,
        decoration: decoration,
        fontFamily: fontFamily,
        overflow: overflow,
        height: height,

      ),
    );
  }
}
