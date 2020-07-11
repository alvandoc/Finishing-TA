import 'package:flutter/material.dart';
import 'package:project_ta_ke_7/ui/constant/constant.dart';

// ignore: must_be_immutable
class InfoDialog extends StatefulWidget {
  String text;
  String clickText;
  IconData icon;
  Function onClickOK;
  Function onClickCancel;

  InfoDialog({
    @required this.text,
    @required this.icon,
    @required this.onClickOK,
    this.onClickCancel, this.clickText = "OK"
  });

  @override
  _InfoDialogState createState() => _InfoDialogState();
}

class _InfoDialogState extends State<InfoDialog> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10)
      ),
      title: Center(
        child: Icon(widget.icon, color: primaryColor, size: 25,),
      ),
      content: Text(
        widget.text,
        style: TextStyle(
          color: Colors.black87,
          fontSize: 16,
        )
      ),
      actions: <Widget>[
        FlatButton(
          onPressed: () => widget.onClickOK(),
          child: Text(
            widget.clickText,
            style: TextStyle(
              color: primaryColor,
              fontWeight: FontWeight.w600
            ),
          ),
        ),
        widget.onClickCancel != null 
          ? FlatButton(
            onPressed: () => widget.onClickCancel(),
            child: Text(
              "Batal",
              style: TextStyle(
                color: primaryColor,
                fontWeight: FontWeight.w600
              ),
            ),
          )
          : SizedBox(),
      ],
    );
  }
}