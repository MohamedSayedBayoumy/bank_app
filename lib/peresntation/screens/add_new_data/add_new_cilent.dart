import 'package:bank_app/peresntation/components/app_bar/appbar_component.dart';
import 'package:bank_app/peresntation/components/drop_list_component.dart';
import 'package:bank_app/peresntation/components/genral_padding.dart';
import 'package:bank_app/peresntation/components/space_component.dart';
import 'package:bank_app/peresntation/components/textfiled_component.dart';
import 'package:flutter/material.dart';

import 'add_new_data.dart';

class AddNewClient extends StatelessWidget {
  AddNewClient({Key? key}) : super(key: key);



  static List<String> receiveCountries = [
    "مصر",
    "السعوديه",
    "الامارات",
    "تركيا",
    "امريكا",
    "لبنان",
  ];

  static  List<String> receiveCountries2 = [
    "مصر",
    "السعوديه",
    "الامارات",
    "تركيا",
    "امريكا",
    "لبنان",
  ];
  static  List<String> receiveCountries3 = [
    "جواز سفر",
    "بطاقة",
    "رخصة قيادة",
  ];

  static  List<String> relationship = [
    "جار",
    "صديق",
    "بن عم",
    "وسيط مني",
    "وسيط من عميل اخر",
  ];

  dynamic receiveCountriesController =receiveCountries[0];

  dynamic receiveCountriesController1 = receiveCountries2[0];


  dynamic receiveCountriesController2 = receiveCountries3[0] ;
  dynamic relationshipController = relationship[0];


  bool needAdd = false ;

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      appBar: NaturalAppBar(title: "اضافة مستفيد جديد"),
      body: GeneralPadding(
        child: ListView(

          children: [
            DropList(list: receiveCountries, value: receiveCountriesController),
            SpaceComponent(),
            DropList(
                list: receiveCountries2, value: receiveCountriesController1),
            SpaceComponent(),
            DropList(
                list: receiveCountries3, value: receiveCountriesController2),
            SpaceComponent( ),
            CustomTextField(controller: TextEditingController(),
              labelText: "اسم المستلم باللغة العريبه",),
            SpaceComponent( ),

            CustomTextField(controller: TextEditingController(),
              labelText: "اسم المستلم باللغة الانجليزية",),
            SpaceComponent( ),

            DropList(list: relationship, value: relationshipController),
            SpaceComponent( ),

            CustomTextField(controller: TextEditingController(),
              labelText: "نص العلاقة مع المستفيد",),
            SpaceComponent( ),

            CustomTextField(controller: TextEditingController(),
              labelText: "رقم الهاتف",),
            ListTile(
              onTap: () {
                /// TODO : Add New client
              },
              trailing: IconButton(
                  onPressed: () {
                    /// TODO : Show Container to Add new data
                  },
                  icon: const Icon(
                    Icons.add,
                    color: Colors.indigo,
                  )),
              title: const Text(
                "أضافة مستفيد جديد",
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: Colors.indigo,
                ),
              ),
            ),
             AddNewData() ,  /// need show this widget when click on " اضافة حساب بنكي"
          ],
        ),
      ),
    );
  }
}
