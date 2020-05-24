import 'package:flutter/material.dart';
import 'package:tmapp/MainFiles/departmentComplaints/deptComplaintsMain.dart';
import 'package:tmapp/MainFiles/myComplaints/myComplaintMain.dart';
import 'package:tmapp/MainFiles/myProfile/profileMain.dart';
import 'package:tmapp/MainFiles/statistics/statisticsMain.dart';
import 'package:tmapp/ReusableWidgets/CustomBottomNavigationBar.dart';
import 'package:tmapp/ReusableWidgets/themes.dart';

class Homepage extends StatefulWidget {

  final int authLevel;

  const Homepage({
    Key key,
    @ required this.authLevel,
  }) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  // authLevel = 0 <=> Maintenance operator irrespective of department
  final List _maintenanceOperatorScreenList = [
    myComplaintsMaintenance(),
    profile(),
  ];

  // authLevel = 1 <=> Any operator irrespective of department
  final List _productionOperatorScreenList = [
    myComplaintsProduction(),
    profile(),
  ];

  //authLevel = 2 <=> Maintenance Supervisor
  final List _maintenanceSupervisorList = [
    maintenanceDeptComplaints(),
    statistics(),
    profile(),
  ];

  //authLevel = 3 <=> Production Supervisor
  final List _productionSupervisorList = [
    myComplaintsProduction(),
    productionDeptComplaints(),
    statistics(),
    profile(),
  ];

  //authLevel = 4 <=> System Admin
  final List _systemAdmin = [];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.authLevel == 0 ? _maintenanceOperatorScreenList[currentIndex] :
      widget.authLevel == 1 ? _productionOperatorScreenList[currentIndex] :
      widget.authLevel == 2 ? _maintenanceSupervisorList[currentIndex] :
      widget.authLevel == 3 ? _productionSupervisorList[currentIndex] :
      widget.authLevel == 4 ?_systemAdmin[currentIndex] : null,
      bottomNavigationBar: widget.authLevel == 1 ? BottomNavyBar(
        selectedIndex: currentIndex,
        showElevation: true,
        itemCornerRadius: 10,
        curve: Curves.easeInBack,
        onItemSelected: (index) => setState(() {
          currentIndex = index;
        }),
        items: [
          BottomNavyBarItem(
            icon: Icon(Icons.message),
            title: Text('Complaints'),
            activeColor: Colors.white,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.account_circle),
            title: Text('Profile'),
            activeColor: Colors.white,
            textAlign: TextAlign.center,
          ),
        ],
      ) :
      widget.authLevel == 2 ? BottomNavyBar(
        selectedIndex: currentIndex,
        showElevation: true,
        itemCornerRadius: 10,
        curve: Curves.easeInBack,
        onItemSelected: (index) =>
            setState(() {
              currentIndex = index;
            }),
        items: [
          BottomNavyBarItem(
            icon: Icon(Icons.account_balance),
            title: Text('Department'),
            activeColor: Colors.white,
            inactiveColor: primaryblue,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.assessment),
            title: Text('Statistics'),
            activeColor: Colors.white,
            inactiveColor: primaryblue,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.account_circle),
            title: Text('Profile'),
            activeColor: Colors.white,
            inactiveColor: primaryblue,
            textAlign: TextAlign.center,
          ),
        ],
      ) :
      widget.authLevel == 3 ? BottomNavyBar(
        selectedIndex: currentIndex,
        showElevation: true,
        itemCornerRadius: 10,
        curve: Curves.easeInBack,
        onItemSelected: (index) => setState(() {
          currentIndex = index;
        }),
        items: [
          BottomNavyBarItem(
            icon: Icon(Icons.message),
            title: Text('Complaints'),
            activeColor: Colors.white,
            inactiveColor: primaryblue,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.account_balance),
            title: Text('Department'),
            activeColor: Colors.white,
            inactiveColor: primaryblue,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.assessment),
            title: Text('Statistics'),
            activeColor: Colors.white,
            inactiveColor: primaryblue,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.account_circle),
            title: Text('Profile'),
            activeColor: Colors.white,
            inactiveColor: primaryblue,
            textAlign: TextAlign.center,
          ),
        ],
      ) :
      widget.authLevel == 4 ? BottomNavyBar(
        selectedIndex: currentIndex,
        showElevation: true,
        itemCornerRadius: 10,
        curve: Curves.easeInBack,
        onItemSelected: (index) =>
            setState(() {
              currentIndex = index;
            }),
        items: [
          BottomNavyBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
            activeColor: Colors.white,
            inactiveColor: primaryblue,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.account_circle),
            title: Text('Profile'),
            activeColor: Colors.white,
            inactiveColor: primaryblue,
            textAlign: TextAlign.center,
          ),
        ],
      ) : null,
    );
  }
}
