import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Directionality_component.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  TextEditingController controller;
  IconData? icon;
  double? height;
  double? width;

  int? length;
  int? maxLength;
  int? minLength;
  String? labelText;
  String? hinText;
  bool? fill;
  Color? fillColor;
  Color? labelColor;
  InputBorder? styleBorder;

  String? Function(String?)? valid;
  String? Function(String?)? onChange;
  void Function()? onTapIcon;
  bool? enabled;
  TextInputType? textInputType;



  CustomTextField(
      {Key? key,
      required this.controller,
      this.icon,
      this.textInputType,
      this.labelColor,
      this.onChange,
      this.onTapIcon,
      this.maxLength,
      this.hinText,
      this.minLength,
      this.fill,
      this.fillColor,
      this.valid,
      this.labelText,
      this.enabled,
      this.length,
      this.height,
      this.styleBorder,
      this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ,
      child: Theme(
        data: Theme.of(context)
            .copyWith(colorScheme: const ColorScheme.light(primary: Colors.black)),
        child: DirectionalityComponent(
          child: TextFormField(

            keyboardType: textInputType,
            textDirection: TextDirection.rtl,
            textAlign: TextAlign.right,
            onChanged: onChange,
            onTap: onTapIcon,

            enabled: enabled,
            validator: valid,
            controller: controller,
            minLines: maxLength,
            maxLines: minLength,
            maxLength: length,
            maxLengthEnforcement:
                MaxLengthEnforcement.truncateAfterCompositionEnds,
            decoration: InputDecoration(



              labelText: labelText,
              labelStyle:
                    TextStyle( color: labelColor ?? Colors.indigo),
              hintText: hinText,
              prefixIcon: icon == null ? null : Icon(icon),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide( color: Colors.black87)),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10) , ),
            ),
          ),
        ),
      ),
    );
  }
}
