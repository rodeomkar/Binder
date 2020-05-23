import 'package:flutter/material.dart';
import 'package:tmapp/LoginFiles/LoginMain.dart';

import 'LoginFiles/LoginMain.dart';
import 'maintainenceoperator/listmo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePagemo(),
    );
  }
}

