import 'package:bank_app/peresntation/components/home_screen_component/exchange_rate_component.dart';
import 'package:bank_app/peresntation/screens/account_screen.dart';
import 'package:bank_app/peresntation/screens/add_new_data/add_new_cilent.dart';
import 'package:bank_app/peresntation/screens/add_new_data/add_new_data.dart';
import 'package:bank_app/peresntation/screens/data_confirmation_screens/data_confirmation_screen.dart';
import 'package:bank_app/peresntation/components/home_screen_component/custom_widget.dart';
import 'package:bank_app/peresntation/screens/exchange_rate_screen/exchange_rate.dart';
import 'package:bank_app/peresntation/screens/home_screen/home_screen.dart';
import 'package:bank_app/peresntation/screens/last_data_screen.dart';
import 'package:bank_app/peresntation/screens/login&register_screens/login_screen.dart';
import 'package:bank_app/peresntation/screens/login&register_screens/register_screen.dart';
import 'package:bank_app/peresntation/screens/my_card_screen/my_card_screen.dart';
import 'package:bank_app/peresntation/screens/transactions_screens/current_transactions.dart';
import 'package:bank_app/peresntation/screens/transactions_screens/last_transactions.dart';
import 'package:bank_app/peresntation/screens/transfer_screens/add_new_transfar.dart';
import 'package:bank_app/peresntation/screens/transfer_screens/details_transfer.dart';
import 'package:bank_app/peresntation/screens/transfer_screens/tranfer_screen.dart';
import 'package:bank_app/peresntation/screens/transfer_screens/transfer_data_confirmation.dart';
import 'package:bank_app/peresntation/screens/transfer_screens/transfer_way_screen.dart';
import 'package:bank_app/peresntation/screens/wallet/add_balance_screen.dart';
import 'package:bank_app/peresntation/screens/wallet/wallet_details.dart';
import 'package:bank_app/peresntation/test.dart';
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
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: HomeScreen(),
          ) ;
        });
  }
}
