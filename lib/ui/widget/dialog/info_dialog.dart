import 'package:flutter/material.dart';
import 'package:project_ta_ke_7/ui/constant/constant.dart';

class InfoDialog extends StatelessWidget {
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
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10)
      ),
      title: Center(
        child: Icon(icon, color: primaryColor, size: 25,),
      ),
      content: Text(
        text,
        style: TextStyle(
          color: Colors.black87,
          fontSize: 16,
        )
      ),
      actions: <Widget>[
        FlatButton(
          onPressed: () => onClickOK(),
          child: Text(
            clickText,
            style: TextStyle(
              color: primaryColor,
              fontWeight: FontWeight.w600
            ),
          ),
        ),
        onClickCancel != null 
          ? FlatButton(
            onPressed: () => onClickCancel(),
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