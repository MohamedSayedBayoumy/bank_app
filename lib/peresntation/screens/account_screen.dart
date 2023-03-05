// import 'package:bank_app/peresntation/components/genral_padding.dart';
// import 'package:bank_app/peresntation/controller/controllers.dart';
// import 'package:flutter/material.dart';
// import '../components/appbar_component.dart';
// import '../components/container_image_component.dart';
// import '../components/general_button_component.dart';
// import '../components/get_image.dart';
// import '../components/space_component.dart';
// import '../components/textfiled_component.dart';
//
// class AccountScreen extends StatefulWidget {
//   AccountScreen({Key? key}) : super(key: key);
//
//   @override
//   State<AccountScreen> createState() => _AccountScreenState();
// }
//
// class _AccountScreenState extends State<AccountScreen> {
//   @override
//   Widget build(BuildContext context) {
//     final media = MediaQuery.of(context).size;
//     Controller.convert();
//     return Scaffold(
//       appBar: NaturalAppBar(
//           title: "أدارة الحساب",
//           toolbarHeight: media.height*.13,
//           customSize: media.height*.15,
//           elevation: 0.0,
//           needActionIconMenu: true,
//           leading: IconButton(
//               onPressed: () {
//                       /// TODO : Some thing
//               },
//               icon: Image.asset(
//                 "assets/icons/bell.png",
//                 width: 25,
//               ))),
//       body:  ListView(
//           // physics: const BouncingScrollPhysics(),
//           shrinkWrap: true,
//           children: [
//             const BackGroundImageAccount(),
//             // SpaceComponent(),
//             CustomTextField(
//                 styleBorder: const OutlineInputBorder(),
//                 labelText: "الاسم باللغة الانجليزيه",
//                 controller: Controller.nameEn),
//             SpaceComponent(),
//             CustomTextField(
//                 styleBorder: const OutlineInputBorder(),
//                 labelText: "الاسم باللغة العربيه",
//                 controller: Controller.nameAr),
//             SpaceComponent(),
//             CustomTextField(
//                 styleBorder: const OutlineInputBorder(),
//                 labelText: "رقم الهاتف",
//                 controller: Controller.number),
//             SpaceComponent(),
//             CustomTextField(
//                 styleBorder: const OutlineInputBorder(),
//                 labelText: "البريد الالكتروني",
//                 controller: Controller.email),
//             SpaceComponent(),
//             CustomTextField(
//                 styleBorder: const OutlineInputBorder(),
//                 labelText: "كلمة المرور",
//                 controller: Controller.passWord),
//             SpaceComponent(),
//             CustomTextField(
//                 styleBorder: const OutlineInputBorder(),
//                 labelText: "تأكيد كلمة المرور",
//                 controller: Controller.confirmPassword),
//             SpaceComponent(),
//             CustomTextField(
//                 styleBorder: const OutlineInputBorder(),
//                 labelText: "العنوان",
//                 controller: Controller.address),
//             SpaceComponent(),
//             CustomTextField(
//                 styleBorder: const OutlineInputBorder(),
//                 labelText: "تاريخ الميلاد",
//                 controller: Controller.date),
//             GetImageComponent(text: "اثبات الهوية"),
//             GeneralButton(
//                 onPressed: () {},
//                 color: Colors.indigo,
//                 child: const Text(
//                   "تسجيل",
//                   style: TextStyle(fontWeight: FontWeight.bold),
//                 )),
//           ],
//         ),
//
//     );
//   }
// }

