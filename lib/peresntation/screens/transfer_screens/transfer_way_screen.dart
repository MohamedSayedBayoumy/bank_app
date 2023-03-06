import 'package:bank_app/peresntation/components/drop_list_component.dart';
import 'package:bank_app/peresntation/components/genral_padding.dart';
import 'package:bank_app/peresntation/components/space_component.dart';
import 'package:bank_app/peresntation/components/text_component.dart';
import 'package:bank_app/peresntation/components/textfiled_component.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../components/app_bar/custom_app_bar.dart';
import '../../components/app_bar/drawer_component.dart';
import '../../components/general_button_component.dart';

class TransferWayScreen extends StatefulWidget {
  const TransferWayScreen({Key? key}) : super(key: key);

  @override
  State<TransferWayScreen> createState() => _TransferWayScreenState();
}

class _TransferWayScreenState extends State<TransferWayScreen> {
  static List<String> data = [
    "سد دين",
    "سلف",
    "اخري",
  ];
  dynamic dataController = data[0];

  bool isChecked = false;

  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.indigo.shade900;
    }
    return Colors.blue;
  }

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return Scaffold(
      appBar: CustomAppBar(
          needIconBell: true,
          customSize: media.height * .12,
          title: 'اختيار طريقة التسليم',
          onPressedButtonBack: () {
            /// TODO : SOME THING
          },
          onPressedButtonMenu: () {
            /// TODO : SOME THING
          }),
      drawerDragStartBehavior: DragStartBehavior.down,
      endDrawer: DrawerComponent(),
      body: GeneralPadding(
        child: ListView(
          children: [
            TextComponent(
              text: " طريقة التحويل",
              isBold: true,
              fontSize: 25.sp,
              colorText: Colors.indigo,
            ),
            SpaceComponent(),
            Row(
              /// TODO : Select one check Box
              children: [
                const Text("ايداع بنكي"),
                Checkbox(
                  checkColor: Colors.white,
                  fillColor: MaterialStateProperty.resolveWith(getColor),
                  value: isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = value!;
                    });
                  },
                ),
                const Spacer(),
                const Text("تسليم نقدي"),
                Checkbox(
                  checkColor: Colors.white,
                  fillColor: MaterialStateProperty.resolveWith(getColor),
                  value: isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = value!;
                    });
                  },
                ),
              ],
            ),
            SpaceComponent(),
            DropList(list: data, value: dataController),
            SpaceComponent(
              height: media.height * .03,
            ),
            CustomTextField(
              borderColor: Colors.black,
              controller: TextEditingController(),

              /// TODO : show this when choose "اخري"
              labelText: "الرجاء كتابة الغرض",
            ),
            SpaceComponent(
              height: media.height * .02,
            ),
            GeneralButton(
              width: media.width * 2,
              onPressed: () {},
              color: Colors.indigo,
              child: TextComponent(
                  text: "التالي", colorText: Colors.white, fontSize: 15.sp),
            ),
          ],
        ),
      ),
    );
  }
}
