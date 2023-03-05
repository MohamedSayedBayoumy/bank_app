import 'dart:ui';

import 'package:bank_app/peresntation/components/space_component.dart';
import 'package:bank_app/peresntation/components/text_component.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DrawerComponent extends StatelessWidget {
  dynamic sizeSpace;

  DrawerComponent({this.sizeSpace, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return ListView(
      children: [
        SpaceComponent(height: sizeSpace ?? 0 ) ,
        Stack(
          children: [
            Positioned(
              child: Container(
                width: media.width * .3,
                height: media.height,
              ),
            ),
            Positioned(
                top: media.height * .067,
                right: 0,
                child: Image.asset(
                  "assets/triangular-arrow.png",
                  color: Colors.indigoAccent.withOpacity(.3),
                  width: media.width * .15,
                )),
            Positioned(
              top: media.height * .120,
              right: 0,
              child: Container(
                width: media.width*.7,
                height: media.height,
                color: Colors.indigo.shade900.withOpacity(.2),
              ),
            ),
            Positioned(
              top: media.height * .152,
              right: 0,
              child: Column(
                children: [
                  SpaceComponent(
                    height: media.height * .05,
                  ),

                  GestureDetector(
                    onTap: () {
                      /// TODO : -----------------
                    },
                    child: Container(
                      width: media.width*.7,
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
                      width: media.width*.7,
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
                      width: media.width*.7,
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
          ],
        ),
      ],
    );
  }
}
//
// Stack(
// children: [
// Positioned.fill(
// child: BackdropFilter(
// filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
// child: const SizedBox(),
// )),
// Positioned(
// top: media.height * .06,
// right: 0,
// child: Column(
// children: [
// GestureDetector(
// onTap: () {
// /// TODO : -----------------
// },
// child: Container(
// width: media.width,
// height: media.height * .05,
// margin: EdgeInsets.only(
// left: media.width * 1,
// bottom: media.height * .03),
// decoration: const BoxDecoration(
// border: Border(
// bottom: BorderSide(color: Colors.white))),
// child: Row(
// mainAxisAlignment: MainAxisAlignment.end,
// children: [
// TextComponent(
// text: "حوالة واردة",
// fontSize: 18.0,
// colorText: Colors.white,
// isBold: true),
// Image.asset(
// "assets/black-circle.png",
// width: media.width * .2,
// ),
// ],
// ),
// ),
// ),
// GestureDetector(
// onTap: () {
// /// TODO : -----------------
// },
// child: Container(
// width: media.width,
// height: media.height * .05,
// margin: EdgeInsets.only(
// left: media.width * 1,
// bottom: media.height * .03),
// decoration: const BoxDecoration(
// border: Border(
// bottom: BorderSide(color: Colors.white))),
// child: Row(
// mainAxisAlignment: MainAxisAlignment.end,
// children: [
// TextComponent(
// isBold: true,
// text: "تأكيد البريد الالكتروني",
// fontSize: 18.0,
// colorText: Colors.white,
// ),
// Image.asset(
// "assets/black-circle.png",
// width: media.width * .2,
// ),
// ],
// ),
// ),
// ),
// GestureDetector(
// onTap: () {
// /// TODO : -----------------
// },
// child: Container(
// width: media.width,
// height: media.height * .05,
// margin: EdgeInsets.only(
// left: media.width * 1,
// bottom: media.height * .03),
// decoration: const BoxDecoration(
// border: Border(
// bottom: BorderSide(color: Colors.white))),
// child: Row(
// mainAxisAlignment: MainAxisAlignment.end,
// children: [
// TextComponent(
// isBold: true,
// text: "تم اضافة عملة الجنيه المصري",
// fontSize: 18.0,
// colorText: Colors.white,
// ),
// Image.asset(
// "assets/black-circle.png",
// width: media.width * .2,
// ),
// ],
// ),
// ),
// ),
// ],
// ),
//
// ),
// ],
// ),
