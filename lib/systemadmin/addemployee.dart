import 'dart:io';
import 'package:flutter/material.dart';
import 'package:tmapp/systemadmin/homepageadmin.dart';
import 'package:tmapp/systemadmin/firstadmin.dart';

class AddEmployee extends StatefulWidget {
  @override
  _AddEmployeeState createState() => _AddEmployeeState();
}

enum TypeOfEmp { Electrical, Mechanical }

class _AddEmployeeState extends State<AddEmployee> {
  TypeOfEmp emp = TypeOfEmp.Electrical;
  String block = "";
  String dept = "";
  String designation = "";
  @override
  void initState() {
    super.initState();
    block = '';
    dept = '';
    designation = '';
  }

  List<String> blockNo = ["D5"];
  List<String> departments = ["Production", "Maintenance", "AME"];
  List<String> designations = [
    "Section Incharge",
    "Line Manager",
    "Supervisor",
    "Operators",
    "Temporary Operator",
    "AME Supervisor",
    "AME Engineer",
    "AME Operator"
  ];

  Future<bool> _onbackpressed() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Firstadmin()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onbackpressed,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false, // hides leading widget
          title: Image.asset('assests/images/LogoAddEmp.png',
              fit: BoxFit.cover, height: 28),
          centerTitle: true,
          backgroundColor: Color(0xFF1467B3),
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Padding(
              padding: EdgeInsets.all(30.0),
              child: Form(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Name",
                        hintStyle: TextStyle(color: Color(0xFF1467B3)),
                        filled: true,
                        fillColor: Color.fromRGBO(20, 103, 179, 0.05),
                        contentPadding: const EdgeInsets.only(
                            left: 14.0, bottom: 15.0, top: 15.0),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(93, 153, 252, 100)),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color:
                                    Color.fromRGBO(223, 232, 247, 100)) //dfe8f7
                            ),
                      ),
                    ), //Name
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Personal No.",
                        hintStyle: TextStyle(color: Color(0xFF1467B3)),
                        filled: true,
                        fillColor: Color.fromRGBO(20, 103, 179, 0.05),
                        contentPadding: const EdgeInsets.only(
                            left: 14.0, bottom: 15.0, top: 15.0),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(93, 153, 252, 100)),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color:
                                    Color.fromRGBO(223, 232, 247, 100)) //dfe8f7
                            ),
                      ),
                    ), //Personal No.
                    SizedBox(
                      height: 20,
                    ),
                    DropdownButtonFormField(
                     // style: TextStyle(color: Color(0xFF1467B3)),
                      decoration: InputDecoration(
                        hintText: "Block No.",
                        hintStyle: TextStyle(color: Color(0xFF1467B3)),
                        filled: true,
                        fillColor: Color.fromRGBO(20, 103, 179, 0.05),
                        contentPadding: const EdgeInsets.only(
                            left: 14.0, bottom: 4.0, top: 4.0),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(93, 153, 252, 100)),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color:
                                    Color.fromRGBO(223, 232, 247, 100)) //dfe8f7
                            ),
                      ),
                      value: block.isNotEmpty ? block : null,
                      onSaved: (value) {
                        setState(() {
                          block = value;
                        });
                      },
                      onChanged: (value) {
                        setState(() {
                          block = value;
                        });
                      },
                      items: blockNo.map((item) {
                        return DropdownMenuItem<String>(
                            child: new Text(item), value: item);
                      }).toList(),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    DropdownButtonFormField(
                      //style: TextStyle(color: Color(0xFF1467B3)),
                      decoration: InputDecoration(
                        hintText: "Department",
                        hintStyle: TextStyle(color: Color(0xFF1467B3)),
                        filled: true,
                        fillColor: Color.fromRGBO(20, 103, 179, 0.05),
                        contentPadding: const EdgeInsets.only(
                            left: 14.0, bottom: 4.0, top: 4.0),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(93, 153, 252, 100)),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color:
                                    Color.fromRGBO(223, 232, 247, 100)) //dfe8f7
                            ),
                      ),
                      value: dept.isNotEmpty ? dept : null,
                      onSaved: (value) {
                        setState(() {
                          dept = value;
                        });
                      },
                      onChanged: (value) {
                        setState(() {
                          dept = value;
                        });
                      },
                      items: departments.map((item) {
                        return DropdownMenuItem<String>(
                            child: new Text(item), value: item);
                      }).toList(),
                    ), //Department
                    SizedBox(
                      height: 20,
                    ),
                    DropdownButtonFormField(
                      //style: TextStyle(color: Color(0xFF1467B3)),
                      decoration: InputDecoration(
                        hintText: "Designation",
                        hintStyle: TextStyle(color: Color(0xFF1467B3)),
                        filled: true,
                        fillColor: Color.fromRGBO(20, 103, 179, 0.05),
                        contentPadding: const EdgeInsets.only(
                            left: 14.0, bottom: 4.0, top: 4.0),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(93, 153, 252, 100)),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color:
                                    Color.fromRGBO(223, 232, 247, 100)) //dfe8f7
                            ),
                      ),
                      value: designation.isNotEmpty ? designation : null,
                      onSaved: (value) {
                        setState(() {
                          designation = value;
                        });
                      },
                      onChanged: (value) {
                        setState(() {
                          designation = value;
                        });
                      },
                      items: designations.map((item) {
                        return DropdownMenuItem<String>(
                            child: new Text(item), value: item);
                      }).toList(),
                    ), //Designation
                    Container(
                      alignment: Alignment.bottomRight,
                      child: new Row(
                        children: <Widget>[
                          new Text(
                            'Electrical',
                            style: new TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 16.0,
                                color: Color(0xFF1467B3)),
                          ),
                          new Radio(
                            value: TypeOfEmp.Electrical,
                            groupValue: emp,
                            onChanged: (TypeOfEmp value) {
                              setState(() {
                                emp = value;
                              });
                            },
                          ),
                          new Text(
                            'Mechanical',
                            style: new TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 16.0,
                                color: Color(0xFF1467B3)),
                          ),
                          new Radio(
                            value: TypeOfEmp.Mechanical,
                            groupValue: emp,
                            onChanged: (TypeOfEmp value) {
                              setState(() {
                                emp = value;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Phone Number",
                        hintStyle: TextStyle(color: Color(0xFF1467B3)),
                        filled: true,
                        fillColor: Color.fromRGBO(20, 103, 179, 0.05),
                        contentPadding: const EdgeInsets.only(
                            left: 14.0, bottom: 15.0, top: 15.0),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(93, 153, 252, 100)),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color:
                                    Color.fromRGBO(223, 232, 247, 100)) //dfe8f7
                            ),
                      ),
                    ), //Phone No
                    SizedBox(
                      height: 20,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Email",
                        hintStyle: TextStyle(color: Color(0xFF1467B3)),
                        filled: true,
                        fillColor: Color.fromRGBO(20, 103, 179, 0.05),
                        contentPadding: const EdgeInsets.only(
                            left: 14.0, bottom: 15.0, top: 15.0),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromRGBO(93, 153, 252, 100)),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color:
                                    Color.fromRGBO(223, 232, 247, 100)) //dfe8f7
                            ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      width: 400,
                      height: 45,
                      child: FlatButton(
                        color: Color(0xFF1467B3),
                        textColor: Colors.white,
                        disabledColor: Colors.grey,
                        disabledTextColor: Colors.black,
                        padding: EdgeInsets.all(8.0),
                        splashColor: Colors.blueAccent,
                        onPressed: () {
                          /*...*/
                        },
                        child: Text(
                          "Add Employee",
                          style: TextStyle(fontSize: 15.0),
                        ),
                      ),
                    ), //Add Employee
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: 400,
                      height: 45,
                      child: OutlineButton(
                        textColor: Color(0xFF1666f0),
                        disabledTextColor: Colors.black,
                        padding: EdgeInsets.all(8.0),
                        splashColor: Colors.blueAccent,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Firstadmin()),
                          );
                        },
                        child: Text(
                          "Cancel",
                          style: TextStyle(
                              fontSize: 15.0, color: Color(0xFF1467B3)),
                        ),
                        borderSide: BorderSide(color: Color(0xFF1467B3)),
                      ),
                    ), //Cancel Button
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
