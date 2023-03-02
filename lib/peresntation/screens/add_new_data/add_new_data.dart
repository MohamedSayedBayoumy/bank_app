import 'package:bank_app/peresntation/components/general_button_component.dart';
import 'package:bank_app/peresntation/components/textfiled_component.dart';
import 'package:flutter/material.dart';

import '../../components/drop_list_component.dart';
import '../../components/space_component.dart';

class AddNewData extends StatelessWidget {
  AddNewData({Key? key}) : super(key: key);

  dynamic banKController;
  dynamic branchController;
  dynamic typeAccountController;

  List<String> listOfBank = ["الاهلي", "البركة"];

  List<String> listOfBranch = [
    "الشيخ زايد",
    "التجمع",
    "مصر الجديده",
  ];
  List<String> typeAccount = [
    "توفير",
    "ادخال",
    "اخري",
  ];

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return Column(
      children: [
        DropList(list: listOfBank, value: banKController),
        SpaceComponent(),
        DropList(list: listOfBranch, value: branchController),
        SpaceComponent(),
        CustomTextField(
          controller: TextEditingController(),
          labelText: "رقم الحساب",
        ),
        SpaceComponent(),
        DropList(list: typeAccount, value: typeAccountController),
        SpaceComponent(),
        CustomTextField(
          controller: TextEditingController(),
          labelText: "نوع الحساب",
        ),
        SpaceComponent(),
        CustomTextField(
          controller: TextEditingController(),     /// <= show this when he choose "اخري"
          labelText: "بطاقة الصرف",
        ),
        SpaceComponent(),
        CustomTextField(
          controller: TextEditingController(),
          labelText: "بطاقة الصرف",
        ),
        SpaceComponent(),
        CustomTextField(
          controller: TextEditingController(),
          labelText: "تاريخ الصلاحيه البطاقة",
          textInputType: TextInputType.number,
        ),
          GeneralButton(width: media.width*2 ,onPressed: (){},color: Colors.indigo, child: const Text("حفظ") ,)
      ],
    );
  }
}