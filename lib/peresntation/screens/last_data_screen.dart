import 'dart:ui';
import 'package:bank_app/peresntation/components/genral_padding.dart';
import 'package:flutter/material.dart';

import '../../model.dart';
import '../components/app_bar/appbar_component.dart';
import '../components/share_data_component.dart';
import '../components/text_component.dart';

class LastDataScreen extends StatelessWidget {
  const LastDataScreen({Key? key}) : super(key: key);

  static List<DemoDataModel> demoDataList = [
    // ignore: prefer_const_constructors
    DemoDataModel(
        color: Colors.green,
        name: "محمد سيد",
        status: "نجاح",
        amount: "20000 ج س ",
        number: "الرقم 123456 ",
        date: "1-1-2023 / 12:30",
        pdf: "pdf",
        details: "التفاصيل",
        share: "مشاركة"),
    DemoDataModel(
        color: Colors.red.shade900,
        name: "محمد احمد علي",
        status: "فشل",
        amount: "20000 ج س",
        number: "الرقم 123456",
        date: "1-1-2023 / 12:30",
        pdf: "PDF",
        details: "التفاصيل",
        share: "مشاركة"),
    const DemoDataModel(
        color: Colors.yellow,
        name: "محمد احمد علي",
        status: "قيد التنفيذ",
        amount: "20000 ج س",
        number: "الرقم 123456",
        date: "1-1-2023 / 12:30",
        pdf: "PDF",
        details: "التفاصيل",
        share: "مشاركة"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //       appBar: NaturalAppBar(title: "التحويلات السابقة"),
        body: SafeArea(
      child: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.symmetric(vertical: 10.0),
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Container(
                width: MediaQuery.of(context).size.width -
                    MediaQuery.of(context).size.width / 5,
                padding:
                    const EdgeInsets.symmetric(horizontal: 5, vertical: 30),
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(.3),
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(width: 2, color: Color(0xFF))),
                child: Column(
                  children: [
                    Row(
                      children: [
                        TextComponent(
                          text: demoDataList[index].status,
                        ),
                        Container(
                          height: 10,
                          width: 10,
                          decoration: const BoxDecoration(

                              /// TODO : ColorStatus = > Color
                              shape: BoxShape.circle),
                        ),
                        const Spacer(),
                        TextComponent(text: demoDataList[index].name),
                      ],
                    ),
                    TextComponent(text: demoDataList[index].amount),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextComponent(text: demoDataList[index].date),
                        TextComponent(text: demoDataList[index].number),
                      ],
                    ),
                    ShareDataComponent(
                        share1: demoDataList[index].pdf,
                        share2: demoDataList[index].details,
                        share3: demoDataList[index].share),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    ));
  }
}
