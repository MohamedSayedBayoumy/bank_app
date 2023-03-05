// import 'dart:ui';
//
// import 'package:bank_app/peresntation/components/space_component.dart';
// import 'package:bank_app/peresntation/components/text_component.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//
// class DrawerComponent extends StatelessWidget {
//   const DrawerComponent({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     final media = MediaQuery.of(context).size;
//     return Container(
//         width: media.width * .7,
//         height: media.height * 2,
//         color: Colors.indigo.shade400.withOpacity(.5),
//         margin: EdgeInsets.only(top: media.height * .156),
//         child: DrawerHeader(
//           curve: Curves.bounceInOut,
//           padding:EdgeInsets.zero,
//           margin: EdgeInsets.zero,
//           child: Stack(
//             children: [
//               Positioned.fill(
//                   child: BackdropFilter(
//                 filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
//                 child: const SizedBox(),
//               )),
//               Positioned(
//                 right: 0,
//                 child: SizedBox(
//                   height: media.height,
//                   child: Column(
//                     children: [
//                       GestureDetector(
//                         onTap: () {
//                           /// TODO : -----------------
//                         },
//                         child: Container(
//                           width: media.width,
//                           height: media.height * .05,
//                           margin: EdgeInsets.only(
//                               left: media.width * 1,
//                               bottom: media.height * .03),
//                           decoration: const BoxDecoration(
//                               border: Border(
//                                   bottom: BorderSide(color: Colors.white))),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.end,
//                             children: [
//                               TextComponent(
//                                   text: "حوالة واردة",
//                                   fontSize: 18.0,
//                                   colorText: Colors.white,
//                                   isBold: true),
//                               Image.asset(
//                                 "assets/black-circle.png",
//                                 width: media.width * .2,
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                       GestureDetector(
//                         onTap: () {
//                           /// TODO : -----------------
//                         },
//                         child: Container(
//                           width: media.width,
//                           height: media.height * .05,
//                           margin: EdgeInsets.only(
//                               left: media.width * 1,
//                               bottom: media.height * .03),
//                           decoration: const BoxDecoration(
//                               border: Border(
//                                   bottom: BorderSide(color: Colors.white))),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.end,
//                             children: [
//                               TextComponent(
//                                 isBold: true,
//                                 text: "تأكيد البريد الالكتروني",
//                                 fontSize: 18.0,
//                                 colorText: Colors.white,
//                               ),
//                               Image.asset(
//                                 "assets/black-circle.png",
//                                 width: media.width * .2,
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                       GestureDetector(
//                         onTap: () {
//                           /// TODO : -----------------
//                         },
//                         child: Container(
//                           width: media.width,
//                           height: media.height * .05,
//                           margin: EdgeInsets.only(
//                               left: media.width * 1,
//                               bottom: media.height * .03),
//                           decoration: const BoxDecoration(
//                               border: Border(
//                                   bottom: BorderSide(color: Colors.white))),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.end,
//                             children: [
//                               TextComponent(
//                                 isBold: true,
//                                 text: "تم اضافة عملة الجنيه المصري",
//                                 fontSize: 18.0,
//                                 colorText: Colors.white,
//                               ),
//                               Image.asset(
//                                 "assets/black-circle.png",
//                                 width: media.width * .2,
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ));
//   }
// }
import 'dart:ui';

import 'package:bank_app/peresntation/components/space_component.dart';
import 'package:bank_app/peresntation/components/text_component.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DrawerComponent extends StatelessWidget {
  dynamic sizeSpace ;
    DrawerComponent({this.sizeSpace ,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return Container(
      width: media.width * .8,
      height: media.height,
      margin: EdgeInsets.only(top: sizeSpace ?? media.height * .155),
              color: Colors.indigo.shade300.withOpacity(.4),
      // padding: EdgeInsets.only(top: media.height*.) ,
      child: Stack(
        children: [
          Positioned.fill(
              child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
            child: const SizedBox(),
          )),
          Positioned(
            top: media.height*.07,
            right: 0,
            child: SizedBox(
              height: media.height,
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      /// TODO : -----------------
                    },
                    child: Container(
                      width: media.width,
                      height: media.height * .05,
                      margin: EdgeInsets.only(
                          left: media.width * 1, bottom: media.height * .03),
                      decoration: const BoxDecoration(
                          border:
                              Border(bottom: BorderSide(color: Colors.white))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextComponent(
                              text: "حوالة واردة",
                              fontSize: 18.0,
                              colorText: Colors.white,
                              isBold: true),
                          Image.asset(
                            "assets/black-circle.png",
                            width: media.width * .2,
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      /// TODO : -----------------
                    },
                    child: Container(
                      width: media.width,
                      height: media.height * .05,
                      margin: EdgeInsets.only(
                          left: media.width * 1, bottom: media.height * .03),
                      decoration: const BoxDecoration(
                          border:
                              Border(bottom: BorderSide(color: Colors.white))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextComponent(
                            isBold: true,
                            text: "تأكيد البريد الالكتروني",
                            fontSize: 18.0,
                            colorText: Colors.white,
                          ),
                          Image.asset(
                            "assets/black-circle.png",
                            width: media.width * .2,
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      /// TODO : -----------------
                    },
                    child: Container(
                      width: media.width,
                      height: media.height * .05,
                      margin: EdgeInsets.only(
                          left: media.width * 1, bottom: media.height * .03),
                      decoration: const BoxDecoration(
                          border:
                              Border(bottom: BorderSide(color: Colors.white))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextComponent(
                            isBold: true,
                            text: "تم اضافة عملة الجنيه المصري",
                            fontSize: 18.0,
                            colorText: Colors.white,
                          ),
                          Image.asset(
                            "assets/black-circle.png",
                            width: media.width * .2,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}