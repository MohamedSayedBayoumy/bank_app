//import 'package:bank_app/core/animation.dart';
import 'package:bank_app/peresntation/components/general_button_component.dart';
import 'package:bank_app/peresntation/controller/controllers.dart';
import 'package:flutter/material.dart';

import '../components/app_bar/appbar_component.dart';
import '../components/drop_list_component.dart';
import '../components/genral_padding.dart';
import '../components/get_image.dart';
import '../components/space_component.dart';
import '../components/textfiled_component.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //  Controller.data();

    ///    Fetch Data "Last_data_screen (التحويلات السابقة)"
    return Scaffold(
      appBar: NaturalAppBar(title: "تسجيل دخول جديد" ,),
      body: GeneralPadding(
        child: ListView(
          children: [
            DropList(
                list: Controller.countries, value: Controller.selectChoiceType),
            SpaceComponent(),
            CustomTextField(
                labelText: "الاسم باللغة الانجليزيه",
                controller: Controller.nameEn),
            SpaceComponent(),
            CustomTextField(
                labelText: "الاسم باللغة العربيه",
                controller: Controller.nameEn),
            SpaceComponent(),
            CustomTextField(
                labelText: "رقم الهاتف", controller: TextEditingController()),
            SpaceComponent(),
            CustomTextField(
                labelText: "البريد الالكتروني",
                controller: TextEditingController()),
            SpaceComponent(),
            CustomTextField(
                labelText: "كلمة المرور", controller: TextEditingController()),
            SpaceComponent(),
            CustomTextField(
                labelText: "تأكيد كلمة المرور",
                controller: TextEditingController()),
            SpaceComponent(),
            CustomTextField(
                labelText: "العنوان", controller: TextEditingController()),
            SpaceComponent(),
            DropList(list: Controller.type, value: Controller.selectChoiceType),
            SpaceComponent(),
            CustomTextField(
                labelText: "تاريخ الميلاد",
                controller: TextEditingController()),
            GetImageComponent(text: "الصورة"),
            Text(Controller.warning1, textDirection: TextDirection.rtl),
            SpaceComponent(),
            Text(Controller.warning2, textDirection: TextDirection.rtl),
            SpaceComponent(),
            TextButton(
              onPressed: () {
                /// TODO : Navigator
              },
              child: Text(
                Controller.warning3,
                textDirection: TextDirection.rtl,
                style: const TextStyle(decoration: TextDecoration.underline),
              ),
            ),
            GeneralButton(
                onPressed: () {
                  /// TODO : Register
                },
                color: Colors.indigo,
                child: const Text("تسجيل")),
          ],
        ),
      ),
    );
  }
}
