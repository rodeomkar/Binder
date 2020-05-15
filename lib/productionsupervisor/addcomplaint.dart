import 'package:flutter/material.dart';
import 'package:tmapp/productionsupervisor/first.dart';
import 'package:autocomplete_textfield/autocomplete_textfield.dart';


class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  GlobalKey<AutoCompleteTextFieldState<String>> key = new GlobalKey();
  List<String> suggestions = [
    "Up/Down movement not working",
    "hoist movement jam",
    "Hook/ Latch problem",
    "Cable broken/short circuit",
    "pendant broken",
    "Fan not working",
    "Rotation not working",
    "Jali/ Guard/ Blade broken",
    "Heavy Noise",
    "Smoke from Motor",
    "Temperature low",
    "Auto cycle not working",
    "Oil skimmer not working",
    "filter paper end",
    "Chip conveyor not working",
    "job cleaning not proper",
    "Heavy air leakge",
    "Heavy coolant leakage",
    "NG Burners/ heaters not working",
    "Hose pipe burst",
    "Loader/ unloader Not working",
    "sensor/Limit switch problem",
    "Rotary cage not working",
    "Job fall down or stucked in machine",
    "Gripper problem",
    "Teaching required",
    "Dashed on fixture ot machine",
    "Collision error",
    "Sensor not working",
    "Lubriation oil level low",
    "Entry conveyor / tiler problem",
    "Unloading conveyor/ tilter  problem",
    "Robot in fault",
  "Pr. Switch issue",
  "Cosmo Not working",
  "proxy/limit switch problem",
  "Hydr. Block cylinder leakage",
  "Hydraulic oil low",
  "Lub oil level low",
  "Pneumatic cylinder leakge",
  "Fixture / entry/ Exit conveyor not working",
  "Reading of test too high",
  "ATC not working",
  "APC not working",
  "Probe battery low",
  "Communication error",
  "Coolant leakage",
  "Oil Leakage",
  "BTS problem",
  "Tool Change not working",
  "filter paper end",
  "Hydraulic oil low",
  "Oilmatic unit temp.high",
  "Grease cartridge over",
  "Air leakakge",
  "Radiator cooling fan alarm",
  "Socket fallen",
  "Spindle alignment not proper",
  "Pusher/ Clamping problem",
  "Conveyor rotation/ up/down not working",
  "ASL up/ down not working",
  "Fault on controller",
  "Marking shift problem",
  "Marking not visible",
  "Conveyor not working",
  "Machine lamp not working",
  "GAP or pressing issue",
  "Conveyor not working",
  "Pusher and clamping issue",
  "Servo position for presssing not ok",
  "Hydraulic oil low",
  "Temp low/ high - heating problem",
  "IR tubes broken",
  "Reed switch/sensor/ limit switch issue",
  "heating chamber fans not working",
  "Conveyor not working",
  "Machine not working",
  "Hoist not working",
  "Electric short circuit",
  "overload trip",
  "Movement jam",
  "Conveyor not working",
  "Oil Leakage"
  "Coolant leakage",
  "Job fallen"

  ];
  AutoCompleteTextField searchTextField;
  bool loading = true;

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
          title: Image.asset('Logo/LogoWhite/logoFullWhite.png', fit: BoxFit.cover,height: 28),
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
                    Container(
                      height: 50,
                      child: AutoCompleteTextField<String>(
                        key: key,
                        clearOnSubmit: false,
                        suggestions: suggestions,
                        //style: TextStyle(color: Colors.blue,fontSize: 14),
                        decoration: InputDecoration(
                          hintText: "Issue",
                          hintStyle: TextStyle(color: Color(0xFF1467B3), fontSize: 16),
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
                        itemFilter: (item,query){
                          return item.toLowerCase().startsWith(query.toLowerCase());
                        },
                        itemSorter: (a,b){
                          return a.compareTo(b);
                        },
                        itemSubmitted: (item){
                          setState(() {
                            searchTextField.textField.controller.text = item;
                          });

                        },
                        itemBuilder: (context,item){
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                item,style: TextStyle(fontSize: 18,color: Colors.black),
                              ),
                            ],
                          );

                        },
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


