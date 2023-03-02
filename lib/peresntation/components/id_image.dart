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



  Widget firstWidget() {
    return Container(color: Colors.red, child: const Text("Hi"));
  }

  Widget defaultt() {
    return Container(color: Colors.red, child: const Text("lol"));
  }

  @override
  void initState() {
    widget.widget = defaultt() ;

    super.initState();
    if (Controller.selectChoiceId == "جواز سفر") {
      print("lllllllllllllll") ;
      setState(() {
        widget.widget = firstWidget() ;
      });
    }

  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropList(list: Controller.typeId, value: Controller.selectChoiceId),
        widget.widget! ,
      ],
    );
  }
}
