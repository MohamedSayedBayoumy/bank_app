// ignore_for_file: must_be_immutable

import 'package:bank_app/peresntation/components/Directionality_component.dart';
import 'package:bank_app/peresntation/components/app_bar/custom_app_bar.dart';
import 'package:bank_app/peresntation/components/genral_padding.dart';
import 'package:bank_app/peresntation/components/space_component.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../components/app_bar/appbar_component.dart';
import '../../components/app_bar/drawer_component.dart';
import '../../components/general_button_component.dart';
import '../../../model.dart';
import '../../components/text_component.dart';

class ConfirmationTransferDataScreen extends StatelessWidget {
  ConfirmationTransferDataScreen({Key? key}) : super(key: key);

  List data = [
    DetailsDataModel(address: "الوقت و التاريخ", data: "15/3/2023"),
    DetailsDataModel(address: "الدولة", data: "السعودية"),
    DetailsDataModel(address: "المدينه", data: "الرياض"),
    DetailsDataModel(address: "من البطاقة", data: "5555 9999 5555 9999"),
    DetailsDataModel(address: "المستفيد", data: "محمد عبدالله احمد"),
    DetailsDataModel(address: "العملة", data: "ريال سعودي"),
    DetailsDataModel(address: "المبلغ المحول", data: "1.123"),
    DetailsDataModel(address: "الغرض من التحويل", data: "مصاريف"),
  ];

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return Scaffold(
        appBar: CustomAppBar(
            needIconBell: true,
            customSize: media.height*.12,
            onPressedButtonMenu: (){
              /// TODO :
            },
            onPressedButtonBack:  (){
              /// TODO :
            } ,

            title: "تأكيد بيانات التحويل"),
        drawerDragStartBehavior: DragStartBehavior.down,
        endDrawer:    DrawerComponent(),
        body: DirectionalityComponent(
            child: GeneralPadding(
          child: ListView(shrinkWrap: true, children: [
            Column(
              children: [
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    return Container(
                      width: media.width,
                      height: media.height * .05,
                      margin: EdgeInsets.only(bottom: media.height * .02),
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
                              colorText: Colors.black54,
                              fontSize: 17.0.sp,
                            ),
                          ),
                          SpaceComponent(
                            width: media.width * .09,
                          ),
                          Container(
                            width: media.width * .39,
                            height: media.height * .03,
                            alignment: Alignment.centerRight,
                            child: TextComponent(
                              text: data[index].data,
                              colorText: Colors.black87,
                              fontSize: 17.0.sp,
                              isBold: true,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
                Row(
                  children: [
                    TextComponent(
                      text: "الملاحظات",
                      colorText: Colors.black54,
                      fontSize: 17.0.sp,
                    ),
                    SpaceComponent(
                      width: media.width * .03,
                    ),
                    TextComponent(
                      text: "",
                      colorText: Colors.black87,
                      fontSize: 17.0.sp,
                      isBold: true,
                    ),
                  ],
                ),

                SpaceComponent(
                  height: media.height * .1,
                ),
                // const Divider(),
                // ListView.builder(
                //   shrinkWrap: true,
                //   itemCount: data1.length,
                //   itemBuilder: (context, index) {
                //     return Column(
                //       children: [
                //         Row(
                //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //           children: [
                //             Text(
                //               data1[index].data,
                //               style: const TextStyle(
                //                   fontWeight: FontWeight.bold,
                //                   fontSize: 20,
                //                   color: Colors.indigo),
                //             ),
                //             SpaceComponent(),
                //             Text(
                //               data1[index].address,
                //               style: const TextStyle(
                //                   fontWeight: FontWeight.bold,
                //                   fontSize: 20,
                //                   color: Colors.indigo),
                //             ),
                //           ],
                //         ),
                //         SpaceComponent(),
                //       ],
                //     );
                //   },
                // ),
                // const Divider(),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: const [                      /// Clear const
                //     Text(
                //       "6.065",
                //       style: TextStyle(
                //           fontWeight: FontWeight.bold,
                //           fontSize: 20,
                //           color: Colors.indigo)),
                //     Text(
                //       "المجموع",
                //       style: TextStyle(
                //           fontWeight: FontWeight.bold,
                //           fontSize: 20,
                //           color: Colors.indigo)),
                //
                //   ],
                // )  ,
                // SpaceComponent(),
                GeneralButton(
                  width: media.width * 2,
                  onPressed: () {},
                  color: Colors.indigo,
                  height: media.height * .05,
                  child:  TextComponent(
                    text : "تأكيد" ,
                     colorText: Colors.white,
                    fontSize: 18.0.sp,
                    isBold: true ,
                  ),
                ),
              ],
            ),
          ]),
        )));
  }
}
