import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:io';
import 'package:tmapp/systemadmin/addemployee.dart';
import 'package:tmapp/systemadmin/deleteemployee.dart';

class HomePageAdmin extends StatefulWidget {
  @override
  _HomePageAdminState createState() => _HomePageAdminState();
}

class _HomePageAdminState extends State<HomePageAdmin> {
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
        appBar: AppBar(
          automaticallyImplyLeading: false, // hides leading widget
          title: Image.asset('Logo/LogoWhite/logoFullWhite.png',
              fit: BoxFit.cover, height: 28),
          centerTitle: true,
          backgroundColor: Color(0xFF1467B3),
        ),
        body: Container(
          alignment: Alignment.topCenter,
          child: Stack(
            children: <Widget>[
              Hero(
                tag: "1",
                child: Container(
                  margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                  child: Card(
                    elevation:5,
                    child: InkWell(
                      splashColor: Colors.blue.withAlpha(30),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AddEmployee()),
                        );
                        print('Card tapped.');
                      },
                      child: Container(
                        height: 100,
                        margin: EdgeInsets.only(top: 10, left: 10, right: 10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Row(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(
                                  top: 15, bottom: 15, left: 50),
                              child: Image.asset('assests/images/AddEmpIcon.png',
                                  fit: BoxFit.cover, height: 25),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  top: 15, bottom: 15, left: 15),
                              child: Text("Add an Employee",
                                  style: TextStyle(
                                      fontFamily: 'Roboto',
                                      color: Color(0xb31467b3),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 180, left: 20, right: 20),
                child: Card(
                  elevation:5,
                  child: InkWell(
                    splashColor: Colors.blue.withAlpha(30),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DeleteEmployee()),
                      );
                      print('Card tapped.');
                    },
                    child: Container(
                      height: 100,
                      margin: EdgeInsets.only(top: 10, left: 10, right: 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Row(
                        children: <Widget>[
                          Container(
                            margin:
                                EdgeInsets.only(top: 15, bottom: 15, left: 50),
                            child: Image.asset(
                                'assests/images/DeleteEmpIcon.png',
                                fit: BoxFit.cover,
                                height: 30),
                          ),
                          Container(
                            margin:
                                EdgeInsets.only(top: 15, bottom: 15, left: 15),
                            child: Text("Delete an Employee",
                                style: TextStyle(
                                    fontFamily: 'Roboto',
                                    color: Color(0xb31467b3),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
