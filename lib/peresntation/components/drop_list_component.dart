import 'package:bank_app/peresntation/components/Directionality_component.dart';
import 'package:bank_app/peresntation/controller/controllers.dart';
import 'package:flutter/material.dart';

class DropList extends StatefulWidget {
  final List<String>? list;

  dynamic value;

  double? height;
  double? width;

  DropList(
      {this.width,
      this.height,

      required this.list,
      required this.value,
      Key? key})
      : super(key: key);

  @override
  State<DropList> createState() => _DropList();
}

class _DropList extends State<DropList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      padding: const EdgeInsets.symmetric(horizontal: 25),
      alignment: Alignment.bottomCenter,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.black87),
        borderRadius: BorderRadius.circular(30),
      ),
      child: DirectionalityComponent(
        child: DropdownButton(
          iconEnabledColor: Colors.indigo,
          iconSize: 38,
          itemHeight: 60.0,
          isExpanded: true,

          style: const TextStyle(color: Colors.black87 , fontWeight: FontWeight.bold ,fontSize: 18),
          value: widget.value.toString(),
          items: widget.list!.map((valueItem) {
            return DropdownMenuItem(
                value: valueItem,
                child: DirectionalityComponent(
                    child: Text(
                  valueItem.toString(),
                )));
          }).toList(),
          onChanged: (val) {
            setState(() {
              widget.value = val;
              print(widget.value);
            });
          },
        ),
      ),
    );
  }
}
