import 'package:bank_app/model.dart';
import 'package:bank_app/peresntation/components/Directionality_component.dart';
import 'package:bank_app/peresntation/components/app_bar/appbar_component.dart';
import 'package:bank_app/peresntation/components/general_button_component.dart';
import 'package:bank_app/peresntation/components/genral_padding.dart';
import 'package:bank_app/peresntation/components/space_component.dart';
import 'package:bank_app/peresntation/components/text_component.dart';
import 'package:bank_app/peresntation/screens/last_data_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../components/app_bar/custom_app_bar.dart';

class MyWallet extends StatelessWidget {
  MyWallet({Key? key}) : super(key: key);

  List<dynamic> icons = [
    Image.asset("assets/outgoing-call.png"),
    Image.asset("assets/incoming-call.png"),
    Image.asset("assets/outgoing-call.png"),
    Image.asset("assets/outgoing-call.png"),
    Image.asset("assets/incoming-call.png"),
    Image.asset("assets/incoming-call.png"),
    Image.asset("assets/incoming-call.png"),
    Image.asset("assets/incoming-call.png"),
  ];

  static List<AccountData> data = [
    AccountData(
        nameAr: "محمد سيد بيومي", date: "22/02/2023", count: "2.340 جنية "),
    AccountData(
        nameAr: "احمد حسين دفع الله", date: "22/02/2023", count: "2.340 جنية "),
    AccountData(
        nameAr: "محمد عبدالله احمد", date: "22/02/2023", count: "2.340 جنية "),
    AccountData(
        nameAr: "احمد حسين دفع الله", date: "22/02/2023", count: "2.340 جنية "),
    AccountData(
        nameAr: "احمد حسين دفع الله", date: "22/02/2023", count: "2.340 جنية "),
    AccountData(
        nameAr: "احمد حسين دفع الله", date: "22/02/2023", count: "2.340 جنية "),
    AccountData(
        nameAr: "احمد حسين دفع الله", date: "22/02/2023", count: "2.340 جنية "),
    AccountData(
        nameAr: "احمد حسين دفع الله", date: "22/02/2023", count: "2.340 جنية "),
  ];

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return Scaffold(
      appBar: CustomAppBar(
          needIconBell: true,

          customSize: media.height * .12,
          title: 'محفظتي',
          onPressedButtonBack: () {
            /// TODO : SOME THING
          },
          onPressedButtonMenu: () {
            /// TODO : SOME THING
          }),
      body: GeneralPadding(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                TextComponent(
                  text: "210.540",
                  isBold: true,
                  colorText: Colors.green,
                  fontSize: 50.0.sp,
                  fontFamily: "Anton",
                ),
                SpaceComponent(
                  width: media.width * .02,
                ),
                TextComponent(
                  text: "SDG",
                  colorText: Colors.black,
                  fontSize: 18.0.sp,
                ),
              ],
            ),
            SpaceComponent(height: media.height * .04),
            DirectionalityComponent(
              child: GeneralButton(
                  height: media.height * .06,
                  color: Colors.green,
                  elevation: 12.0,
                  onPressed: () {},
                  child: Row(
                    children: [
                      SpaceComponent(width: media.width * .05),
                      const Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                      SpaceComponent(width: media.width * .09),
                      TextComponent(
                        text: "تغذية المحفظة",
                        colorText: Colors.white,
                      ),
                    ],
                  )),
            ),
            SpaceComponent(height: media.height * .05),
            Container(
              width: media.width,
              height: media.height*.5,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: data.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return DirectionalityComponent(
                    child: Padding(
                      padding: EdgeInsets.only(bottom: media.height * .02),
                      child: Container(
                        width: media.width * .03,
                        height: media.height * .09,
                        decoration: BoxDecoration(
                            border: Border(
                                bottom:
                                    BorderSide(color: Colors.black87, width: 1.sp))),
                        child: Column( children: [
                          Row(
                            children: [
                              IconButton(onPressed: () {}, icon: icons[index]),
                              TextComponent(text: data[index].nameAr , fontSize: 18.sp,),
                              const Spacer(),
                              TextComponent(text: data[index].count,fontSize: 18.sp,),
                              // IconButton(onPressed: (){}, icon:icons[index] )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [TextComponent(text: data[index].date,fontSize: 18.sp,)],
                          ),
                        ]),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
