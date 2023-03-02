import 'package:bank_app/peresntation/screens/LoginScreen_screen.dart';
import 'package:bank_app/peresntation/screens/account_screen.dart';
import 'package:bank_app/peresntation/screens/login&register_screens/login_screen.dart';
import 'package:bank_app/peresntation/screens/transactions_screens/current_transactions.dart';
import 'package:bank_app/peresntation/screens/transactions_screens/last_transactions.dart';
import 'package:bank_app/peresntation/screens/transfer_screens/add_new_transfar.dart';
import 'package:bank_app/peresntation/screens/details_data.dart';
import 'package:bank_app/peresntation/screens/last_data_screen.dart';
import 'package:bank_app/peresntation/screens/transfer_screens/details_transfer.dart';
import 'package:bank_app/peresntation/screens/transfer_screens/tranfer_screen.dart';
import 'package:bank_app/peresntation/screens/transfer_screens/transfer_data_confirmation.dart';
import 'package:bank_app/peresntation/screens/transfer_screens/transfer_way_screen.dart';
import 'package:bank_app/peresntation/screens/wallet/add_balance_screen.dart';
import 'package:flutter/material.dart';

import 'peresntation/screens/wallet/wallet_details.dart';


void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  LastTransaction(),
    );
  }
}
