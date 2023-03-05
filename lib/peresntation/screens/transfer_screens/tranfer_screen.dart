import 'package:bank_app/peresntation/components/drop_list_component.dart';
import 'package:bank_app/peresntation/components/genral_padding.dart';
import 'package:bank_app/peresntation/components/space_component.dart';
import 'package:bank_app/peresntation/components/text_component.dart';
import 'package:bank_app/peresntation/components/textfiled_component.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../components/app_bar/appbar_component.dart';
import '../../components/app_bar/drawer_component.dart';
import '../../components/general_button_component.dart';

class TransferScreen extends StatelessWidget {
  TransferScreen({Key? key}) : super(key: key);

  static List<String> data = [
    "جنية",
    "جنية استريلني",
    "دولار",
    "يورو",
  ];
  static List<String> data1 = [
    "بطاقة ائتمان",
    "بطاقة الخصم",
  ];
  dynamic dataController = data[1];
  dynamic data1Controller = data1[1];

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return Scaffold(
      appBar: NaturalAppBar(title: "التحويل"),
      drawerDragStartBehavior: DragStartBehavior.down,
      endDrawer:    DrawerComponent(),
      body: GeneralPadding(
        child: ListView(
          children: [
            DropList(list: data, value: dataController),
            SpaceComponent(
              height: media.height * .03,
            ),
            CustomTextField(
              controller: TextEditingController(),
              labelText: "المبلغ المراد تحويله",
            ),
            SpaceComponent(
              height: media.height * .03,
            ),
            CustomTextField(
              controller: TextEditingController(),
              labelText: "المبلغ المراد استلامه",
            ),
            SpaceComponent(
              height: media.height * .03,
            ),
            DropList(list: data1, value: data1Controller),
            SpaceComponent(
              height: media.height * .03,
            ),
            GeneralButton(
              width: media.width * 2,
              onPressed: () {},
              color: Colors.indigo,
              height: media.height * .05,
              child: TextComponent(
                text: "حفظ",
                fontSize: 16.sp,
                colorText: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