import 'package:bank_app/peresntation/components/app_bar/appbar_component.dart';
import 'package:bank_app/peresntation/components/general_button_component.dart';
import 'package:bank_app/peresntation/components/genral_padding.dart';
import 'package:bank_app/peresntation/components/get_image.dart';
import 'package:bank_app/peresntation/components/space_component.dart';
import 'package:bank_app/peresntation/components/text_component.dart';
import 'package:bank_app/peresntation/components/textfiled_component.dart';
import 'package:bank_app/peresntation/controller/controllers.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../model.dart';
import '../components/app_bar/custom_app_bar.dart';
import '../components/app_bar/drawer_component.dart';
import 'last_data_screen.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  static List<DetailsData> demoDetailsData = [
    DetailsData(address: "رقم الهوية", data: "2525215618"),
    DetailsData(address: "تاريخ الميلاد", data: "11-11-2023"),
    DetailsData(address: "الدولة", data: "السعودية"),
    DetailsData(address: "العنوان", data: "الرياض , لبن , شارع الدارة"),
    DetailsData(address: "البريد الالكتروني", data: "example@gmail.com"),
    DetailsData(address: "رقم الجوال ", data: "00966549834725"),
  ];

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    Controller.convert();
    return Scaffold(
        drawerDragStartBehavior: DragStartBehavior.down,
        endDrawer: DrawerComponent(sizeSpace: media.height * .060),
        body: ListView(
          shrinkWrap: true,
          children: [
            Stack(
              children: [
                Container(
                  width: media.width,
                  height: media.height * 1,
                  color: Colors.white,
                ),
                NaturalAppBar(
                    title: "أدارة الحساب",
                    toolbarHeight: media.height * .13,
                    heightFlexibleSpace: media.height * .19,
                    elevation: 0.0,
                    centerTitle: false,
                    widgets: [
                      IconButton(
                          onPressed: () {},
                          icon: Image.asset(
                            "assets/icons/menu.png",
                            width: media.width * .06,
                          )),
                    ],
                    leading: IconButton(
                        onPressed: () {
                          /// TODO : Some thing
                        },
                        icon: Image.asset(
                          "assets/icons/bell.png",
                          width: media.height * .03,
                        ))),
                Positioned(
                  top: media.height * .18,
                  left: 0,
                  child: Container(
                    width: media.width,
                    height: media.height * .2,
                    padding: EdgeInsets.only(
                        right: media.width * .08,
                        left: media.width * .08,
                        top: media.height * .05),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              TextComponent(
                                  text: "Moafaq Ali Khalaf",
                                  fontSize: 18.sp,
                                  colorText: Colors.black87),
                              SpaceComponent(
                                height: media.height * .002,
                              ),
                              TextComponent(
                                text: "#235641545545",
                                fontSize: 18.sp,
                                colorText: Colors.black87,
                              )
                            ],
                          ),
                          const Spacer(),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("assets/icons/verification_Icon.png",
                                  width: media.width * .06),
                              SpaceComponent(
                                height: media.height * .002,
                              ),
                              TextComponent(
                                text: 'موفق علي خاف الله',
                                fontSize: 20.sp,
                                isBold: true,
                              ),
                            ],
                          ),
                        ]),
                  ),
                ),
                Positioned(
                  top: media.height * .1,
                  left: 0,
                  child: Container(
                    width: media.width,
                    height: media.height * .16,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black87,
                      image: DecorationImage(
                          image: AssetImage("assets/image_profile.jpg")),
                    ),
                  ),
                ),
                Positioned(
                    top: media.height * .33,
                    left: media.width * .39,
                    child: Image.asset(
                      "assets/triangular-arrow.png",
                      width: media.width * .2,
                    )),
                Positioned(
                    top: media.height * .2,
                    left: media.width * .30,
                    child: Container(
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Colors.indigo),
                        child: IconButton(
                          onPressed: () {
                            /// TODO : Change Image
                          },
                          icon: Image.asset("assets/icons/add.png"),
                          color: Colors.white,
                          iconSize: media.height * .002,
                        ))),
                Positioned(
                  top: media.height * .38,
                  child: Container(
                      width: media.width,
                      height: media.height,
                      padding: EdgeInsets.symmetric(
                          horizontal: media.width * .02,
                          vertical: media.height * .02),
                      child: Column(
                        children: [
                          ListView.builder(
                            physics: const BouncingScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: demoDetailsData.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: media.height * .001),
                                child: Container(
                                  height: media.height * .06,
                                  margin: EdgeInsets.symmetric(
                                      vertical: media.height * .009),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: media.width * .05),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      border:
                                          Border.all(color: Colors.black87)),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SpaceComponent(
                                        width: media.width * .001,
                                      ),
                                      Container(
                                        alignment: Alignment.centerRight,
                                        width: media.width * .5,
                                        // color: Colors.red,
                                        child: TextComponent(
                                          text: demoDetailsData[index].data,
                                          colorText: Colors.black87,
                                          isBold: true,
                                          fontSize: 18.sp,
                                        ),
                                      ),
                                      const Spacer(),
                                      Container(
                                        alignment: Alignment.centerRight,
                                        child: TextComponent(
                                          text: demoDetailsData[index].address,
                                          colorText: Colors.black54,
                                          isBold: false,
                                          fontSize: 15.sp,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          )
                          // CustomTextField(
                          //     styleBorder: const OutlineInputBorder(),
                          //     labelText: "الاسم باللغة الانجليزيه",
                          //     controller: Controller.nameEn),
                          // SpaceComponent(),
                          // CustomTextField(
                          //     styleBorder: const OutlineInputBorder(),
                          //     labelText: "الاسم باللغة العربيه",
                          //     controller: Controller.nameAr),
                          // SpaceComponent(),
                          // CustomTextField(
                          //     styleBorder: const OutlineInputBorder(),
                          //     labelText: "رقم الهاتف",
                          //     controller: Controller.number),
                          // SpaceComponent(),
                          // CustomTextField(
                          //     styleBorder: const OutlineInputBorder(),
                          //     labelText: "البريد الالكتروني",
                          //     controller: Controller.email),
                          // SpaceComponent(),
                          // CustomTextField(
                          //     styleBorder: const OutlineInputBorder(),
                          //     labelText: "كلمة المرور",
                          //     controller: Controller.passWord),
                          // SpaceComponent(),
                          // CustomTextField(
                          //     styleBorder: const OutlineInputBorder(),
                          //     labelText: "تأكيد كلمة المرور",
                          //     controller: Controller.confirmPassword),
                          // SpaceComponent(),
                          // CustomTextField(
                          //     styleBorder: const OutlineInputBorder(),
                          //     labelText: "العنوان",
                          //     controller: Controller.address),
                          // SpaceComponent(),
                          // CustomTextField(
                          //     styleBorder: const OutlineInputBorder(),
                          //     labelText: "تاريخ الميلاد",
                          //     controller: Controller.date),
                          // GetImageComponent(text: "اثبات الهوية"),
                          // GeneralButton(
                          //     onPressed: () {},
                          //     color: Colors.indigo,
                          //     child: const Text(
                          //       "تسجيل",
                          //       style: TextStyle(fontWeight: FontWeight.bold),
                          //     )),
                        ],
                      )),
                ),
              ],
            ),
          ],
        ));
  }
}
