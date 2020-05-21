import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tmapp/FadeAnimation.dart';
import 'package:tmapp/ReusableWidgets/CustomPasswordField.dart';
import 'package:tmapp/productionsupervisor/password.dart';
import 'package:tmapp/themes.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _showPassword = false;
  String _password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: FadeAnimation(
          delay: 1.0,
          child: Container(
            padding: EdgeInsets.all(20),
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/Loginbackground.png'),
                  fit: BoxFit.fill),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 60,
                    width: 200,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              'assets/Logo/LogoBlue/logoFullBlue.png'),
                          fit: BoxFit.fitWidth),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Welcome\nSign in to continue.',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),SizedBox(
                    height: 30,
                  ),
                  CustomInputField(
                    hintText: 'Personal Id',
                    passField: false,
                    prefixIconVal: Icon(Icons.alternate_email,color: primaryblue,),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CustomInputField(
                    hintText: 'Password',
                    passField: true,
                    prefixIconVal: Icon(Icons.enhanced_encryption,color: primaryblue,),
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
