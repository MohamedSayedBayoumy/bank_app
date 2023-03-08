// ignore_for_file: must_be_immutable, unnecessary_type_check

import 'package:bank_app/peresntation/components/drop_list_component.dart';
import 'package:bank_app/peresntation/components/genral_padding.dart';
import 'package:bank_app/peresntation/components/space_component.dart';
import 'package:bank_app/peresntation/components/text_component.dart';
import 'package:bank_app/peresntation/components/textfiled_component.dart';
import 'package:bank_app/peresntation/screens/transfer_screens/transfer_data_confirmation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'components/app_bar/custom_app_bar.dart';
import 'components/app_bar/drawer_component.dart';
import 'components/general_button_component.dart';

class TransferScreens extends StatefulWidget {
  TransferScreens({Key? key}) : super(key: key);

  static List<String> data = [
    "العملة",
    "جنية",
    "جنية استريلني",
    "دولار",
    "يورو",
  ];
  static List<String> data1 = [
    "طريقة الدفع",
    "بطاقة ائتمان",
    "بطاقة الخصم",
  ];

  @override
  State<TransferScreens> createState() => _TransferScreensState();
}

class _TransferScreensState extends State<TransferScreens> {
  dynamic dataController = TransferScreens.data[0];

  dynamic data1Controller = TransferScreens.data1[0];

  bool switchController = true;

  TextEditingController fromController  = TextEditingController();
  TextEditingController fromControllerTwo  = TextEditingController();


  TextEditingController toController  = TextEditingController();


  void sum() {
    if (fromController .text.isEmpty) {
      setState(() {
        toController .text = '';
      });
    } else {
      var myInt = int.parse(fromController .text);
      assert(myInt is int);
      var sum = myInt * 2;
      setState(() {
        toController .text = sum.toString();
        print("to : ${toController .text}");
      });
    }
  }


  // void sum2() {
  //   if (fromControllerTwo.text.isEmpty) {
  //
  //   } else {
  //     var myInt = int.parse(fromControllerTwo.text);
  //     assert(myInt is int);
  //     var sum = myInt / 2;
  //     setState(() {
  //       toController .text = sum.toString();
  //       print("from : ${toController .text}");
  //     });
  //   }
  // }

  @override
  void initState() {
    fromController .addListener(() {
      sum();
    });
    // fromControllerTwo .addListener(() {
    //   sum();
    // });


    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    fromControllerTwo = TextEditingController();
    return Scaffold(
      appBar: CustomAppBar(
          needIconBell: true,
          customSize: media.height * .12,
          title: 'التحويل',
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
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          children: [
            DropList(list: TransferScreens.data, value: dataController),
            SizedBox(
              height: media.height*.09,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: CustomTextField(
                  onTap: () {
                    setState(() {
                      if(switchController == false){
                        print("hi1") ;
                        switchController = !switchController ;
                        print(switchController) ;
                      }
                    });
                  },
                  textInputType: TextInputType.number,
                  controller: switchController == true ? fromController  : toController  ,
                  labelText: "المبلغ المراد تحويله",
                ),
              ),
            ),

            SpaceComponent(
              height: media.height * .03,
            ),
            CustomTextField(
              onTap: () {
                setState(() {
                    print("hi2") ;
                    switchController = !switchController ;
                    print(switchController) ;
                });
              },
              textInputType: TextInputType.number,
              controller: switchController == true ? toController : fromController  ,
              labelText: "المبلغ المراد استلامه",
              fill: false,
            ),
            SpaceComponent(
              height: media.height * .03,
            ),
            DropList(list: TransferScreens.data1, value: data1Controller),
            SpaceComponent(
              height: media.height * .03,
            ),
            GeneralButton(
              width: media.width * 2,
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ConfirmationTransferDataScreen(),
                    ));
              },
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
