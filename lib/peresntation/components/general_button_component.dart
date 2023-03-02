// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../../main.dart';
import '../controller/controllers.dart';

class GeneralButton extends StatefulWidget {
  void Function()? onPressed;

  dynamic child;

  dynamic elevation;

  dynamic color;

  dynamic width;

  dynamic height;

  GeneralButton({
    required this.onPressed,
    required this.child,
    this.elevation,
    this.color,
    this.height,
    this.width,
  });

  @override
  State<GeneralButton> createState() => _GeneralButtonState();
}

class _GeneralButtonState extends State<GeneralButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      child: ElevatedButton(
        onPressed: widget.onPressed,
        child: widget.child,
        style: ButtonStyle(
            elevation: MaterialStateProperty.all(widget.elevation),
            backgroundColor: MaterialStateProperty.all(widget.color),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5)))),
      ),
    );
  }
}
