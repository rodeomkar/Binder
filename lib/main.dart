import 'package:flutter/material.dart';
import 'package:tmapp/LoginFiles/LoginMain.dart';
import 'package:tmapp/MainFiles/HomePage.dart';
import 'package:tmapp/maintainenceoperator/updatestatus.dart';
import 'package:tmapp/productionoperator/firstop.dart';

import 'LoginFiles/LoginMain.dart';
import 'maintainenceoperator/Firstmo.dart';
import 'maintainenceoperator/listmo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(authLevel: 1,userDepartment: "production",),
    );
  }
}

