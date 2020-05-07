import 'package:flutter/material.dart';
import 'package:tmapp/first.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  Future<bool> _onBackPressed(){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => First()),
    );
  }
  @override
  Widget build(BuildContext context){
    return WillPopScope(
      onWillPop: _onBackPressed,
      child: Scaffold(
        //backgroundColor: Color(0xFFE5E5E5),
        appBar: AppBar(
          automaticallyImplyLeading: false, // hides leading widget
          title: Text("Logo",style: TextStyle(fontFamily: 'Roboto', color: Colors.white, fontSize: 30)),
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
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Raise Complaint',
                        style: TextStyle(color: Color(0xFF1467B3), fontSize: 18, fontWeight: FontWeight.w500,fontFamily: "Roboto"),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Line",
                        hintStyle: TextStyle(color: Color(0xFF1467B3)),
                        filled: true,
                        fillColor: Color.fromRGBO(20, 103, 179, 0.05),
                        contentPadding:
                        const EdgeInsets.only(left: 14.0, bottom: 15.0, top: 15.0),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color.fromRGBO(93, 153, 252,100)),
                        ),
                        enabledBorder:OutlineInputBorder(
                            borderSide: BorderSide(color: Color.fromRGBO(223, 232, 247,100))    //dfe8f7
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Machine No.",
                        hintStyle: TextStyle(color: Color(0xFF1467B3)),
                        filled: true,
                        fillColor: Color.fromRGBO(20, 103, 179, 0.05),
                        contentPadding:
                        const EdgeInsets.only(left: 14.0, bottom: 15.0, top: 15.0),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color.fromRGBO(93, 153, 252,100)),
                        ),
                        enabledBorder:OutlineInputBorder(
                            borderSide: BorderSide(color: Color.fromRGBO(223, 232, 247,100))    //dfe8f7
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Issue",
                        hintStyle: TextStyle(color: Color(0xFF1467B3)),
                        filled: true,
                        fillColor: Color.fromRGBO(20, 103, 179, 0.05),
                        contentPadding:
                        const EdgeInsets.only(left: 14.0, bottom: 15.0, top: 15.0),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color.fromRGBO(93, 153, 252,100)),
                        ),
                        enabledBorder:OutlineInputBorder(
                            borderSide: BorderSide(color: Color.fromRGBO(223, 232, 247,100))    //dfe8f7
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      maxLines: 5,
                      decoration: InputDecoration(
                        hintText: "Description",
                        hintStyle: TextStyle(color: Color(0xFF1467B3)),
                        filled: true,
                        fillColor: Color.fromRGBO(20, 103, 179, 0.05),
                        contentPadding:
                        const EdgeInsets.only(left: 14.0, bottom: 15.0, top: 15.0),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color.fromRGBO(93, 153, 252,100)),
                        ),
                        enabledBorder:OutlineInputBorder(
                            borderSide: BorderSide(color: Color.fromRGBO(223, 232, 247,100))    //dfe8f7
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
                          "Submit",
                          style: TextStyle(fontSize: 15.0),
                        ),
                      ),
                    ),
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
                            MaterialPageRoute(builder: (context) => First()),
                          );
                        },
                        child: Text(
                          "Cancel",
                          style: TextStyle(fontSize: 15.0, color: Color(0xFF1467B3)),
                        ),
                        borderSide: BorderSide(color: Color(0xFF1467B3)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),


        /*body: Container(
          alignment: Alignment.center,
          child: Stack(
              alignment: Alignment.topCenter,
              children: <Widget>[
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.all(20.0),
                  child: Text("Raise a Complaint",style: TextStyle(fontFamily: 'Roboto', color: Color(0xFF1467B3), fontSize: 18,fontWeight: FontWeight.w500)),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 80),
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(left: 20,right: 20),
                        height: 40,
                        child:TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            filled: true,
                            fillColor:Color(0x0D1467b3),
                            labelText: "Line",
                            labelStyle: TextStyle(
                                color: Color(0xFF1467B3),
                                fontFamily: 'Roboto',
                                fontSize: 14
                            ),

                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10,left: 20,right: 20),
                        height: 40,
                        child:TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            filled: true,
                            fillColor:Color(0x0D1467b3),
                            labelText: "Machine No.",
                            labelStyle: TextStyle(
                                color: Color(0xFF1467B3),
                                fontFamily: 'Roboto',
                                fontSize: 14
                            ),

                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10,left: 20,right: 20),
                        height: 40,
                        child:TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            filled: true,
                            fillColor:Color(0x0D1467b3),
                            labelText: "Issue",
                            labelStyle: TextStyle(
                                color: Color(0xFF1467B3),
                                fontFamily: 'Roboto',
                                fontSize: 14
                            ),

                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10,left: 20,right: 20),
                        height: 300,
                        child:TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            filled: true,
                            fillColor:Color(0x0D1467b3),
                            labelText: "Description",

                            labelStyle: TextStyle(

                                color: Color(0xFF1467B3),
                                fontFamily: 'Roboto',
                                fontSize: 14
                            ),

                          ),
                        ),
                      ),

                    ],
                  ),
                ),
                Container(

                  padding:EdgeInsets.only(top: 400,left:20,right: 20) ,
                  child:new SizedBox(
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
                        "Save Changes",
                        style: TextStyle(fontSize: 15.0),
                      ),
                    ),
                  ),

                ),
                Container(
                  padding:EdgeInsets.only(top: 450,left:20,right: 20) ,
                  child:new SizedBox(
                    width: 400,
                    height: 45,
                    child: OutlineButton(
                      textColor: Color(0xFF1666f0),
                      disabledTextColor: Colors.black,
                      padding: EdgeInsets.all(8.0),
                      splashColor: Colors.blueAccent,
                      onPressed: () {
                        /*...*/
                      },
                      borderSide: BorderSide(color: Color(0xFF1467B3)),
                      child: Text(
                        "Log Out",
                        style: TextStyle(fontSize: 15.0,color: Color(0xFF1467B3)),
                      ),
                    ),
                  ),

                )


              ]
          ),

        ),*/

      ),
    );
  }
}


