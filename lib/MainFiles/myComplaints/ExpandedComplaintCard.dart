import 'package:flutter/material.dart';
import 'package:tmapp/ReusableWidgets/CustomAppBar.dart';
import 'package:tmapp/ReusableWidgets/themes.dart';

enum ComplaintVerificationStatus { solved, unsolved }

class ExpandedComplaintCard extends StatefulWidget {
  final int complaintNo;

  const ExpandedComplaintCard({Key key, @required this.complaintNo})
      : super(key: key);

  @override
  _ExpandedComplaintCardState createState() => _ExpandedComplaintCardState();
}

class _ExpandedComplaintCardState extends State<ExpandedComplaintCard> {
  ComplaintVerificationStatus _status = ComplaintVerificationStatus.unsolved;
  TextStyle detailsTextStyle =
      TextStyle(fontFamily: 'Roboto', color: Colors.black, fontSize: 14);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryblue,
      appBar: CustomAppBar(
        child: Text(
          'Complaint No - ' + widget.complaintNo.toString(),
          style: titleText,
        ),
        backIcon: true,
        elevation: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Hero(
                  tag: 'Complaint-' + widget.complaintNo.toString(),
                  child: Container(
                    height: 365,
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0.0, 2.0),
                          )
                        ]),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Title of complaint ",
                                    style: TextStyle(
                                      fontFamily: 'Roboto',
                                      color: primaryblue,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Text("Machine No. ",
                                        style: TextStyle(
                                            fontFamily: 'Roboto',
                                            color: primaryblue,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500)),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Container(
                                  margin: EdgeInsets.only(top: 5, right: 5),
                                  child: Icon(
                                    Icons.brightness_1,
                                    color: Color(0xFFFF5656),
                                  )),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(height: 8),
                              Text(
                                "Personal No. :",
                                style: detailsTextStyle,
                              ),
                              SizedBox(height: 8),
                              Text("Line No. :", style: detailsTextStyle),
                              SizedBox(height: 8),
                              Text("Machine No. :", style: detailsTextStyle),
                              SizedBox(height: 8),
                              Text("Issue :", style: detailsTextStyle),
                              SizedBox(height: 8),
                              Text("Status:", style: detailsTextStyle),
                              SizedBox(height: 8),
                              Text("Raised by :", style: detailsTextStyle),
                              SizedBox(height: 8),
                              Text("Time :", style: detailsTextStyle),
                              SizedBox(height: 8),
                              Text("Assigned to :", style: detailsTextStyle),
                              SizedBox(height: 8),
                              Text("Assigned by :", style: detailsTextStyle),
                              SizedBox(height: 8),
                              Text("Description :", style: detailsTextStyle),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: <Widget>[
                              Container(
                                child: Text("Date ",
                                    style: TextStyle(
                                        fontFamily: 'Roboto',
                                        color: primaryblue,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500)),
                              ),
                              Spacer(),
                              Container(
                                child: Text("Department",
                                    style: TextStyle(
                                        fontFamily: 'Roboto',
                                        color: primaryblue,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500)),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  padding: EdgeInsets.only(top: 20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8.0),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0.0, 2.0),
                        )
                      ]),
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(left: 15),
                        alignment: Alignment.topLeft,
                        child: Text("Verify",
                            style: TextStyle(
                                fontFamily: 'Roboto',
                                color: Color(0xFF1467B3),
                                fontSize: 18,
                                fontWeight: FontWeight.w500)),
                      ),
                      Row(
                        children: <Widget>[
                          new Radio(
                            value: ComplaintVerificationStatus.solved,
                            groupValue: _status,
                            //onChanged: _handleRadioValueChange1,
                          ),
                          new Text(
                            'Solved',
                            style: new TextStyle(
                                fontFamily: 'Roboto', fontSize: 16.0),
                          ),
                          new Radio(
                            value: ComplaintVerificationStatus.unsolved,
                            groupValue: _status,
                            onChanged: (ComplaintVerificationStatus value){
                              setState(() {
                                _status = value;
                              });
                            },
                          ),
                          new Text(
                            'Not Solved',
                            style: new TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 16.0,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        alignment: Alignment.center,
                        //padding:EdgeInsets.only(top: 400,left:20,right: 20) ,
                        child: new SizedBox(
                          //width: double.infinity,
                          child: new RaisedButton(
                            child: new Text(
                              "Verify",
                              style: TextStyle(
                                  fontFamily: 'Roboto',
                                  color: Colors.white,
                                  fontSize: 16),
                              textAlign: TextAlign.center,
                            ),
                            color: Color(0xFF1467B3),
                            onPressed: () {print('');},
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}