import 'package:flutter/material.dart';
class Stat extends StatefulWidget {
  @override
  _StatState createState() => _StatState();
}

class _StatState extends State<Stat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: Color(0xFF1467B3),
        title: Image.asset('Logo/LogoWhite/logoFullWhite.png', fit: BoxFit.cover,height: 28),
      ),

    );
  }
}

