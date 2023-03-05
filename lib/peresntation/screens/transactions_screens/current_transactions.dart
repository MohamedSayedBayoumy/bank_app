import 'package:bank_app/peresntation/components/Directionality_component.dart';
import 'package:bank_app/peresntation/components/app_bar/custom_app_bar.dart';
import 'package:bank_app/peresntation/components/genral_padding.dart';
import 'package:bank_app/peresntation/components/text_component.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../model.dart';
import '../../components/app_bar/drawer_component.dart';
import '../../components/general_button_component.dart';
import '../../components/space_component.dart';

class CurrentTransactionsScreen extends StatelessWidget {
  CurrentTransactionsScreen({Key? key}) : super(key: key);

  List data = [
    DetailsDataModel(address: "المستفيد", data: "محمد عبدالله"),
    DetailsDataModel(address: "الوقت و التاريخ", data: "15/3/2023"),
    DetailsDataModel(address: "الرقم المرجعي", data: "5555 9999 5559 #"),
    DetailsDataModel(address: "حالة العمليه", data: "تم التسليم"),
  ];

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: CustomAppBar(
          needIconBell: true,
          customSize: media.height * .12,
          onPressedButtonMenu: () {
            /// TODO  :
          },
          onPressedButtonBack: () {
            /// TODO  :
          },
          title: "المعاملات السابقة"),
      drawerDragStartBehavior: DragStartBehavior.down,
      endDrawer:    DrawerComponent(),

      body:   Stack(
          children: [
            GeneralPadding(
              child: Positioned(
                child: Container(
                  width: media.width,
                  height: media.height * .7,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadiusDirectional.circular(25)),
                  child: Column(
                    children: [
                      Container(
                        width: media.width,
                        height: media.height * .16,
                        padding: EdgeInsets.symmetric(horizontal: media.width * .02),
                        color: Colors.white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            TextComponent(
                              text: "أمن .. بسيط .. سريع",
                              isBold: true,
                            ),
                            Image.asset("assets/logo2.jpg", width: media.width * .2)
                          ],
                        ),
                      ),
                      SpaceComponent(
                        height: media.height * .07,
                      ),
                      ListView.builder(
                        shrinkWrap: true,
                        itemCount: data.length,
                        itemBuilder: (context, index) {
                          return DirectionalityComponent(
                            child: Container(
                              width: media.width,
                              height: media.height * .05,
                              padding:
                              EdgeInsets.symmetric(horizontal: media.width * .02),
                              margin: EdgeInsets.symmetric(
                                  horizontal: media.width * .03,
                                  vertical: media.height * .02),
                              decoration: const BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(color: Colors.black87))),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    width: media.width * .30,
                                    height: media.height * .03,
                                    alignment: Alignment.centerRight,
                                    child: TextComponent(
                                      text: data[index].address,
                                      colorText: Colors.black,
                                      fontSize: 20.0,
                                    ),
                                  ),
                                  SpaceComponent(
                                    width: media.width * .07,
                                  ),
                                  Container(
                                    width: media.width * .317,
                                    height: media.height * .03,
                                    alignment: Alignment.centerRight,
                                    child: TextComponent(
                                      text: data[index].data,
                                      colorText: Colors.black87,
                                      fontSize: 20.0,
                                      isBold: true,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),

                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: media.height*.7 ,
              // left: media.width*.01 ,
              child:  Container(
                width: media.width,
                padding: EdgeInsets.symmetric(horizontal: media.width*.03),
                // color: Colors.red,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GeneralButton(
                      onPressed: () {},
                      color: Colors.indigo,
                      height: media.height * .05,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:   [
                          const  Text(
                            "استفسار",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                          ),
                          SpaceComponent(),
                          const Icon(Icons.error_outline) ,

                        ],
                      ) ,
                    ),
                    GeneralButton(
                      onPressed: () {},
                      color: Colors.indigo,
                      height: media.height * .05,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:   [
                          const  Text(
                            "التفاصيل",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                          ),
                          SpaceComponent(),
                          const Icon(Icons.wysiwyg_rounded) ,

                        ],
                      ) ,
                    ),
                    GeneralButton(
                      onPressed: () {},
                      color: Colors.indigo,
                      height: media.height * .05,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:   [
                          const  Text(
                            "مشاركة",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold),
                          ),

                          SpaceComponent(),
                          const Icon(Icons.ios_share) ,
                        ],
                      ) ,
                    ),
                  ],
                ),
              ),),
          ],

        ),

    );
  }
}
