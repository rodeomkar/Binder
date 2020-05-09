import 'package:flutter/material.dart';
import 'package:tmapp/productionoperator/firstop.dart';
import 'package:tmapp/productionsupervisor/first.dart';
class Who extends StatefulWidget {
  @override
  _WhoState createState() => _WhoState();
}

class _WhoState extends State<Who> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Card(
            child: Row(
              children: <Widget>[
                FlatButton(
                  child: Text("Prod Operator"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Firstop()),
                    );
                  },
                ),
                FlatButton(
                  child: Text("Prod Supervisor"),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => First()),
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
