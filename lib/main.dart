import 'package:bank_app/peresntation/screens/add_new_data/add_new_cilent.dart';
import 'package:bank_app/peresntation/screens/add_new_data/add_new_data.dart';
import 'package:bank_app/peresntation/screens/data_confirmation_screens/data_confirmation_screen.dart';
import 'package:bank_app/peresntation/screens/transfer_screens/add_new_transfar.dart';
import 'package:bank_app/peresntation/screens/transfer_screens/details_transfer.dart';
import 'package:bank_app/peresntation/screens/transfer_screens/transfer_data_confirmation.dart';
import 'package:bank_app/peresntation/screens/wallet/add_balance_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: AddNewTransfer(),
          ) ;
        });
  }
}
