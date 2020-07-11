import 'package:flutter/material.dart';
import 'package:project_ta_ke_7/ui/constant/constant.dart';

// ignore: must_be_immutable
class NoData extends StatefulWidget {

  String text;
  NoData({@required this.text});

  @override
  _NoDataState createState() => _NoDataState();
}

class _NoDataState extends State<NoData> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: deviceHeight(context),
      child: Center(
        child: Text(
          widget.text,
          style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w700, fontSize: 20)
        ),
      ),
    );
  }
}