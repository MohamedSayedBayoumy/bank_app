import 'package:bank_app/peresntation/components/genral_padding.dart';
import 'package:bank_app/peresntation/components/space_component.dart';
import 'package:flutter/material.dart';
import '../../components/app_bar/appbar_component.dart';
import '../../components/general_button_component.dart';
import '../../../model.dart';

class ConfirmationTransferDataScreen extends StatelessWidget {
  ConfirmationTransferDataScreen({Key? key}) : super(key: key);

  List data = [
    DetailsDataModel(address: "اسم المستلم", data: "XXXXXXXXXX"),
    DetailsDataModel(address: "البلد", data: "السودان"),
    DetailsDataModel(address: "المدينه", data: "الخرطوم"),
    DetailsDataModel(address: "العملة", data: "ريال سعودي"),
  ];
  List data1 = [
    DetailsDataModel(address: "المبلغ المرسل", data: "6000"),
    DetailsDataModel(address: "المبلغ المستلم", data: "120000000"),
    DetailsDataModel(address: "رسوم الايداع البنكي", data: "50"),
    DetailsDataModel(address: "رسوم الخدمة", data: "5"),
    DetailsDataModel(address: "رسوم بطاقة الائتمان", data: "10"),
    DetailsDataModel(address: "سعر الصرف", data: "121.1"),
  ];

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size ;
    return Scaffold(
      appBar: NaturalAppBar(title: "تأكيد بيانات التحويل"),
      body: GeneralPadding(
          child: ListView(
        shrinkWrap: true,
        children: [
          ListView.builder(
            shrinkWrap: true,
            itemCount: data.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        data[index].data,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.indigo),
                      ),
                      Text(
                        data[index].address,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.indigo),
                      ),
                    ],
                  ),
                  SpaceComponent(),
                ],
              );
            },
          ),
          const Divider(),
          ListView.builder(
            shrinkWrap: true,
            itemCount: data1.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        data1[index].data,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.indigo),
                      ),
                      SpaceComponent(),
                      Text(
                        data1[index].address,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.indigo),
                      ),
                    ],
                  ),
                  SpaceComponent(),
                ],
              );
            },
          ),
          const Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [                      /// Clear const
              Text(
                "6.065",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.indigo)),
              Text(
                "المجموع",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.indigo)),

            ],
          )  ,
          SpaceComponent(),

             GeneralButton(
                width: media.width * 2,
                onPressed: () {},
                color: Colors.indigo,
                child:  const Text("التالي"),
              ) ,
        ],
      )),
    );
  }
}
