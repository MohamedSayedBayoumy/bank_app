//import 'package:bank_app/core/animation.dart';
import 'package:bank_app/peresntation/components/general_button_component.dart';
import 'package:bank_app/peresntation/controller/controllers.dart';
import 'package:flutter/material.dart';

import '../../components/app_bar/custom_app_bar.dart';
import '../../components/drop_list_component.dart';
import '../../components/genral_padding.dart';
import '../../components/get_image.dart';
import '../../components/space_component.dart';
import '../../components/textfiled_component.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  static dynamic selectChoiceCountries = countries[1];

  static dynamic selectChoiceType = type[1];

  static dynamic boolSelectChoiceId = false;

  static List<String> countries = [
    "مصر",
    "السعوديه",
    "الامارات",
    "تركيا",
    "امريكا",
    "لبنان",
  ];

  static List<String> type = [
    "ذكر",
    "أنثي",
  ];

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return Scaffold(
      appBar: CustomAppBar(
          customSize: media.height * .12,
          needIconBell: false,
          title: 'تسجيل مستخدم جديد',
          onPressedButtonBack: () {
            /// TODO : SOME THING
          },
          onPressedButtonMenu: () {
            /// TODO : SOME THING
          }),
      body: GeneralPadding(
        child: ListView(
          shrinkWrap: true,
          children: [
            DropList(
                list: countries,
                value: selectChoiceCountries,
                styleBorder: 15.0),
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
            DropList(list: type, value: selectChoiceType, styleBorder: 15.0),
            SpaceComponent(),
            CustomTextField(
                labelText: "تاريخ الميلاد",
                controller: TextEditingController()),

            /// TODO :  Set Image ------------------------------

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
