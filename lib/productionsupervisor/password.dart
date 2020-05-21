import 'package:flutter/material.dart';

class PasswordField extends StatefulWidget {
  final Key fieldKey;
  final String hintText;
  final String labelText;
  final String helperText;
  final FormFieldSetter<String> onSaved;
  final FormFieldValidator<String> validator;
  final ValueChanged<String> onFieldSubmitted;
  final bool obscureTextIcon;
  final bool obscureText;

  PasswordField({
    this.fieldKey,
    @required this.hintText,
    this.labelText,
    this.helperText,
    this.onSaved,
    this.validator,
    this.onFieldSubmitted,
    this.obscureText,
    this.obscureTextIcon,
  });

  @override
  _PasswordFieldState createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enableInteractiveSelection: false,
      key: widget.fieldKey,
      obscureText: widget.obscureText,
      onSaved: widget.onSaved,
      validator: widget.validator,
      onFieldSubmitted: widget.onFieldSubmitted,
      decoration: new InputDecoration(
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
        hintText: widget.hintText,
        helperText: widget.helperText,
        suffixIcon: widget.obscureTextIcon == true ? GestureDetector(
          onTap: () {
            setState(() {
              widget.obscureText != widget.obscureText;
            });
          },
          child:
          new Icon(widget.obscureText ? Icons.visibility : Icons.visibility_off),
        ) : null,
      ),
    );
  }
}
