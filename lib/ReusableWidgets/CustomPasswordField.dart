import 'package:flutter/material.dart';

import '../themes.dart';

class CustomInputField extends StatefulWidget {

  final String hintText;
  final bool passField;
  final Icon prefixIconVal;

  const CustomInputField({
    Key key,
    @required this.hintText,
    @required this.passField,
    this.prefixIconVal,
  }) : super(key: key);

  @override
  _CustomInputFieldState createState() => _CustomInputFieldState();
}

class _CustomInputFieldState extends State<CustomInputField> {
  bool _showPassword = false;
  String _password = "";

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.grey[100],
            prefixIcon: widget.prefixIconVal,
            border: InputBorder.none,
            suffixIcon: widget.passField == true ? GestureDetector(
              onTap: (){
                setState(() {
                  _showPassword = !_showPassword;
                });
              },
              child: Icon(
                _showPassword ? Icons.visibility : Icons.visibility_off,
              ),
            ) : null,
            hintText: widget.hintText,
            hintStyle: TextStyle(
                color: Colors.grey)
        ),
        onSubmitted: (val) => _password = val,
        obscureText: widget.passField == true ? !_showPassword : false,
      ),
    );
  }
}
