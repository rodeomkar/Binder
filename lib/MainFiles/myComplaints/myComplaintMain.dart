import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tmapp/ReusableWidgets/CustomAppBar.dart';
import 'package:tmapp/ReusableWidgets/themes.dart';

import 'CustomComplaintCard.dart';

class myComplaintsProduction extends StatefulWidget {
  @override
  _myComplaintsProductionState createState() => _myComplaintsProductionState();
}

class _myComplaintsProductionState extends State<myComplaintsProduction> {
  final List<int> complaintNo = [1,2,3,4,5,6];

  Future<bool> _onbackpressed() {
    return showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: new Text('Are you sure?'),
              content: new Text('Do you want to exit the App?'),
              actions: <Widget>[
                OutlineButton(
                  child: Text('Yes'),
                  onPressed: () => exit(0),
                ),
                OutlineButton(
                  child: Text('No'),
                  onPressed: () => Navigator.pop(context, false),
                )
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onbackpressed,
      child: Scaffold(
        backgroundColor: Color(0xFFE5E5E5),
        appBar: CustomAppBar(backIcon: false, child: Text('My Complaints',style: titleText,)),
        body: ListView.separated(
          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
          itemCount: complaintNo.length,
          itemBuilder: (BuildContext context, int index) {
            return CustomComplaintCard(complaintNo: complaintNo[index],);
          },
          separatorBuilder: (BuildContext context, int index) => SizedBox(
            height: 20,
          ),
        ),
      ),
    );
  }
}

class myComplaintsMaintenance extends StatefulWidget {
  @override
  _myComplaintsMaintenanceState createState() =>
      _myComplaintsMaintenanceState();
}

class _myComplaintsMaintenanceState extends State<myComplaintsMaintenance> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
