import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:tmapp/productionsupervisor/listcomp.dart';
import 'package:tmapp/productionsupervisor/userprofile.dart';
import 'package:tmapp/productionsupervisor/Stats.dart';
import 'package:tmapp/productionsupervisor/department.dart';

class First extends StatefulWidget {
  @override
  _FirstState createState() => _FirstState();
}

class _FirstState extends State<First> {
  int _ci=0;
  final _page=[
    HomePage(),
    Depart(),
    Stat(),
    UserProfile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _page[_ci],
      bottomNavigationBar: FancyBottomNavigation(
        //currentIndex: _ci,
        circleColor: Color(0xFF1465B0),
        inactiveIconColor: Color(0xFF1465B0),
        tabs: [
          TabData(iconData: Icons.insert_comment, title: "Complaints", ),
          TabData(iconData: Icons.account_balance, title: "Departments"),
          TabData(iconData: Icons.timeline, title: "Statistics"),
          TabData(iconData: Icons.person, title: "Profile")
        ],

        onTabChangedListener: (int index){
          setState(() {
            _ci=index;
          });
        },
      ),
    );
  }
}
