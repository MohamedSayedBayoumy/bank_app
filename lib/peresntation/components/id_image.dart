import 'package:bank_app/peresntation/components/drop_list_component.dart';
import 'package:bank_app/peresntation/controller/controllers.dart';
import 'package:flutter/material.dart';

class ContentId extends StatefulWidget {
  Widget? widget;

  ContentId({Key? key}) : super(key: key);

  @override
  State<ContentId> createState() => _ContentIdState();
}

class _ContentIdState extends State<ContentId> {


  static dynamic selectChoiceId =typeId[1] ;

  static List<String> typeId = [
    "جواز سفر",
    "بطاقة",
    "رخصة قيادة",
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropList(list:  typeId, value: selectChoiceId),
        widget.widget! ,
      ],
    );
  }
}
