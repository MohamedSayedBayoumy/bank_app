import 'package:flutter/material.dart';

class TextComponent extends StatelessWidget {
  String text;
  dynamic colorText;
  dynamic isBold;
  dynamic fontSize;
  dynamic fontFamily;

  TextComponent({this.colorText,this.fontFamily, this.isBold,  this.fontSize, required this.text, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textDirection: TextDirection.rtl,
      style: TextStyle(
        fontFamily: fontFamily,
          color: colorText ?? Colors.indigo.shade500,
          fontSize: fontSize ?? 25,
          fontWeight: isBold == true ? FontWeight.bold : null),
    );
  }
}
