import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextfield extends StatefulWidget {
  TextInputAction action;
  TextInputType type;
  TextEditingController controller;
  String hintText;

  CustomTextfield({this.action, this.type, this.controller, this.hintText});

  @override
  _CustomTextfieldState createState() => _CustomTextfieldState();
}

class _CustomTextfieldState extends State<CustomTextfield> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        textInputAction: widget.action,
        keyboardType: widget.type,
        controller: widget.controller,
        decoration: InputDecoration(hintText: widget.hintText),
      ),
    );
  }
}
