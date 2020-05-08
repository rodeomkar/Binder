import 'package:flutter/material.dart';
import 'package:tmapp/productionsupervisor/first.dart';
import 'package:tmapp/productionsupervisor/solvecomplaint.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: First(),
    );
  }
}

