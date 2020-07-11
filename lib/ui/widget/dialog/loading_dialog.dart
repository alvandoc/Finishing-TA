import 'package:flutter/material.dart';

// ignore: must_be_immutable
class LoadingDialog extends StatefulWidget {
  String text;

  LoadingDialog({
    @required this.text,
  });

  @override
  _LoadingDialogState createState() => _LoadingDialogState();
}

class _LoadingDialogState extends State<LoadingDialog> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10)
      ),
      title: Center(
        child: CircularProgressIndicator(),
      ),
      content: Text(
        widget.text,
        style: TextStyle(
          color: Colors.black87,
          fontSize: 16,
        )
      ),
    );
  }
}