import 'package:bank_app/peresntation/components/general_button_component.dart';
import 'package:bank_app/peresntation/components/genral_padding.dart';
import 'package:bank_app/peresntation/components/space_component.dart';
import 'package:bank_app/peresntation/components/text_component.dart';
import 'package:bank_app/peresntation/components/textfiled_component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../components/app_bar/custom_app_bar.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  static bool selectChoiceCountries = false;

  static List<String> countries = [
    "مصر",
    "السعوديه",
    "الامارات",
    "تركيا",
    "امريكا",
    "لبنان",
  ];

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return Scaffold(
      appBar: CustomAppBar(
          customSize: media.height * .12,
          needIconBell: false,
          title: 'تسجيل الدخول',
          onPressedButtonBack: () {
            /// TODO : SOME THING
          },
          onPressedButtonMenu: () {
            /// TODO : SOME THING
          }),
      body: GeneralPadding(
        child: ListView(
          children: [
            SpaceComponent(
              height: media.height * .08,
            ),
            CustomTextField(
              prefixIcon: Icons.email_outlined,
              controller: TextEditingController(),
              labelText: "البريد الالكتروني",
              curveBorder: 6.0.sp,
              fill: true,
              fillColor: Colors.grey.shade300,
            ),
            SpaceComponent(
              height: media.height * .03,
            ),
            CustomTextField(
              prefixIcon: Icons.lock_outline_rounded,
              suffixIcon: Icons.visibility_outlined,
              onPressedSuffixIcon: () {
                /// TODO : show Password
              },
              controller: TextEditingController(),
              labelText: "كلمة المرور",
              curveBorder: 6.0.sp,
              fill: true,
              fillColor: Colors.grey.shade300,
            ),
            Row(
              children: [
                TextButton(
                    onPressed: () {},
                    child: TextComponent(
                      text: "نسيت كلمة المرور ؟ ",
                      fontSize: 12.0.sp,
                      colorText: Colors.black54,
                    )),
                const Spacer(),
                TextComponent(
                  text: "تذكرني",
                  fontSize: 12.0.sp,
                  colorText: Colors.black54,
                ),
                Checkbox(
                  fillColor: MaterialStateProperty.all(Colors.pinkAccent),
                  shape: const CircleBorder(),
                  value: selectChoiceCountries,
                  onChanged: (value) {
                    /// TODO : S
                  },
                ),
                SpaceComponent(
                  width: media.width * .02,
                ),
              ],
            ),
            GeneralButton(
              onPressed: () {},
              color: Colors.pinkAccent.shade200,
              height: media.height * .06,
              child: TextComponent(
                text: "الدخول",
                fontSize: 18.0.sp,
                colorText: Colors.white,
                isBold: true,
              ),
            ),
            SpaceComponent(),
            GeneralButton(
              onPressed: () {},
              color: Colors.indigo,
              height: media.height * .06,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SpaceComponent(
                    width: media.width * .03,
                  ),
                  Image.asset("assets/fingerprint.png",
                      color: Colors.pinkAccent),
                  SpaceComponent(
                    width: media.width * .05,
                  ),
                  TextComponent(
                    text: " الدخول الأمن بالبصمة",
                    fontSize: 18.0.sp,
                    colorText: Colors.white.withOpacity(.5),
                    isBold: true,
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: () {
                      /// TODO : Navigate to Register
                    },
                    child:  TextComponent(
                      text : "اضغط هنا للستجيل",
                      colorText:  Colors.pinkAccent ,
                      isBold: true ,
                      fontSize: 13.sp,
                    )),
                TextComponent(
                    text: "ليس لديك حساب بعد؟",
                    fontSize: 15.0.sp,
                    colorText: Colors.black87),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
