// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../../main.dart';
import '../controller/controllers.dart';

class GeneralButton extends StatelessWidget {
  void Function()? onPressed;

  dynamic child;

  dynamic elevation;

  dynamic color;

  dynamic width;

  dynamic height;
  dynamic borderStyle;

  GeneralButton({
    required this.onPressed,
    required this.child,
    this.elevation,
    this.borderStyle,
    this.color,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width:  width,
      height: height,
      child: ElevatedButton(
        onPressed:  onPressed,
        child: child,
        style: ButtonStyle(
            elevation: MaterialStateProperty.all(elevation),
            backgroundColor: MaterialStateProperty.all(color),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderStyle ?? 5)))),
      ),
    );
  }
}
