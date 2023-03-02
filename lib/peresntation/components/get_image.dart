import 'package:bank_app/peresntation/components/Directionality_component.dart';
import 'package:bank_app/peresntation/components/id_image.dart';
import 'package:flutter/material.dart';

import 'alert.dart';

class GetImageComponent extends StatefulWidget {
  final String text ;
    GetImageComponent({required this.text,Key? key}) : super(key: key);

  @override
  State<GetImageComponent> createState() => _GetImageComponentState();
}

class _GetImageComponentState extends State<GetImageComponent> {
  @override
  Widget build(BuildContext context) {
    return DirectionalityComponent(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
            Text(
            widget.text,
            style: const TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),
          ),
          OutlinedButton(
              onPressed: () {
              alertDialog(context ,child: ContentId() ,stringTitle: "اختيار الهوية") ;
              },

              child:  const Text(
                "ارفاق",
                style: TextStyle(color: Colors.indigo,fontSize: 20 ,),
              )),
        ],
      ),
    );
  }
}
